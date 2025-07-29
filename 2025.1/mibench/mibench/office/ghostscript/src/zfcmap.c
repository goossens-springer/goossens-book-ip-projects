/* Copyright (C) 1997 Aladdin Enterprises.  All rights reserved.
  
  This file is part of Aladdin Ghostscript.
  
  Aladdin Ghostscript is distributed with NO WARRANTY OF ANY KIND.  No author
  or distributor accepts any responsibility for the consequences of using it,
  or for whether it serves any particular purpose or works at all, unless he
  or she says so in writing.  Refer to the Aladdin Ghostscript Free Public
  License (the "License") for full details.
  
  Every copy of Aladdin Ghostscript must include a copy of the License,
  normally in a plain ASCII text file named PUBLIC.  The License grants you
  the right to copy, modify and redistribute Aladdin Ghostscript, but only
  under certain conditions described in the License.  Among other things, the
  License requires that the copyright notice and this notice be preserved on
  all copies.
*/

/* zfcmap.c */
/* CMap creation operator */
#include "ghost.h"
#include "errors.h"
#include "oper.h"
#include "gsmatrix.h"		/* for gxfont.h */
#include "gsstruct.h"
#include "gsutil.h"		/* for bytes_compare */
#include "gxfcmap.h"
#include "gxfont.h"
#include "ialloc.h"
#include "idict.h"
#include "idparam.h"
#include "ifont.h"		/* for zfont_mark_glyph_name */
#include "iname.h"
#include "store.h"

/* ---------------- Internal procedures ---------------- */

/* Free a code map tree in case of memory overflow. */
private void
free_code_map(gx_code_map *pcmap, gs_memory_t *mem)
{	if ( pcmap->type == cmap_subtree )
	  { int i;
	    for ( i = pcmap->byte_data.count1; i >= 0; --i )
	      free_code_map(&pcmap->data.subtree[i], mem);
	    gs_free_object(mem, pcmap->data.subtree, "free_code_map");
	  }
}

/* Convert a single code map to internal form. */
/* This needs to be completely rewritten for space efficiency! */
private int
acquire_code_map(gx_code_map *pcmap, const ref *pref, int depth,
  gs_cmap *root, gs_memory_t *mem)
{	if ( depth >= 4 )
	  return_error(e_limitcheck);
	pcmap->add_offset = 0;
	pcmap->cmap = root;
	switch ( r_type(pref) )
	  {
	  case t_null:
	    pcmap->type = cmap_glyph;
	    pcmap->byte_data.font_index = 0;
	    pcmap->data.glyph = gs_no_glyph;
	    return 0;
	  case t_name:
	    pcmap->type = cmap_glyph;
	    pcmap->byte_data.font_index = 0;
	    pcmap->data.glyph = name_index(pref);
	    return 0;
	  case t_integer:
	    if ( pref->value.intval < 0 ||
		 pref->value.intval > gs_max_glyph - gs_min_cid_glyph
	       )
	      break;
	    pcmap->type = cmap_glyph;
	    pcmap->data.glyph = pref->value.intval + gs_min_cid_glyph;
	    return 0;
	  case t_string:
	    if ( r_size(pref) < 1 || r_size(pref) > 4 )
	      break;
	    pcmap->type = cmap_char_code;
	    pcmap->num_bytes1 = r_size(pref) - 1;
	    pcmap->byte_data.font_index = 0;
	    { int i;
	      gs_char chr = 0;

	      for ( i = 0; i < r_size(pref); ++i )
		chr = (chr << 8) + pref->value.const_bytes[i];
	      pcmap->data.ccode = chr;
	    }
	    return 0;
	  default:
	    if ( !r_is_array(pref) || r_size(pref) < 1 || r_size(pref) > 256 )
	      break;
	    { uint size = r_size(pref);
	      uint count = 0;
	      ref_type rtype = t_null;
	      long prev_value;
	      long diff;
	      uint run_length;
	      ref rsub;
	      gx_code_map *subtree;
	      uint i, j;

	      /* Do a first pass to count non-null entries and find runs. */

	      for ( rtype = t_null, i = 0; i < size; ++i )
		{ ref_type prev_type = rtype;

		  array_get(pref, (long)i, &rsub);
		  rtype = r_type(&rsub);
		  switch ( rtype )
		    {
		    case t_null:
		      continue;
		    case t_integer:
		      if ( prev_type == t_integer )
			{ if ( run_length == 1 )
			    { diff = rsub.value.intval - prev_value;
			      if ( diff & ~1L )
				goto noseq;
			      run_length = 2;
			      continue;
			    }
			  else if ( rsub.value.intval - prev_value == diff )
			    { prev_value = rsub.value.intval;
			      ++run_length;
			      continue;
			    }
			}
noseq:		      prev_value = rsub.value.intval;
		      run_length = 1;
		      /* falls through */
		    default:
		      ++count;
		    }
		}

	      if ( count == 0 )
		count = 1;
	      subtree =
		gs_alloc_struct_array(mem, count, gx_code_map,
				      &st_code_map_element,
				      "acquire_code_map");
	      if ( subtree == 0 )
		return_error(e_VMerror);
	      pcmap->type = cmap_subtree;
	      pcmap->data.subtree = subtree;
	      /* Initialize a single undefined entry, in case count = 0 */
	      /* or we have to bail out with j = 0. */
	      subtree->first = subtree->last = 255;
	      subtree->type = cmap_glyph;
	      subtree->byte_data.font_index = 0;
	      subtree->data.glyph = gs_no_glyph;

	      /* Do the second pass to construct the tree. */

	      for ( rtype = t_null, i = j = 0; i < size; ++i )
		{ ref_type prev_type = rtype;
		  gx_code_map *submap = &subtree[j];
		  int code;

		  array_get(pref, (long)i, &rsub);
		  rtype = r_type(&rsub);
		  switch ( rtype )
		    {
		    case t_null:
		      continue;
		    case t_integer:
		      if ( prev_type == t_integer )
			{ if ( submap[-1].first == submap[-1].last )
			    { diff = rsub.value.intval - prev_value;
			      if ( diff & ~1L )
				goto nseq;
			      submap[-1].add_offset = (uint)diff;
			      submap[-1].last++;
			      continue;
			    }
			  else if ( rsub.value.intval - prev_value == diff )
			    { prev_value = rsub.value.intval;
			      submap[-1].last++;
			      continue;
			    }
			}
nseq:		      prev_value = rsub.value.intval;
		      /* falls through */
		    default:
		      code = acquire_code_map(submap, &rsub, depth + 1,
					      root, mem);
		      if ( code < 0 )
			{ /* Release allocated elements. */
			  pcmap->byte_data.count1 = (j ? j - 1 : 0);
			  free_code_map(pcmap, mem);
			  return code;
			}
		      submap->first = submap->last = (byte)i;
		      ++j;
		    }
		}
	      pcmap->byte_data.count1 = count - 1;
	    }
	    return 0;
	  }
	return_error(e_rangecheck);
}

/* Acquire CIDSystemInfo. */
/* Note that this currently does not handle the array format. */
private int
acquire_cid_system_info(gs_cid_system_info *pcidsi, const ref *op)
{	ref *prcidsi;
	ref *pregistry;
	ref *pordering;
	int code;

	if ( (code = dict_find_string(op, "CIDSystemInfo", &prcidsi)) <= 0 )
	  return_error(e_rangecheck);
	if ( !r_has_type(prcidsi, t_dictionary) )
	  return_error(e_typecheck);
	if ( (code = dict_find_string(prcidsi, "Registry", &pregistry)) <= 0 ||
	     (code = dict_find_string(prcidsi, "Ordering", &pordering)) <= 0
	   )
	  return_error(e_rangecheck);
	check_read_type_only(*pregistry, t_string);
	check_read_type_only(*pordering, t_string);
	pcidsi->Registry.data = pregistry->value.const_bytes;
	pcidsi->Registry.size = r_size(pregistry);
	pcidsi->Ordering.data = pordering->value.const_bytes;
	pcidsi->Ordering.size = r_size(pordering);
	return dict_int_param(prcidsi, "Supplement", 0, max_int, -1,
			      &pcidsi->Supplement);
}

/* Check compatibility of CIDSystemInfo. */
private bool
cid_system_info_compatible(const gs_cid_system_info *psi1,
  const gs_cid_system_info *psi2)
{
#define si_eq(part)\
  !bytes_compare(psi1->part.data, psi1->part.size,\
		 psi2->part.data, psi2->part.size)
	return si_eq(Registry) && si_eq(Ordering);
#undef si_eq
}

/* ---------------- (Semi-)public procedures ---------------- */

/* Get the CodeMap from a Type 0 font, and check the CIDSystemInfo of */
/* its subsidiary fonts. */
int
ztype0_get_cmap(const gs_cmap **ppcmap, const ref *pfdepvector, const ref *op)
{	ref *prcmap;
	ref *pcodemap;
	const gs_cmap *pcmap;
	int code;
	ref rfdep;
	gs_cid_system_info cidsi;

	if ( dict_find_string(op, "CMap", &prcmap) <= 0 ||
	     !r_has_type(prcmap, t_dictionary) ||
	     dict_find_string(prcmap, "CodeMap", &pcodemap) <= 0 ||
	     !r_has_stype(pcodemap, imemory, st_cmap)
	   )
	  return_error(e_invalidfont);
	pcmap = r_ptr(pcodemap, gs_cmap);
	/* Currently we only handle 1-element fonts. */
	if ( r_size(pfdepvector) != 1)
	  return_error(e_rangecheck);
	array_get(pfdepvector, 0L, &rfdep);
	code = acquire_cid_system_info(&cidsi, &rfdep);
	if ( code < 0 )
	  return code;
	if ( !cid_system_info_compatible(&cidsi, &pcmap->CIDSystemInfo) )
	  return_error(e_rangecheck);
	*ppcmap = pcmap;
	return 0;
}

/* ---------------- Operators ---------------- */

/* <CMap> .buildcmap <CMap> */
/*
 * Create the internal form of a CMap.  The initial CMap must be read-write
 * and have an entry with key = CodeMap and value = null; the result is
 * read-only and has a real CodeMap.
 */
private int
zbuildcmap(os_ptr op)
{	int code;
	ref *pcodemaps;
	ref *pcodemap;
	gs_cmap *pcmap;
	ref rdef, rnotdef, rcmap;

	check_type(*op, t_dictionary);
	check_dict_write(*op);
	pcmap = ialloc_struct(gs_cmap, &st_cmap, "zbuildcmap(cmap)");
	if ( pcmap == 0 )
	  { code = gs_note_error(e_VMerror);
	    goto fail;
	  }
	if ( (code = dict_uid_param(op, &pcmap->uid, 0, imemory)) < 0 ||
	     (code = dict_int_param(op, "WMode", 0, 1, 0, &pcmap->WMode)) < 0
	   )
	  goto fail;
	if ( dict_find_string(op, ".CodeMaps", &pcodemaps) <= 0 ||
	     !r_has_type(pcodemaps, t_array) ||
	     r_size(pcodemaps) != 2 ||
	     dict_find_string(op, "CodeMap", &pcodemap) <= 0 ||
	     !r_has_type(pcodemap, t_null)
	   )
	  { code = gs_note_error(e_rangecheck);
	    goto fail;
	  }
	if ( (code = acquire_cid_system_info(&pcmap->CIDSystemInfo, op)) < 0 ||
	     (array_get(pcodemaps, 0L, &rdef),
	      (code = acquire_code_map(&pcmap->def, &rdef, 0, pcmap, imemory)) < 0) ||
	     (array_get(pcodemaps, 1L, &rnotdef),
	      (code = acquire_code_map(&pcmap->notdef, &rnotdef, 0, pcmap, imemory)) < 0)
	   )
	  goto fail;
	pcmap->mark_glyph = zfont_mark_glyph_name;
	pcmap->mark_glyph_data = 0;
	make_istruct_new(&rcmap, a_readonly, pcmap);
	code = dict_put_string(op, "CodeMap", &rcmap);
	if ( code < 0 )
	  goto fail;
	return zreadonly(op);
fail:	ifree_object(pcmap, "zbuildcmap(cmap)");
	return code;
}

/* ------ Initialization procedure ------ */

BEGIN_OP_DEFS(zfcmap_op_defs) {
	{"1.buildcmap", zbuildcmap},
END_OP_DEFS(0) }
