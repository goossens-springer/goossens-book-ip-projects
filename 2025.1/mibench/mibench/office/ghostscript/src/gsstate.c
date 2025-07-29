/* Copyright (C) 1989, 1995, 1996, 1997 Aladdin Enterprises.  All rights reserved.
  
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

/* gsstate.c */
/* Miscellaneous graphics state operators for Ghostscript library */
#include "gx.h"
#include "memory_.h"
#include "gserrors.h"
#include "gsstruct.h"
#include "gsutil.h"		/* for gs_next_ids */
#include "gzstate.h"
#include "gxcspace.h"		/* here for gscolor2.h */
#include "gscolor2.h"
#include "gscoord.h"		/* for gs_initmatrix */
#include "gscie.h"
#include "gxcmap.h"
#include "gxdevice.h"
#include "gxpcache.h"
#include "gzht.h"
#include "gzline.h"
#include "gspath.h"
#include "gzpath.h"
#include "gzcpath.h"

/* Imported values */
/* The following should include a 'const', but for some reason */
/* the Watcom compiler won't accept it, even though it happily accepts */
/* the same construct everywhere else. */
extern /*const*/ gx_color_map_procs *cmap_procs_default;

/* Forward references */
private gs_state *gstate_alloc(P2(gs_memory_t *, client_name_t));
private void gstate_set_contents(P2(gs_state *, gs_state_contents *));
private gs_state *gstate_clone(P4(gs_state *, gs_memory_t *, client_name_t,
				  gs_state_copy_reason_t));
private void gstate_free_contents(P1(gs_state *));
private void gstate_share_paths(P1(const gs_state *));
private int gstate_copy(P4(gs_state *, const gs_state *,
			   gs_state_copy_reason_t, client_name_t));

/*
 * Graphics state storage management is complicated.  There are many
 * different classes of storage associated with a graphics state:
 *
 * (1) The gstate object itself.  This includes some objects physically
 *	embedded within the gstate object, but because of garbage collection
 *	requirements, there are no embedded objects that can be
 *	referenced by non-transient pointers.  We assume that the gstate
 *	stack "owns" its gstates and that we can free the top gstate when
 *	doing a restore.
 *
 * (2) Objects that are referenced directly by the gstate and whose lifetime
 *	is independent of the gstate.  These are garbage collected, not
 *	reference counted, so we don't need to do anything special with them
 *	when manipulating gstates.  Currently this includes:
 *		font, device
 *
 * (3) Objects that are referenced directly by the gstate, may be shared
 *	among gstates, and should disappear when no gstates reference them.
 *	We use reference counting to manage these.  Currently these are:
 *		halftone, dev_ht, cie_render, black_generation,
 *		undercolor_removal, set_transfer.*, cie_joint_caches
 *	effective_transfer.* may point to some of the same objects as
 *	set_transfer.*, but don't contribute to the reference count.
 *	Similarly, dev_color may point to the dev_ht object.  For
 *	simplicity, we initialize all of these pointers to 0 and then
 *	allocate the object itself when needed.
 *
 * (4) Objects that are referenced directly by exactly one gstate and that
 *	are not referenced (except transiently) from any other object.
 *	These fall into three groups:
 *
 *   (4a) Objects lumped a single gs_state_contents object in order to
 *	reduce the load on the allocator for gsave and grestore.  Each
 *	gs_gstate_contents is referenced by exactly one gstate, and nowhere
 *	else.  We reference the individual members through pointers, just as
 *	though they were allocated individually, so that we wouldn't have to
 *	keep remembering to put & in front of references to its components,
 *	which would otherwise have to be embedded in the gstate object.
 *	Again, we do not allow non-transient references to the objects
 *	embedded in this object, aside from a single pointer from the gstate
 *	object to each embedded component.  Currently these are:
 *		path, clip_path, ccolor, dev_color
 *
 *   (4b) Objects allocated individually:
 *		line_params.dash.pattern, color_space
 *	color_space is a special case because it is referenced both
 *	directly and also indirectly from image enumerators.
 *	line_params.dash.pattern is also a special case, because it is
 *	variable-length.  Otherwise, we could include these elements in
 *	the contents object (4a).
 *
 *   (4c) The "client data" for a gstate.  For the interpreter, this is
 *	the refs associated with the gstate, such as the screen procedures.
 *	Client-supplied procedures manage client data.
 *
 * (5) Objects referenced indirectly from gstate objects of category (4),
 *	including objects that may also be referenced directly by the gstate.
 *	The individual routines that manipulate these are responsible
 *	for doing the right kind of reference counting or whatever.
 *	Currently:
 *		path and clip_path require gx_path_share/release,
 *		  which use a 1-bit reference count;
 *		color_space and ccolor require cs_adjust_color/cspace_count
 *		  or cs_adjust_counts, which use a full reference count;
 *		dev_color has no references to storage that it owns.
 *	We count on garbage collection or restore to deallocate
 *	  sub-objects of halftone.
 *
 * This situation is unnecessarily complicated.  We should get rid of
 * the contents object and use reference counting to manage individually
 * the objects it currently contains.  We should use full reference
 * counting for paths, and use the freeing procedure to release the
 * individual path elements.  However, making these changes runs a large
 * risk of introducing hard-to-find bugs, so we don't plan to make them
 * in the foreseeable future.
 *
 * Note that when we do a gsave, the newly allocated gstate doesn't
 * necessarily reference the related objects that we allocate at the same
 * time; in particular, the old contents go with the new gstate object and
 * vice versa.  The same is true of grestore.  However, when we allocate
 * gstates off-stack, the newly allocated gstate does reference the newly
 * allocated component objects.  Note also that setgstate / currentgstate
 * may produce gstates in which different allocators own different
 * sub-objects; this is OK, because restore guarantees that there won't
 * be any dangling pointers (as long as we don't allow pointers from
 * global gstates to local objects).
 */

/* The structure for allocating (most of) the contents of a gstate */
/* all at once.  The typedef is in gzstate.c. */
struct gs_state_contents_s {
	gx_path path;
	gx_clip_path clip_path;
	gs_client_color ccolor;
	gx_device_color dev_color;
};

/* Enumerate the pointers in a graphics state, other than the ones */
/* that point to the gs_state_contents and the ones in the imager state. */
#define gs_state_do_ptrs(m)\
  m(0,saved) m(1,contents)\
  /*m(---,path)*/ /*m(---,clip_path)*/\
  m(2,color_space)\
  /*m(---,client_color)*/ /*m(---,dev_color)*/\
  m(3,font) m(4,root_font) m(5,show_gstate) /*m(---,device)*/\
  m(6,client_data)
#define gs_state_num_ptrs 7
/* Enumerate the pointers to the gs_state_contents. */
#define gs_state_do_contents_ptrs(m)\
  m(0,path) m(1,clip_path) m(2,ccolor) m(3,dev_color)

/* GC descriptors */
private_st_line_params();
private_st_imager_state();
private_st_gs_state();

/* GC procedures for gs_imager_state */
#define pis ((gs_imager_state *)vptr)
private ENUM_PTRS_BEGIN(imager_state_enum_ptrs) ENUM_SUPER(gs_imager_state, st_line_params, line_params, st_imager_state_num_ptrs - st_line_params_num_ptrs);
#define e1(i,elt) ENUM_PTR(i,gs_imager_state,elt);
	gs_cr_state_do_ptrs(e1)
#undef e1
ENUM_PTRS_END
private RELOC_PTRS_BEGIN(imager_state_reloc_ptrs) {
	RELOC_SUPER(gs_imager_state, st_line_params, line_params);
#define r1(i,elt) RELOC_PTR(gs_imager_state,elt);
	gs_cr_state_do_ptrs(r1)
#undef r1
} RELOC_PTRS_END
#undef pis

/* Components of the graphics state */
gs_private_st_composite(st_gs_state_contents, gs_state_contents,
  "gs_state_contents", state_contents_enum_ptrs, state_contents_reloc_ptrs);
public_st_transfer_map();

/* GC procedures for gs_state */
#define gsvptr ((gs_state *)vptr)
private ENUM_PTRS_BEGIN(gs_state_enum_ptrs) ENUM_PREFIX(st_imager_state, gs_state_num_ptrs + 1);
#define e1(i,elt) ENUM_PTR(i,gs_state,elt);
	gs_state_do_ptrs(e1)
	case gs_state_num_ptrs:		/* handle device specially */
	  ENUM_RETURN(gx_device_enum_ptr(gsvptr->device));
#undef e1
ENUM_PTRS_END
private RELOC_PTRS_BEGIN(gs_state_reloc_ptrs) {
	RELOC_PREFIX(st_imager_state);
	{ /* Save the contents pointer before relocation. */
	  byte *cont = (byte *)gsvptr->contents;
	  long reloc;
#define r1(i,elt) RELOC_PTR(gs_state,elt);
	  gs_state_do_ptrs(r1)
#undef r1
	  gsvptr->device = gx_device_reloc_ptr(gsvptr->device, gcst);
	  /* Now relocate the pointers into the contents. */
	  reloc = cont - (byte *)gsvptr->contents;
#define r1(i,elt)\
  gsvptr->elt = (void *)((byte *)gsvptr->elt - reloc);
	  gs_state_do_contents_ptrs(r1)
#undef r1
	}
} RELOC_PTRS_END
#undef gsvptr

/* GC procedures for gs_state_contents */
#define cptr ((gs_state_contents *)vptr)
private ENUM_PTRS_BEGIN_PROC(state_contents_enum_ptrs) {
	gs_ptr_type_t ret;
#define next_comp(np, st, e)\
  if ( index < np ) { ret = (*st.enum_ptrs)(&cptr->e, sizeof(cptr->e), index, pep); goto rx; }\
  index -= np
#define last_comp(np, st, e)\
  return (*st.enum_ptrs)(&cptr->e, sizeof(cptr->e), index, pep)
	next_comp(st_path_max_ptrs, st_path, path);
	next_comp(st_clip_path_max_ptrs, st_clip_path, clip_path);
	next_comp(st_client_color_max_ptrs, st_client_color, ccolor);
	last_comp(st_device_color_max_ptrs, st_device_color, dev_color);
#undef next_comp
#undef last_comp
rx:	if ( ret == 0 )
	{	/* A component ran out of pointers early. */
		/* Just return a null so we can keep going. */
		*pep = 0;
		return ptr_struct_type;
	}
	return ret;
ENUM_PTRS_END_PROC }
private RELOC_PTRS_BEGIN(state_contents_reloc_ptrs) {
	(*st_path.reloc_ptrs)(&cptr->path, sizeof(gx_path), gcst);
	(*st_clip_path.reloc_ptrs)(&cptr->clip_path, sizeof(gx_clip_path), gcst);
	(*st_client_color.reloc_ptrs)(&cptr->ccolor, sizeof(gs_client_color), gcst);
	(*st_device_color.reloc_ptrs)(&cptr->dev_color, sizeof(gx_device_color), gcst);
} RELOC_PTRS_END
#undef cptr

/* Copy client data, using the copy_for procedure if available, */
/* the copy procedure otherwise. */
private int near
gstate_copy_client_data(gs_state *pgs, void *dto, void *dfrom,
  gs_state_copy_reason_t reason)
{	return (pgs->client_procs.copy_for != 0 ?
		(*pgs->client_procs.copy_for)(dto, dfrom, reason) :
		(*pgs->client_procs.copy)(dto, dfrom));
}

/* ------ Operations on the entire graphics state ------ */

/* Initialize an imager state, other than the parts covered by */
/* gs_imager_state_initial. */
/* The halftone, dev_ht, and ht_cache elements are not set or used. */
private float
null_transfer(floatp gray, const gx_transfer_map *pmap)
{	return gray;
}
int
gs_imager_state_initialize(gs_imager_state *pis, gs_memory_t *mem)
{	pis->memory = mem;
	/* Skip halftone */
	{ int i;
	  for ( i = 0; i < gs_color_select_count; ++i )
	    pis->screen_phase[i].x = pis->screen_phase[i].y = 0;
	}
	/* Skip dev_ht */
	/* Skip ht_cache */
	pis->cie_render = 0;
	pis->black_generation = 0;
	pis->undercolor_removal = 0;
	/* Allocate an initial transfer map. */
	rc_alloc_struct_n(pis->set_transfer.colored.gray,
			  gx_transfer_map, &st_transfer_map,
			  mem, return_error(gs_error_VMerror),
			  "gs_imager_state_init(transfer)", 4);
	pis->set_transfer.colored.gray->proc = null_transfer;
	pis->set_transfer.colored.gray->id = gs_next_ids(1);
	pis->set_transfer.colored.gray->values[0] = frac_0;
	pis->set_transfer.colored.red =
	  pis->set_transfer.colored.green =
	  pis->set_transfer.colored.blue =
	  pis->set_transfer.colored.gray;
	pis->effective_transfer = pis->set_transfer;
	pis->cie_joint_caches = 0;
	pis->cmap_procs = cmap_procs_default;
	pis->pattern_cache = 0;
	return 0;
}

/* Release an imager state. */
void
gs_imager_state_release(gs_imager_state *pis)
{	static const char cname[] = "gs_imager_state_release";
#define rcdecr(element)\
  rc_decrement(pis->element, cname)

	rcdecr(cie_joint_caches);
	rcdecr(set_transfer.colored.gray);
	rcdecr(set_transfer.colored.blue);
	rcdecr(set_transfer.colored.green);
	rcdecr(set_transfer.colored.red);
	rcdecr(undercolor_removal);
	rcdecr(black_generation);
	rcdecr(cie_render);
#undef rcdecr
}

/* Allocate and initialize a graphics state. */
gs_state *
gs_state_alloc(gs_memory_t *mem)
{	gs_state *pgs = gstate_alloc(mem, "gs_state_alloc");

	if ( pgs == 0 )
	  return 0;
	{ static const gs_imager_state gstate_initial =
	    { gs_imager_state_initial(1.0) };
	  *(gs_imager_state *)pgs = gstate_initial;
	}
	/* Just enough of the state is initialized at this point */
	/* that it's OK to call gs_state_free if an allocation fails. */
	rc_alloc_struct_1(pgs->halftone, gs_halftone, &st_halftone, mem,
			  goto fail, "gs_state_alloc(halftone)");
	pgs->saved = 0;
	gstate_set_contents(pgs, pgs->contents);

	/* Initialize the color rendering state, except for elements */
	/* which are in the gs_state contents (halftone). */

	pgs->halftone->type = ht_type_none;
	pgs->dev_ht = 0;
	pgs->ht_cache = gx_ht_alloc_cache(mem,
					  gx_ht_cache_default_tiles(),
					  gx_ht_cache_default_bits());
	gs_imager_state_initialize((gs_imager_state *)pgs, mem);
	pgs->client_data = 0;

	/* Initialize other things not covered by initgraphics */

	gx_path_init(pgs->path, mem);
	gx_cpath_init(pgs->clip_path, mem);
	/* Initialize things so that gx_remap_color won't crash. */
	pgs->color_space->type = &gs_color_space_type_DeviceGray;
	gx_set_device_color_1(pgs);
	pgs->overprint = false;
	gs_nulldevice(pgs);
	gs_setalpha(pgs, 1.0);
	gs_settransfer(pgs, null_transfer);
	gs_setflat(pgs, 1.0);
	gs_setfilladjust(pgs, 0.25, 0.25);
	gs_setlimitclamp(pgs, false);
	gs_setstrokeadjust(pgs, true);
	pgs->font = 0;		/* Not right, but acceptable until the */
				/* PostScript code does the first setfont. */
	pgs->root_font = 0;	/* ditto */
	pgs->in_cachedevice = 0;
	pgs->in_charpath = (gs_char_path_mode)0;
	pgs->show_gstate = 0;
	pgs->level = 0;
	pgs->client_data = 0;
	if ( gs_initgraphics(pgs) < 0 )
	   {	/* Something went very wrong */
		return 0;
	   }
	return pgs;
fail:	gs_state_free(pgs);
	return 0;
}

/* Set the client data in a graphics state. */
/* This should only be done to a newly created state. */
void
gs_state_set_client(gs_state *pgs, void *pdata,
  const gs_state_client_procs *pprocs)
{	pgs->client_data = pdata;
	pgs->client_procs = *pprocs;
}

/* Get the client data from a graphics state. */
#undef gs_state_client_data		/* gzstate.h makes this a macro */
void *
gs_state_client_data(const gs_state *pgs)
{	return pgs->client_data;
}

/* Free a graphics state */
int
gs_state_free(gs_state *pgs)
{	gstate_free_contents(pgs);
	gs_free_object(pgs->memory, pgs, "gs_state_free");
	return 0;
}

/* Save the graphics state. */
int
gs_gsave(gs_state *pgs)
{	gs_state *pnew = gstate_clone(pgs, pgs->memory, "gs_gsave",
				      copy_for_gsave);

	if ( pnew == 0 )
	  return_error(gs_error_VMerror);
	gx_path_share(pgs->path);
	gx_cpath_share(pgs->clip_path);
	pgs->saved = pnew;
	if ( pgs->show_gstate == pgs )
	  pgs->show_gstate = pnew->show_gstate = pnew;
	pgs->level++;
	if_debug2('g', "[g]gsave -> 0x%lx, level = %d\n",
		  (ulong)pnew, pgs->level);
	return 0;
}

/* Restore the graphics state. */
int
gs_grestore(gs_state *pgs)
{	gs_state *saved = pgs->saved;
	void *pdata = pgs->client_data;
	void *sdata;
	if_debug2('g', "[g]grestore 0x%lx, level was %d\n",
		  (ulong)saved, pgs->level);
	if ( !saved )		/* shouldn't happen */
	  return gs_gsave(pgs);
	sdata = saved->client_data;
	if ( saved->pattern_cache == 0 )
	  saved->pattern_cache = pgs->pattern_cache;
	/* Swap back the client data pointers. */
	pgs->client_data = sdata;
	saved->client_data = pdata;
	if ( pdata != 0 && sdata != 0 )
	  gstate_copy_client_data(pgs, pdata, sdata, copy_for_grestore);
	gstate_free_contents(pgs);
	*pgs = *saved;
	if ( pgs->show_gstate == saved )
	  pgs->show_gstate = pgs;
	gs_free_object(pgs->memory, saved, "gs_grestore");
	if ( pgs->saved )
	  return 0;
	return gs_gsave(pgs);
}

/* Restore to the bottommost graphics state.  Also clear */
/* the halftone caches, so stale pointers don't survive a restore. */
int
gs_grestoreall(gs_state *pgs)
{	int code;
	if ( !pgs->saved )		/* shouldn't happen */
	  return gs_gsave(pgs);
	while ( pgs->saved->saved )
	{	int code = gs_grestore(pgs);
		if ( code < 0 )
		  return code;
	}
	code = gs_grestore(pgs);
	if ( code < 0 )
	  return code;
	gx_ht_clear_cache(pgs->ht_cache);
	if ( pgs->pattern_cache )
	  (*pgs->pattern_cache->free_all)(pgs->pattern_cache);
	return code;
}

/* Allocate and return a new graphics state. */
gs_state *
gs_gstate(gs_state *pgs)
{	return gs_state_copy(pgs, pgs->memory);
}
gs_state *
gs_state_copy(gs_state *pgs, gs_memory_t *mem)
{	gs_state *pnew;

#if 0 /****************/
	if ( mem == pgs->memory )
#endif /****************/
	  gstate_share_paths(pgs);
	pnew = gstate_clone(pgs, mem, "gs_gstate", copy_for_gstate);
	if ( pnew == 0 )
	  return 0;
	pnew->saved = 0;
	/*
	 * Prevent dangling references from the show_gstate pointer.  If
	 * this context is its own show_gstate, set the pointer in the clone
	 * to point to the clone; otherwise, set the pointer in the clone to
	 * 0, and let gs_setgstate fix it up.
	 */
	pnew->show_gstate =
	  (pgs->show_gstate == pgs ? pnew : 0);
	return pnew;
}

/* Copy one previously allocated graphics state to another. */
int
gs_copygstate(gs_state *pto, const gs_state *pfrom)
{	return gstate_copy(pto, pfrom, copy_for_copygstate, "gs_copygstate");
}

/* Copy the current graphics state to a previously allocated one. */
int
gs_currentgstate(gs_state *pto, const gs_state *pgs)
{	gstate_share_paths(pgs);
	return gstate_copy(pto, pgs, copy_for_currentgstate, "gs_currentgstate");
}

/* Restore the current graphics state from a previously allocated one. */
int
gs_setgstate(gs_state *pgs, const gs_state *pfrom)
{	/*
	 * The implementation is the same as currentgstate,
	 * except we must preserve the saved pointer, the level,
	 * and possibly the show_gstate.
	 */
	gs_state *saved_show = pgs->show_gstate;
	int level = pgs->level;
	int code = gstate_copy(pgs, pfrom, copy_for_setgstate, "gs_setgstate");

	if ( code < 0 )
	  return code;
	pgs->level = level;
	pgs->show_gstate =
	  (pgs->show_gstate == pfrom ? pgs : saved_show);
	return 0;
}

/* Get the allocator pointer of a graphics state. */
/* This is provided only for the interpreter */
/* and for color space implementation. */
gs_memory_t *
gs_state_memory(const gs_state *pgs)
{	return pgs->memory;
}

/* Get the saved pointer of the graphics state. */
/* This is provided only for Level 2 grestore. */
gs_state *
gs_state_saved(const gs_state *pgs)
{	return pgs->saved;
}

/* Swap the saved pointer of the graphics state. */
/* This is provided only for save/restore. */
gs_state *
gs_state_swap_saved(gs_state *pgs, gs_state *new_saved)
{	gs_state *saved = pgs->saved;
	pgs->saved = new_saved;
	return saved;
}

/* Swap the memory pointer of the graphics state. */
/* This is provided only for the interpreter. */
gs_memory_t *
gs_state_swap_memory(gs_state *pgs, gs_memory_t *mem)
{	gs_memory_t *memory = pgs->memory;
	pgs->memory = mem;
	return memory;
}

/* ------ Operations on components ------ */

/* Reset most of the graphics state */
int
gs_initgraphics(gs_state *pgs)
{	int code;
	gs_initmatrix(pgs);
	if (	(code = gs_newpath(pgs)) < 0 ||
		(code = gs_initclip(pgs)) < 0 ||
		(code = gs_setlinewidth(pgs, 1.0)) < 0 ||
		(code = gs_setlinecap(pgs, gs_cap_butt)) < 0 ||
		(code = gs_setlinejoin(pgs, gs_join_miter)) < 0 ||
		(code = gs_setdash(pgs, (float *)0, 0, 0.0)) < 0 ||
		(gs_setdashadapt(pgs, false),
		 (code = gs_setdotlength(pgs, 0.0, false))) < 0 ||
		(code = gs_setgray(pgs, 0.0)) < 0 ||
		(code = gs_setmiterlimit(pgs, 10.0)) < 0
	   )
	  return code;
	gs_init_rop(pgs);
	return 0;
}

/* setfilladjust */
int
gs_setfilladjust(gs_state *pgs, floatp adjust_x, floatp adjust_y)
{
#define adjust_fill_adjust(v)\
  if ( v < 0 ) v = 0; else if ( v > 0.5 ) v = 0.5
	adjust_fill_adjust(adjust_x);
	pgs->fill_adjust.x = float2fixed(adjust_x);
	adjust_fill_adjust(adjust_y);
	pgs->fill_adjust.y = float2fixed(adjust_y);
	return 0;
}

/* currentfilladjust */
int
gs_currentfilladjust(const gs_state *pgs, gs_point *adjust)
{	adjust->x = fixed2float(pgs->fill_adjust.x);
	adjust->y = fixed2float(pgs->fill_adjust.y);
	return 0;
}

/* setlimitclamp */
void
gs_setlimitclamp(gs_state *pgs, bool clamp)
{	pgs->clamp_coordinates = clamp;
}

/* currentlimitclamp */
bool
gs_currentlimitclamp(const gs_state *pgs)
{	return pgs->clamp_coordinates;
}

/* ------ Internal routines ------ */

/* Allocate a gstate and its contents. */
private gs_state *
gstate_alloc(gs_memory_t *mem, client_name_t cname)
{	gs_state *pgs =
	  gs_alloc_struct(mem, gs_state, &st_gs_state, cname);
	gs_state_contents *cont =
	  gs_alloc_struct(mem, gs_state_contents, &st_gs_state_contents, cname);
	gs_color_space *pcs =
	  gs_alloc_struct(mem, gs_color_space, &st_color_space, cname);

	if ( pgs == 0 || cont == 0 || pcs == 0 )
	  {	gs_free_object(mem, pcs, cname);
		gs_free_object(mem, cont, cname);
		gs_free_object(mem, pgs, cname);
		return 0;
	  }
	pgs->line_params.dash.pattern = 0; /* in imager state */
	pgs->memory = mem;
	pgs->contents = cont;
	pgs->color_space = pcs;
	return pgs;
}

/* Set the contents pointers of a gstate. */
private void
gstate_set_contents(gs_state *pgs, gs_state_contents *cont)
{	pgs->contents = cont;
#define gset(element)\
  pgs->element = &cont->element;
	gset(path);
	gset(clip_path);
	gset(ccolor);
	gset(dev_color);
#undef gset
}

/* Copy the dash pattern from one gstate to another. */
private int
gstate_copy_dash(gs_state *pto, const gs_state *pfrom)
{	return gs_setdash(pto, pfrom->line_params.dash.pattern,
			  pfrom->line_params.dash.pattern_size,
			  pfrom->line_params.dash.offset);
}

/* Clone an existing graphics state. */
/* Return 0 if the allocation fails. */
/* The client is responsible for calling gx_[c]path_share on */
/* whichever of the old and new paths is appropriate. */
/* If for_gsave is true, the clone refers to the old contents, */
/* and we switch the old state to refer to the new contents. */
private gs_state *
gstate_clone(gs_state *pfrom, gs_memory_t *mem, client_name_t cname,
  gs_state_copy_reason_t reason)
{	gs_state_contents *cfrom = pfrom->contents;
	gs_color_space *csfrom = pfrom->color_space;
	gs_state *pgs = gstate_alloc(mem, cname);
	gs_state_contents *cont;
	gs_color_space *pcs;

	if ( pgs == 0 )
	  return 0;
	cont = pgs->contents;
	pcs = pgs->color_space;
	/* Increment references from gstate object. */
	*pgs = *pfrom;
	/* Copy the dash pattern if necessary. */
	if ( pgs->line_params.dash.pattern )
	  { int code;
	    pgs->line_params.dash.pattern = 0; /* force allocation */
	    code = gstate_copy_dash(pgs, pfrom);
	    if ( code < 0 )
	      goto fail;
	  }
	if ( pgs->client_data != 0 )
	{	void *pdata = pgs->client_data =
		  (*pgs->client_procs.alloc)(mem);
		if ( pdata == 0 ||
		     gstate_copy_client_data(pgs, pdata, pfrom->client_data, reason) < 0
		   )
		  goto fail;
	}
	rc_increment(pgs->set_transfer.colored.gray);
	rc_increment(pgs->set_transfer.colored.red);
	rc_increment(pgs->set_transfer.colored.green);
	rc_increment(pgs->set_transfer.colored.blue);
	rc_increment(pgs->halftone);
	rc_increment(pgs->dev_ht);
	rc_increment(pgs->cie_render);
	rc_increment(pgs->black_generation);
	rc_increment(pgs->undercolor_removal);
	rc_increment(pgs->cie_joint_caches);
	if ( reason == copy_for_gsave )
	  {	gstate_set_contents(pgs, cfrom);
		pgs->color_space = csfrom;
		gstate_set_contents(pfrom, cont);
		pfrom->color_space = pcs;
	  }
	else
	  {	gstate_set_contents(pgs, cont);
		pgs->color_space = pcs;
	  }
	*cont = *cfrom;
	*pcs = *csfrom;
	cs_adjust_counts(pgs, 1);
	return pgs;
fail:	gs_free_object(mem, pgs->line_params.dash.pattern, cname);
	gs_free_object(mem, pcs, cname);
	gs_free_object(mem, cont, cname);
	gs_free_object(mem, pgs, cname);
	return 0;
}

/* Release the composite parts of a graphics state, */
/* but not the state itself. */
private void
gstate_free_contents(gs_state *pgs)
{	gs_memory_t *mem = pgs->memory;
	static const char cname[] = "gstate_free_contents";
	gx_device_halftone *pdht = pgs->dev_ht;
#define rcdecr(element)\
  rc_decrement(pgs->element, cname)

	gx_path_release(pgs->path);
	gx_cpath_release(pgs->clip_path);
	rcdecr(cie_joint_caches);
	rcdecr(set_transfer.colored.gray);
	rcdecr(set_transfer.colored.blue);
	rcdecr(set_transfer.colored.green);
	rcdecr(set_transfer.colored.red);
	rcdecr(undercolor_removal);
	rcdecr(black_generation);
	rcdecr(cie_render);
	if ( pdht != 0 && pdht->rc.ref_count == 1 )
	  { /* Make sure we don't leave dangling pointers in the cache. */
	    gx_ht_cache *pcache = pgs->ht_cache;

	    if ( pcache->order.bits == pdht->order.bits ||
		 pcache->order.levels == pdht->order.levels
	       )
	      gx_ht_clear_cache(pcache);
	    gx_device_halftone_release(pdht, pdht->rc.memory);
	  }
	rcdecr(dev_ht);
	rcdecr(halftone);
	cs_adjust_counts(pgs, -1);
	if ( pgs->client_data != 0 )
	  (*pgs->client_procs.free)(pgs->client_data, mem);
	gs_free_object(mem, pgs->line_params.dash.pattern, cname);
	gs_free_object(mem, pgs->color_space, cname);
	gs_free_object(mem, pgs->contents, cname);
#undef rcdecr
}

/*
 * Mark both the old and new paths as shared when copying a gstate off-stack.
 * If the old path was previously shared, we must search up
 * the graphics state stack so we can mark its original ancestor
 * as shared, because the off-stack copy defeats the one-bit
 * reference count.
 */
private void
gstate_share_paths(const gs_state *pgs)
{	gx_path *ppath = pgs->path;
	gx_clip_path *pcpath = pgs->clip_path;

	if ( ppath->shares_segments )
	  {	const gs_state *pcur;
		const gs_state *prev;
		const subpath *first;
		for ( pcur = pgs, first = ppath->first_subpath;
		      (prev = pcur->saved) != 0 &&
		        prev->path->first_subpath == first;
		      pcur = prev
		    )
		  if ( !prev->path->shares_segments )
		    {	gx_path_share(prev->path);
			break;
		    }
	  }
	else
	  gx_path_share(ppath);
	/*
	 * If the clip path is a rectangle, free its path representation
	 * rather than copying it.
	 */
	if ( pcpath->list.count <= 1 && pcpath->segments_valid )
	  { gx_path_release(&pcpath->path);
	    pcpath->segments_valid = false;
	  }
	if ( pcpath->path.shares_segments )
	  {	const gs_state *pcur;
		const gs_state *prev;
		const subpath *first;
		for ( pcur = pgs, first = pcpath->path.first_subpath;
		      (prev = pcur->saved) != 0 &&
		        prev->clip_path->path.first_subpath == first;
		      pcur = prev
		    )
		  if ( !prev->clip_path->path.shares_segments )
		    {	gx_cpath_share(prev->clip_path);
			break;
		    }
	  }
	if ( pcpath->shares_list )
	  {	const gs_state *pcur;
		const gs_state *prev;
		const gx_clip_rect *head;
		for ( pcur = pgs, head = pcpath->list.head;
		      (prev = pcur->saved) != 0 &&
		        prev->clip_path->list.head == head;
		      pcur = prev
		    )
		  if ( !prev->clip_path->shares_list )
		    {	gx_cpath_share(prev->clip_path);
			break;
		    }
	  }
	gx_cpath_share(pcpath);
}

/* Copy one gstate to another. */
private int
gstate_copy(gs_state *pto, const gs_state *pfrom,
  gs_state_copy_reason_t reason, client_name_t cname)
{	gs_state_contents *cto = pto->contents;
	gs_color_space *csto = pto->color_space;

	/* Copy the dash pattern if necessary. */
	if ( pfrom->line_params.dash.pattern || pto->line_params.dash.pattern )
	  { int code = gstate_copy_dash(pto, pfrom);
	    if ( code < 0 )
	      return 0;
	  }
	/* It's OK to decrement the counts before incrementing them, */
	/* because anything that is going to survive has a count of */
	/* at least 2 (pto and somewhere else) initially. */
	/* Handle references from contents. */
	cs_adjust_counts(pto, -1);
	gx_path_release(pto->path);
	gx_cpath_release(pto->clip_path);
	*cto = *pfrom->contents;
	*csto = *pfrom->color_space;
	cs_adjust_counts(pto, 1);
	gx_path_share(pto->path);
	gx_cpath_share(pto->clip_path);
	/* Handle references from gstate object. */
#define rccopy(element)\
  rc_pre_assign(pto->element, pfrom->element, cname)
	rccopy(cie_joint_caches);
	rccopy(set_transfer.colored.gray);
	rccopy(set_transfer.colored.blue);
	rccopy(set_transfer.colored.green);
	rccopy(set_transfer.colored.red);
	rccopy(undercolor_removal);
	rccopy(black_generation);
	rccopy(cie_render);
	rccopy(dev_ht);
	rccopy(halftone);
#undef rccopy
	{	struct gx_pattern_cache_s *pcache = pto->pattern_cache;
		void *pdata = pto->client_data;
		gs_memory_t *mem = pto->memory;
		gs_state *saved = pto->saved;
		float *pattern = pto->line_params.dash.pattern;

		*pto = *pfrom;
		pto->client_data = pdata;
		pto->memory = mem;
		pto->saved = saved;
		pto->line_params.dash.pattern = pattern;
		if ( pto->pattern_cache == 0 )
		  pto->pattern_cache = pcache;
		if ( pfrom->client_data != 0 )
		  { /* We need to break 'const' here. */
		    gstate_copy_client_data((gs_state *)pfrom, pdata,
					    pfrom->client_data, reason);
		  }
	}
	gstate_set_contents(pto, cto);
	pto->color_space = csto;
	pto->show_gstate =
	  (pfrom->show_gstate == pfrom ? pto : 0);
	return 0;
}
