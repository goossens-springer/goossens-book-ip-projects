/* Copyright (C) 1993, 1995, 1996, 1997 Aladdin Enterprises.  All rights reserved.
  
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

/* gxpcmap.c */
/* Pattern color mapping for Ghostscript library */
#include "math_.h"
#include "memory_.h"
#include "gx.h"
#include "gserrors.h"
#include "gsstruct.h"
#include "gsutil.h"		/* for gs_next_ids */
#include "gxfixed.h"
#include "gxmatrix.h"
#include "gxcspace.h"		/* for gscolor2.h */
#include "gxcolor2.h"
#include "gxdcolor.h"
#include "gxdevice.h"
#include "gxdevmem.h"
#include "gxpcolor.h"
#include "gzstate.h"
#include "gzpath.h"		/* for tweaking sharing flags */
#include "gzcpath.h"		/* ditto */

/* Define the default size of the Pattern cache. */
#define max_cached_patterns_LARGE 50
#define max_pattern_bits_LARGE 100000
#define max_cached_patterns_SMALL 5
#define max_pattern_bits_SMALL 1000
uint
gx_pat_cache_default_tiles(void)
{
#if arch_small_memory
	return max_cached_patterns_SMALL;
#else
	return (gs_if_debug_c('.') ? max_cached_patterns_SMALL :
		max_cached_patterns_LARGE);
#endif
}
ulong
gx_pat_cache_default_bits(void)
{
#if arch_small_memory
	return max_pattern_bits_SMALL;
#else
	return (gs_if_debug_c('.') ? max_pattern_bits_SMALL :
		max_pattern_bits_LARGE);
#endif
}

/* Define the structures for Pattern rendering and caching. */
private_st_color_tile();
private_st_color_tile_element();
private_st_pattern_cache();
private_st_device_pattern_accum();

/* ------ Pattern rendering ------ */

/* Device procedures */
private dev_proc_open_device(pattern_accum_open);
private dev_proc_close_device(pattern_accum_close);
private dev_proc_fill_rectangle(pattern_accum_fill_rectangle);
private dev_proc_copy_mono(pattern_accum_copy_mono);
private dev_proc_copy_color(pattern_accum_copy_color);

/* The device descriptor */
private const gx_device_pattern_accum gs_pattern_accum_device =
{	std_device_std_body_open(gx_device_pattern_accum, 0,
	  "pattern accumulator",
	  0, 0, 72, 72),
	 {	pattern_accum_open,
		NULL,
		NULL,
		NULL,
		pattern_accum_close,
		NULL,
		NULL,
		pattern_accum_fill_rectangle,
		NULL,
		pattern_accum_copy_mono,
		pattern_accum_copy_color,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		gx_default_fill_path,
		gx_default_stroke_path,
		NULL,
		gx_default_fill_trapezoid,
		gx_default_fill_parallelogram,
		gx_default_fill_triangle,
		gx_default_draw_thin_line,
		gx_default_begin_image,
		gx_default_image_data,
		gx_default_end_image,
		NULL,
		NULL,
		gx_get_largest_clipping_box
	 },
	0,				/* target */
	0, 0, 0, 0			/* bitmap_memory, bits, mask, instance */
};
#define padev ((gx_device_pattern_accum *)dev)

/* Allocate a pattern accumulator. */
gx_device_pattern_accum *
gx_pattern_accum_alloc(gs_memory_t *mem, client_name_t cname)
{	gx_device_pattern_accum *adev =
	  gs_alloc_struct(mem, gx_device_pattern_accum,
			  &st_device_pattern_accum, cname);
	if ( adev == 0 )
	  return 0;
	*adev = gs_pattern_accum_device;
	adev->memory = mem;
	gx_device_forward_fill_in_procs((gx_device_forward *)adev);	/* (should only do once) */
	return adev;
}

/* Initialize a pattern accumulator. */
/* Client must already have set instance and bitmap_memory. */
private int
pattern_accum_open(gx_device *dev)
{	const gs_pattern_instance *pinst = padev->instance;
	gs_memory_t *mem = padev->bitmap_memory;
	gx_device_memory *mask =
	  gs_alloc_struct(mem, gx_device_memory, &st_device_memory,
			  "pattern_accum_open(mask)");
	gx_device_memory *bits = 0;
	gx_device *target = gs_currentdevice(pinst->saved);
	int width = pinst->size.x;
	int height = pinst->size.y;
	int code;
	if ( mask == 0 )
	  return_error(gs_error_VMerror);
#define pdset(dev)\
  (dev)->width = width, (dev)->height = height,\
  (dev)->x_pixels_per_inch = target->x_pixels_per_inch,\
  (dev)->y_pixels_per_inch = target->y_pixels_per_inch
	pdset(padev);
	padev->color_info = target->color_info;
	gs_make_mem_mono_device(mask, mem, 0);
	pdset(mask);
	mask->bitmap_memory = mem;
	mask->base = 0;
	code = (*dev_proc(mask, open_device))((gx_device *)mask);
	if ( code >= 0 )
	  {	memset(mask->base, 0, mask->raster * mask->height);
		switch ( pinst->template.PaintType )
		  {
		  case 2:				/* uncolored */
			padev->target = target;
			break;
		  case 1:				/* colored */
			bits = gs_alloc_struct(mem, gx_device_memory,
					       &st_device_memory,
					       "pattern_accum_open(bits)");
			if ( bits == 0 )
			  return_error(gs_error_VMerror);
			padev->target = (gx_device *)bits;
			gs_make_mem_device(bits, gdev_mem_device_for_bits(target->color_info.depth), mem, -1, target);
			pdset(bits);
#undef pdset
			bits->color_info = target->color_info;
			bits->bitmap_memory = mem;
			code = (*dev_proc(bits, open_device))((gx_device *)bits);
		  }
	}
	if ( code < 0 )
	  {	if ( bits != 0 )
		  gs_free_object(mem, bits, "pattern_accum_open(bits)");
		(*dev_proc(mask, close_device))((gx_device *)mask);
		gs_free_object(mem, mask, "pattern_accum_open(mask)");
		return code;
	  }
	padev->mask = mask;
	padev->bits = bits;
	return code;
}

/* Close an accumulator and free the bits. */
private int
pattern_accum_close(gx_device *dev)
{	gs_memory_t *mem = padev->bitmap_memory;
	if ( padev->bits != 0 )
	  {	(*dev_proc(padev->bits, close_device))((gx_device *)padev->bits);
		gs_free_object(mem, padev->bits, "pattern_accum_close(bits)");
		padev->bits = 0;
	  }
	(*dev_proc(padev->mask, close_device))((gx_device *)padev->mask);
	gs_free_object(mem, padev->mask, "pattern_accum_close(mask)");
	padev->mask = 0;
	return 0;
}

/* Fill a rectangle */
private int
pattern_accum_fill_rectangle(gx_device *dev, int x, int y, int w, int h,
  gx_color_index color)
{	if ( padev->bits )
		(*dev_proc(padev->target, fill_rectangle))(padev->target,
			x, y, w, h, color);
	return (*dev_proc(padev->mask, fill_rectangle))((gx_device *)padev->mask,
		x, y, w, h, (gx_color_index)1);
}

/* Copy a monochrome bitmap. */
private int
pattern_accum_copy_mono(gx_device *dev, const byte *data, int data_x,
  int raster, gx_bitmap_id id, int x, int y, int w, int h,
  gx_color_index color0, gx_color_index color1)
{	if ( padev->bits )
		(*dev_proc(padev->target, copy_mono))(padev->target,
			data, data_x, raster, id, x, y, w, h, color0, color1);
	if ( color0 != gx_no_color_index )
		color0 = 1;
	if ( color1 != gx_no_color_index )
		color1 = 1;
	if ( color0 == 1 && color1 == 1 )
		return (*dev_proc(padev->mask, fill_rectangle))((gx_device *)padev->mask,
			x, y, w, h, (gx_color_index)1);
	else
		return (*dev_proc(padev->mask, copy_mono))((gx_device *)padev->mask,
			data, data_x, raster, id, x, y, w, h, color0, color1);
}

/* Copy a color bitmap. */
private int
pattern_accum_copy_color(gx_device *dev, const byte *data, int data_x,
  int raster, gx_bitmap_id id, int x, int y, int w, int h)
{	if ( padev->bits )
		(*dev_proc(padev->target, copy_color))(padev->target,
			data, data_x, raster, id, x, y, w, h);
	return (*dev_proc(padev->mask, fill_rectangle))((gx_device *)padev->mask,
		x, y, w, h, (gx_color_index)1);
}

#undef padev

/* ------ Color space implementation ------ */

/* Free all entries in a pattern cache. */
private bool
pattern_cache_choose_all(gx_color_tile *ctile, void *proc_data)
{	return true;
}
private void
pattern_cache_free_all(gx_pattern_cache *pcache)
{	gx_pattern_cache_winnow(pcache, pattern_cache_choose_all, NULL);
}

/* Allocate a Pattern cache. */
gx_pattern_cache *
gx_pattern_alloc_cache(gs_memory_t *mem, uint num_tiles, ulong max_bits)
{	gx_pattern_cache *pcache =
	  gs_alloc_struct(mem, gx_pattern_cache, &st_pattern_cache,
			  "pattern_cache_alloc(struct)");
	gx_color_tile *tiles =
	  gs_alloc_struct_array(mem, num_tiles, gx_color_tile,
				&st_color_tile_element,
				"pattern_cache_alloc(tiles)");
	uint i;

	if ( pcache == 0 || tiles == 0 )
	  { gs_free_object(mem, tiles, "pattern_cache_alloc(tiles)");
	    gs_free_object(mem, pcache, "pattern_cache_alloc(struct)");
	    return 0;
	  }
	pcache->memory = mem;
	pcache->tiles = tiles;
	pcache->num_tiles = num_tiles;
	pcache->tiles_used = 0;
	pcache->next = 0;
	pcache->bits_used = 0;
	pcache->max_bits = max_bits;
	pcache->free_all = pattern_cache_free_all;
	for ( i = 0; i < num_tiles; tiles++, i++ )
	  {	tiles->id = gx_no_bitmap_id;
		/* Clear the pointers to pacify the GC. */
		uid_set_invalid(&tiles->uid);
		tiles->tbits.data = 0;
		tiles->tmask.data = 0;
		tiles->index = i;
	  }
	return pcache;
}
/* Ensure that an imager has a Pattern cache. */
private int
ensure_pattern_cache(gs_imager_state *pis)
{	if ( pis->pattern_cache == 0 )
	  { gx_pattern_cache *pcache =
	      gx_pattern_alloc_cache(pis->memory,
				     gx_pat_cache_default_tiles(),
				     gx_pat_cache_default_bits());
	    if ( pcache == 0 )
	      return_error(gs_error_VMerror);
	    pis->pattern_cache = pcache;
	  }
	return 0;
}

/* Get and set the Pattern cache in a gstate. */
gx_pattern_cache *
gstate_pattern_cache(gs_state *pgs)
{	return pgs->pattern_cache;
}
void
gstate_set_pattern_cache(gs_state *pgs, gx_pattern_cache *pcache)
{	pgs->pattern_cache = pcache;
}

/* Free a Pattern cache entry. */
private void
gx_pattern_cache_free_entry(gx_pattern_cache *pcache, gx_color_tile *ctile)
{	gx_device_memory mdev;
	if ( ctile->id != gx_no_bitmap_id )
	  { if ( ctile->tmask.data != 0 )
	      { mdev.width = ctile->tmask.size.x;
		mdev.height = ctile->tmask.size.y;
		mdev.color_info.depth = 1;
		pcache->bits_used -= gdev_mem_bitmap_size(&mdev);
		gs_free_object(pcache->memory, ctile->tmask.data,
			       "free_pattern_cache_entry(mask data)");
		ctile->tmask.data = 0;	/* for GC */
	      }
	    if ( ctile->tbits.data != 0 )
	      { mdev.width = ctile->tbits.size.x;
		mdev.height = ctile->tbits.size.y;
		mdev.color_info.depth = ctile->depth;
		pcache->bits_used -= gdev_mem_bitmap_size(&mdev);
		gs_free_object(pcache->memory, ctile->tbits.data,
			       "free_pattern_cache_entry(bits data)");
		ctile->tbits.data = 0;	/* for GC */
	      }
	    ctile->id = gx_no_bitmap_id;
	    pcache->tiles_used--;
	  }
}

/* Add a Pattern cache entry.  This is exported for the interpreter. */
/* Note that this does not free any of the data in the accumulator */
/* device, but it may zero out the bitmap_memory pointers to prevent */
/* the accumulated bitmaps from being freed when the device is closed. */
private void make_bitmap(P3(gx_strip_bitmap *, const gx_device_memory *, gx_bitmap_id));
int
gx_pattern_cache_add_entry(gs_imager_state *pis,
  gx_device_pattern_accum *padev, gx_color_tile **pctile)
{	gx_device_memory *mbits = padev->bits;
	gx_device_memory *mmask = padev->mask;
	const gs_pattern_instance *pinst = padev->instance;
	gx_pattern_cache *pcache;
	ulong used = 0;
	gx_bitmap_id id = pinst->id;
	gx_color_tile *ctile;
	int code = ensure_pattern_cache(pis);
	if ( code < 0 )
	  return code;
	pcache = pis->pattern_cache;
	/*
	 * Check whether the pattern completely fills its box.
	 * If so, we can avoid the expensive masking operations
	 * when using the pattern.
	 */
	{	int y;
		for ( y = 0; y < mmask->height; y++ )
		  { const byte *row = scan_line_base(mmask, y);
		    int w;
		    for ( w = mmask->width; w > 8; w -= 8 )
		      if ( *row++ != 0xff )
			goto keep;
		    if ( (*row | (0xff >> w)) != 0xff )
		      goto keep;
		  }
		/* We don't need a mask. */
		mmask = 0;
keep:		;
	}
	if ( mbits != 0 )
	  used += gdev_mem_bitmap_size(mbits);
	if ( mmask != 0 )
	  used += gdev_mem_bitmap_size(mmask);
	ctile = &pcache->tiles[id % pcache->num_tiles];
	gx_pattern_cache_free_entry(pcache, ctile);
	while ( pcache->bits_used + used > pcache->max_bits &&
		pcache->bits_used != 0	 /* allow 1 oversized entry (?) */
	      )
	  { pcache->next = (pcache->next + 1) % pcache->num_tiles;
	    gx_pattern_cache_free_entry(pcache, &pcache->tiles[pcache->next]);
	  }
	ctile->id = id;
	ctile->depth = padev->color_info.depth;
	ctile->uid = pinst->template.uid;
	ctile->tiling_type = pinst->template.TilingType;
	ctile->step_matrix = pinst->step_matrix;
	ctile->bbox = pinst->bbox;
	ctile->is_simple = pinst->is_simple;
	if ( mbits != 0 )
	  { make_bitmap(&ctile->tbits, mbits, gs_next_ids(1));
	    mbits->bitmap_memory = 0;	/* don't free the bits */
	  }
	else
	  ctile->tbits.data = 0;
	if ( mmask != 0 )
	  { make_bitmap(&ctile->tmask, mmask, id);
	    mmask->bitmap_memory = 0;	/* don't free the bits */
	  }
	else
	  ctile->tmask.data = 0;
	pcache->bits_used += used;
	pcache->tiles_used++;
	*pctile = ctile;
	return 0;
}
private void
make_bitmap(register gx_strip_bitmap *pbm, const gx_device_memory *mdev,
  gx_bitmap_id id)
{	pbm->data = mdev->base;
	pbm->raster = mdev->raster;
	pbm->rep_width = pbm->size.x = mdev->width;
	pbm->rep_height = pbm->size.y = mdev->height;
	pbm->id = id;
	pbm->rep_shift = pbm->shift = 0;
}

/* Purge selected entries from the pattern cache. */
void
gx_pattern_cache_winnow(gx_pattern_cache *pcache,
  bool (*proc)(P2(gx_color_tile *ctile, void *proc_data)), void *proc_data)
{	uint i;

	if ( pcache == 0 )	/* no cache created yet */
	  return;
	for ( i = 0; i < pcache->num_tiles; ++i )
	  { gx_color_tile *ctile = &pcache->tiles[i];
	    if ( ctile->id != gx_no_bitmap_id && (*proc)(ctile, proc_data) )
	      gx_pattern_cache_free_entry(pcache, ctile);
	  }
}

/* Reload a (non-null) Pattern color into the cache. */
/* *pdc is already set, except for colors.pattern.p_tile and mask.m_tile. */
int
gx_pattern_load(gx_device_color *pdc, const gs_imager_state *pis,
  gx_device *dev, gs_color_select_t select)
{	gx_device_pattern_accum adev;
	gs_pattern_instance *pinst = pdc->mask.ccolor.pattern;
	gs_state *saved;
	gx_color_tile *ctile;
	gs_memory_t *mem = pis->memory;
	int code;

	if ( gx_pattern_cache_lookup(pdc, pis, dev, select) )
	  return 0;
	/* We REALLY don't like the following cast.... */
	code = ensure_pattern_cache((gs_imager_state *)pis);
	if ( code < 0 )
	  return code;
	adev = gs_pattern_accum_device;
	gx_device_forward_fill_in_procs((gx_device_forward *)&adev);	/* (should only do once) */
	adev.instance = pinst;
	adev.bitmap_memory = mem;
	code = (*dev_proc(&adev, open_device))((gx_device *)&adev);
	if ( code < 0 )
	  return code;
	/*
	 * We want the copying operation to mark paths in the copy as shared,
	 * but we don't want the share marks to persist in the original
	 * after we free the copy, because this prevents the paths from
	 * being freed (except by restore or GC).  This requires a bit of
	 * care....
	 */
	{ gs_state *orig = pinst->saved;
	  gx_path *ppath = orig->path;
	  gx_clip_path *pcpath = orig->clip_path;
	  bool path_shared = ppath->shares_segments;
	  bool cpath_shared = pcpath->path.shares_segments;
	  bool list_shared = pcpath->shares_list;

	  /*
	   * The call of gs_gstate will set all the sharing flags, but that
	   * is OK, because orig points to an orphan gstate (no stack).
	   */
	  saved = gs_gstate(pinst->saved);
	  if ( saved == 0 )
	    return_error(gs_error_VMerror);
	  if ( saved->pattern_cache == 0 )
	    saved->pattern_cache = pis->pattern_cache;
	  gx_set_device_only(saved, (gx_device *)&adev);
	  code = (*pinst->template.PaintProc)(&pdc->mask.ccolor, saved);
	  gs_state_free(saved);
	  ppath->shares_segments = path_shared;
	  pcpath->path.shares_segments = cpath_shared;
	  pcpath->shares_list = list_shared;
	}
	if ( code < 0 )
	  { (*dev_proc(&adev, close_device))((gx_device *)&adev);
	    return code;
	  }
	/* We REALLY don't like the following cast.... */
	code = gx_pattern_cache_add_entry((gs_imager_state *)pis, &adev,
					  &ctile);
	if ( code >= 0 )
	  { if ( !gx_pattern_cache_lookup(pdc, pis, dev, select) )
	      { lprintf("Pattern cache lookup failed after insertion!\n");
	        code = gs_note_error(gs_error_Fatal);
	      }
	  }
	/* Free the bookkeeping structures, except for the bits and mask */
	/* iff they are still needed. */
	(*dev_proc(&adev, close_device))((gx_device *)&adev);
#ifdef DEBUG
	if ( gs_debug_c('B') )
	  { debug_dump_bitmap(adev.mask->base, adev.mask->raster,
			      adev.mask->height, "[B]Pattern mask");
	    if ( adev.bits )
	      debug_dump_bitmap(((gx_device_memory *)adev.target)->base,
				((gx_device_memory *)adev.target)->raster,
				adev.target->height, "[B]Pattern bits");
	  }
#endif
	return code;
}

/* Remap a Pattern color. */
cs_proc_remap_color(gx_remap_Pattern);	/* check the prototype */
int
gx_remap_Pattern(const gs_client_color *pc, const gs_color_space *pcs,
  gx_device_color *pdc, const gs_imager_state *pis, gx_device *dev,
  gs_color_select_t select)
{	gs_pattern_instance *pinst = pc->pattern;
	int code;

	pdc->mask.ccolor = *pc;
	if ( pinst == 0 )
	{	/* Null pattern */
		color_set_null_pattern(pdc);
		return 0;
	}
	if ( pinst->template.PaintType == 2 )	/* uncolored */
	{	code = (*pcs->params.pattern.base_space.type->remap_color)
		  (pc, (const gs_color_space *)&pcs->params.pattern.base_space, pdc, pis, dev, select);
		if ( code < 0 )
		  return code;
#define replace_dc_type(t, pt)\
  if ( pdc->type == t ) pdc->type = &pt
		replace_dc_type(gx_dc_type_pure, gx_dc_pure_masked);
		else
		  replace_dc_type(gx_dc_type_ht_binary, gx_dc_binary_masked);
		else
		  replace_dc_type(gx_dc_type_ht_colored, gx_dc_colored_masked);
		else
		  return_error(gs_error_unregistered);
#undef replace_dc_type
	}
	else
		color_set_null_pattern(pdc);
	pdc->mask.id = pinst->id;
	pdc->mask.m_tile = 0;
	return gx_pattern_load(pdc, pis, dev, select);
}
