/* Copyright (C) 1993, 1996, 1997 Aladdin Enterprises.  All rights reserved.
  
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

/* gxcht.c */
/* Color halftone rendering for Ghostscript imaging library */
#include "memory_.h"
#include "gx.h"
#include "gserrors.h"
#include "gsutil.h"		/* for id generation */
#include "gxfixed.h"
#include "gxmatrix.h"
#include "gxdevice.h"
#include "gxcmap.h"
#include "gxdcolor.h"
#include "gxistate.h"
#include "gzht.h"

/* Define the size of the tile buffer allocated on the stack. */
#define tile_longs_LARGE 256
#define tile_longs_SMALL 64
#if arch_small_memory
#  define tile_longs_allocated tile_longs_SMALL
#  define tile_longs tile_longs_SMALL
#else
#  define tile_longs_allocated tile_longs_LARGE
#  define tile_longs\
     (gs_if_debug_c('.') ? tile_longs_SMALL : tile_longs_LARGE)
#endif

/* Define the colored halftone device color type. */
private dev_color_proc_load(gx_dc_ht_colored_load);
private dev_color_proc_fill_rectangle(gx_dc_ht_colored_fill_rectangle);
private struct_proc_enum_ptrs(dc_ht_colored_enum_ptrs);
private struct_proc_reloc_ptrs(dc_ht_colored_reloc_ptrs);
const gx_device_color_procs
  gx_dc_procs_ht_colored =
    { gx_dc_ht_colored_load, gx_dc_ht_colored_fill_rectangle,
      gx_dc_default_fill_masked,
      dc_ht_colored_enum_ptrs, dc_ht_colored_reloc_ptrs
    };
#undef gx_dc_type_ht_colored
const gx_device_color_procs _ds *gx_dc_type_ht_colored = &gx_dc_procs_ht_colored;
#define gx_dc_type_ht_colored (&gx_dc_procs_ht_colored)
/* GC procedures */
#define cptr ((gx_device_color *)vptr)
private ENUM_PTRS_BEGIN(dc_ht_colored_enum_ptrs) return 0;
	ENUM_PTR(0, gx_device_color, colors.colored.c_ht);
ENUM_PTRS_END
private RELOC_PTRS_BEGIN(dc_ht_colored_reloc_ptrs) {
	RELOC_PTR(gx_device_color, colors.colored.c_ht);
} RELOC_PTRS_END
#undef cptr

/* Forward references. */
private void set_ht_colors(P6(gx_color_index [16], gx_strip_bitmap *[4],
  const gx_device_color *, gx_device *, gx_ht_cache *[4], int));
private void set_color_ht(P9(gx_strip_bitmap *, int, int, int, int, int, int,
  const gx_color_index [16], const gx_strip_bitmap *[4]));

/* Define a table for expanding 8x1 bits to 8x4. */
private const bits32 far_data expand_8x1_to_8x4[256] = {
#define x16(c)\
  c+0, c+1, c+0x10, c+0x11, c+0x100, c+0x101, c+0x110, c+0x111,\
  c+0x1000, c+0x1001, c+0x1010, c+0x1011, c+0x1100, c+0x1101, c+0x1110, c+0x1111
	x16(0x00000000), x16(0x00010000), x16(0x00100000), x16(0x00110000),
	x16(0x01000000), x16(0x01010000), x16(0x01100000), x16(0x01110000),
	x16(0x10000000), x16(0x10010000), x16(0x10100000), x16(0x10110000),
	x16(0x11000000), x16(0x11010000), x16(0x11100000), x16(0x11110000)
#undef x16
};

/* Prepare to use a colored halftone, by loading the default cache. */
private int
gx_dc_ht_colored_load(gx_device_color *pdevc, const gs_imager_state *pis,
  gx_device *ignore_dev, gs_color_select_t select)
{	gx_device_halftone *pdht = pis->dev_ht;
	gx_ht_order *porder = &pdht->components[0].corder;
	gx_ht_cache *pcache = pis->ht_cache;

	if ( pcache->order.bits != porder->bits )
	  gx_ht_init_cache(pcache, porder);
	/* Set the cache pointers in the default order. */
	pdht->order.cache = porder->cache = pcache;
	return 0;
}

/* Fill a rectangle with a colored halftone. */
/* Note that we treat this as "texture" for RasterOp. */
private int
gx_dc_ht_colored_fill_rectangle(const gx_device_color *pdevc, int x, int y,
  int w, int h, gx_device *dev, gs_logical_operation_t lop,
  const gx_rop_source_t *source)
{	ulong tbits[tile_longs_allocated];
	const uint tile_bytes = tile_longs * size_of(long);
	gx_strip_bitmap tiles;
	gx_rop_source_t no_source;
	const gx_device_halftone *pdht = pdevc->colors.colored.c_ht;
	int depth = dev->color_info.depth;
	int nplanes = dev->color_info.num_components;
	gx_color_index colors[16];	
	gx_strip_bitmap *sbits[4];
	gx_ht_cache *caches[4];
	int code = 0;
	int raster;
	uint size_x;
	int dw, dh;
	int lw = pdht->lcm_width, lh = pdht->lcm_height;

	if ( w <= 0 || h <= 0 )
	  return 0;
	/* Colored halftone patterns are unconditionally opaque. */
	lop &= ~lop_T_transparent;
	tiles.data = (byte *)tbits;
	if ( pdht->components == 0 )
	  caches[0] = caches[1] = caches[2] = caches[3] = pdht->order.cache;
	else
	{	gx_ht_order_component *pocs = pdht->components;
		caches[0] = pocs[pdht->color_indices[0]].corder.cache;
		caches[1] = pocs[pdht->color_indices[1]].corder.cache;
		caches[2] = pocs[pdht->color_indices[2]].corder.cache;
		caches[3] = pocs[pdht->color_indices[3]].corder.cache;
	}
	set_ht_colors(colors, sbits, pdevc, dev, caches, nplanes);
	/* If the LCM of the plane cell sizes is smaller than */
	/* the rectangle being filled, compute a single tile and */
	/* let tile_rectangle do the replication. */
	if ( (w > lw || h > lh) &&
	     (raster = bitmap_raster(lw * depth)) <= tile_bytes / lh
	   )
	  { /*
	     * The only reason we need to do fit_fill here is that if the
	     * device is a clipper, the caller might be counting on it to do
	     * all necessary clipping.  Actually, we should clip against the
	     * device's clipping box, not the default....
	     */
	    fit_fill(dev, x, y, w, h);
	    /* Check to make sure we still have a big rectangle. */
	    if ( w > lw || h > lh )
	      { tiles.raster = raster;
		tiles.rep_width = tiles.size.x = lw;
		tiles.rep_height = tiles.size.y = lh;
		tiles.id = gs_next_ids(1);
		tiles.rep_shift = tiles.shift = 0;
		/* See below for why we need to cast bits. */
		set_color_ht(&tiles, 0, 0, lw, lh,
			     depth, nplanes, colors,
			     (const gx_strip_bitmap **)sbits);
		if ( source == NULL && lop_no_S_is_T(lop) )
		  return (*dev_proc(dev, strip_tile_rectangle))(dev, &tiles,
				x, y, w, h,
				gx_no_color_index, gx_no_color_index,
				pdevc->phase.x, pdevc->phase.y);
		if ( source == NULL )
		  set_rop_no_source(source, no_source, dev);
		return (*dev_proc(dev, strip_copy_rop))(dev, source->sdata,
				source->sourcex, source->sraster, source->id,
				(source->use_scolors ? source->scolors : NULL),
				&tiles, NULL,
				x, y, w, h,
				pdevc->phase.x, pdevc->phase.y,
				rop3_know_S_0(lop));
	      }
	  }
	tiles.id = gx_no_bitmap_id;
	size_x = w * depth;
	raster = bitmap_raster(size_x);
	if ( raster > tile_bytes )
	  {	/*
		 * We can't even do an entire line at once.  See above for
		 * why we do the X equivalent of fit_fill here.
		 */
		if ( x < 0 )
		  w += x, x = 0;
		if ( x > dev->width - w )
		  w = dev->width - x;
		if ( w <= 0 )
		  return 0;
		size_x = w * depth;
		raster = bitmap_raster(size_x);
		if ( raster > tile_bytes )
		  { dw = tile_bytes * 8 / depth;
		    size_x = dw * depth;
		    raster = bitmap_raster(size_x);
		    dh = 1;
		    goto fit;
		  }
	}
	/* Do as many lines as will fit. */
	dw = w;
	dh = tile_bytes / raster;
	if ( dh > h )
	  dh = h;
fit:	/* Now the tile will definitely fit. */
	tiles.raster = raster;
	tiles.rep_width = tiles.size.x = size_x / depth;
	tiles.rep_shift = tiles.shift = 0;
	while ( w )
	{	int cy = y, ch = dh, left = h;
		tiles.rep_height = tiles.size.y = ch;
		for ( ; ; )
		{	/* The cast in the following statement is bogus, */
			/* but some compilers won't accept an array type, */
			/* and won't accept the ** type without a cast. */
			set_color_ht(&tiles, x, cy, dw, ch,
				     depth, nplanes, colors,
				     (const gx_strip_bitmap **)sbits);
			if ( lop_no_S_is_T(lop) )
			  { code = (*dev_proc(dev, copy_color))(dev,
					tiles.data, 0, raster,
					gx_no_bitmap_id, x, cy, dw, ch);
			  }
			else
			  { gs_logical_operation_t lop_st = rop3_swap_S_T(lop);
			    code = (*dev_proc(dev, strip_copy_rop))(dev,
					tiles.data, 0, raster,
					gx_no_bitmap_id,
					NULL,
					NULL,
					pdevc->colors.binary.color /*arb*/,
					x, cy, dw, ch, 0, 0,
					rop3_know_T_0(lop_st));
			  }
			if ( code < 0 )
				return code;
			if ( !(left -= ch) )
				break;
			cy += ch;
			if ( ch > left )
				tiles.rep_height = tiles.size.y = ch = left;
		}
		if ( !(w -= dw) )
		  break;
		x += dw;
		if ( dw > w)
		  dw = w, tiles.rep_width = tiles.size.x = size_x / depth;
	}
	return code;
}

/*
 * We construct color halftone tiles out of 3 or 4 "planes".
 * Each plane specifies halftoning for one component (R/G/B or C/M/Y/K).
 */

/* Set up the colors and the individual plane halftone bitmaps. */
private void
set_ht_colors(gx_color_index colors[16], gx_strip_bitmap *sbits[4],
  const gx_device_color *pdc, gx_device *dev, gx_ht_cache *caches[4],
  int nplanes)
{	gx_color_value v[2][4];
	static const ulong no_bitmap_data[] =
	 { 0, 0, 0, 0, 0, 0, 0, 0 };
	static gx_strip_bitmap no_bitmap =
	 { 0, sizeof(ulong), { sizeof(ulong) * 8, countof(no_bitmap_data) },
	   gx_no_bitmap_id, 1, 1, 0, 0
	 };
	gx_color_value max_color = dev->color_info.dither_colors - 1;
	int plane_mask = 0;

	no_bitmap.data = (byte *)no_bitmap_data;	/* actually const */
#define cb(i) pdc->colors.colored.c_base[i]
#define cl(i) pdc->colors.colored.c_level[i]
#define set_plane_color(i)\
{	uint q = cb(i);\
	uint r = cl(i);\
	v[0][i] = fractional_color(q, max_color);\
	if ( r == 0 )\
	  v[1][i] = v[0][i], sbits[i] = &no_bitmap;\
	else\
	  v[1][i] = fractional_color(q+1, max_color),\
	  sbits[i] = &gx_render_ht(caches[i], r)->tiles,\
	  plane_mask |= 1 << (i);\
}
#define map8(m) m(0), m(1), m(2), m(3), m(4), m(5), m(6), m(7)
	set_plane_color(0);
	set_plane_color(1);
	set_plane_color(2);
	if ( nplanes == 3 )
	  {
#define map_rgb(i)\
  colors[i] = map1rgb(v[(i) & 1][0], v[((i) & 2) >> 1][1], v[(i) >> 2][2])
		gx_color_value alpha = pdc->colors.colored.alpha;
		if ( alpha == gx_max_color_value )
		{	
#ifdef DEBUG
#  define map1rgb(r, g, b) gx_map_rgb_color(dev, r, g, b)
#else
			dev_proc_map_rgb_color((*map)) =
			  dev_proc(dev, map_rgb_color);
#  define map1rgb(r, g, b) (*map)(dev, r, g, b)
#endif
			map8(map_rgb);
#undef map1rgb
		}
		else
		{
#ifdef DEBUG
#  define map1rgb(r, g, b) gx_map_rgb_alpha_color(dev, r, g, b, alpha)
#else
			dev_proc_map_rgb_alpha_color((*map)) =
			  dev_proc(dev, map_rgb_alpha_color);
#  define map1rgb(r, g, b) (*map)(dev, r, g, b, alpha)
#endif
			map8(map_rgb);
#undef map1rgb
		}
	  }
	else
	  {
#define map_cmyk(i)\
  colors[i] = map1cmyk(v[(i) & 1][0], v[((i) & 2) >> 1][1],\
		       v[((i) & 4) >> 2][2], v[(i) >> 3][3])
#ifdef DEBUG
#  define map1cmyk(r, g, b, w) gx_map_cmyk_color(dev, r, g, b, w)
#else
		dev_proc_map_cmyk_color((*map)) =
		  dev_proc(dev, map_cmyk_color);
#  define map1cmyk(r, g, b, w) (*map)(dev, r, g, b, w)
#endif
		set_plane_color(3);
		/*
		 * For CMYK output, especially if the input was RGB, it's
		 * common for one or more of the components to be zero.
		 * Each zero component can cut the cost of color mapping in
		 * half, so it's worth doing a little checking here.
		 */
#define m1(i) map_cmyk(i)
#define m2(i,d) m1(i), m1(i+d)
#define m4(i,d1,d2) m2(i, d1), m2(i + d2, d1)
		switch ( plane_mask )
		  {
		  case 15: m4(8, 1, 2); m4(12, 1, 2);
		  case  7: m4(4, 1, 2);
c3:		  case  3: m2(2, 1);
c1:		  case  1: m1(1); break;
		  case 14: m4(8, 2, 4);
		  case  6: m2(4, 2);
c2:		  case  2: m1(2); break;
		  case 13: m4(8, 1, 4);
		  case  5: m2(4, 1); goto c1;
		  case 12: m2(8, 4);
		  case  4: m1(4); break;
		  case 11: m4(8, 1, 2); goto c3;
		  case 10: m2(8, 2); goto c2;
		  case  9: m2(8, 1); goto c1;
		  case  8: m1(8); break;
		  case  0: ;
		  }
		m1(0);
#undef m1
#undef m2
#undef m4
#undef map1cmyk
	  }
#undef map8
#undef set_plane_color
#undef cb
#undef cl
}

/* Render the combined halftone. */
private void
set_color_ht(
	gx_strip_bitmap *ctiles,  /* the output tile; data, raster, size are set */
	int px,			/* the initial phase of the output tile */
	int py,
	int w,			/* how much of the tile to set */
	int h,
	int depth,		/* depth of tile (4, 8, 16, 24, 32) */
	int nplanes,		/* # of source planes, 3 or 4 */
	const gx_color_index colors[16], /* the actual colors for the tile, */
				/* actually [1 << nplanes] */
	const gx_strip_bitmap *sbits[4]	/* the bitmaps for the planes, */
				/* actually [nplanes] */
)
{	/* Note that the planes are specified in the order RGB or CMYK, but */
	/* the indices used for the internal colors array are BGR or KYMC. */

	int x, y;
	struct tile_cursor_s {
		int tile_shift;		/* X shift per copy of tile */
		int xoffset;
		int xshift;
		uint xbytes;
		int xbits;
		const byte *row;
		const byte *tdata;
		uint raster;
		const byte *data;
		int bit_shift;
	} cursor[4];
	int dbytes = depth >> 3;
	uint dest_raster = ctiles->raster;
	byte *dest_row =
	  ctiles->data + dest_raster * (h - 1) + (w * depth) / 8;
	int endx = w + px;

	if_debug6('h',
		  "[h]color_ht: x=%d y=%d w=%d h=%d nplanes=%d depth=%d\n",
		  px, py, w, h, nplanes, depth);

	/* Do one-time cursor initialization. */
	{	int lasty = h - 1 + py;
#define set_start(i, c, btile)\
{ int tw = btile->size.x;\
  int bx = ((c.tile_shift = btile->shift) == 0 ? endx :\
	    endx + lasty / btile->size.y * c.tile_shift) % tw;\
  int by = lasty % btile->size.y;\
  c.xoffset = bx >> 3;\
  c.xshift = 8 - (bx & 7);\
  c.xbytes = (tw - 1) >> 3;\
  c.xbits = ((tw - 1) & 7) + 1;\
  c.tdata = btile->data;\
  c.raster = btile->raster;\
  c.row = c.tdata + by * c.raster;\
  if_debug5('h', "[h]plane %d: size=%d,%d bx=%d by=%d\n",\
	    i, tw, btile->size.y, bx, by);\
}
		set_start(0, cursor[0], sbits[0]);
		set_start(1, cursor[1], sbits[1]);
		set_start(2, cursor[2], sbits[2]);
		if ( nplanes == 4 )
			set_start(3, cursor[3], sbits[3]);
#undef set_start
	}

	/* Now compute the actual tile. */
	for ( y = h; ; dest_row -= dest_raster )
	{	byte *dest = dest_row;
#define set_row(c)\
  {	c.data = c.row + c.xoffset;\
	c.bit_shift = c.xshift;\
  }
		set_row(cursor[0]);
		set_row(cursor[1]);
		set_row(cursor[2]);
		if ( nplanes == 4 )
		{	set_row(cursor[3]);
		}
#undef set_row
		--y;
		for ( x = w; x > 0; )
		{	bits32 indices;
			int nx, i;
			register uint bits;
/* Get the next byte's worth of bits.  Note that there may be */
/* excess bits set beyond the 8th. */
#define next_bits(c)\
{	if ( c.data > c.row )\
	{	bits = ((c.data[-1] << 8) | *c.data) >> c.bit_shift;\
		c.data--;\
	}\
	else\
	{	bits = *c.data >> c.bit_shift;\
		c.data += c.xbytes;\
		if ( (c.bit_shift -= c.xbits) < 0 )\
		{	bits |= *c.data << -c.bit_shift;\
			c.bit_shift += 8;\
		}\
		else\
		{	bits |= ((c.data[-1] << 8) | *c.data) >> c.bit_shift;\
			c.data--;\
		}\
	}\
}
			if ( nplanes == 4 )
			{	next_bits(cursor[3]);
				indices = expand_8x1_to_8x4[bits & 0xff] << 1;
			}
			else
				indices = 0;
			next_bits(cursor[2]);
			indices = (indices | expand_8x1_to_8x4[bits & 0xff]) << 1;
			next_bits(cursor[1]);
			indices = (indices | expand_8x1_to_8x4[bits & 0xff]) << 1;
			next_bits(cursor[0]);
			indices |= expand_8x1_to_8x4[bits & 0xff];
#undef next_bits
			nx = min(x, 8);		/* 1 <= nx <= 8 */
			x -= nx;
			switch ( dbytes )
			{
			case 0:			/* 4 */
				i = nx;
				if ( (x + nx) & 1 )
				  { /* First pixel is even nibble. */
				    *dest = (*dest & 0xf) +
				      ((byte)colors[(uint)indices & 0xf] << 4);
				    indices >>= 4;
				    --i;
				  }
				/* Now 0 <= i <= 8. */
				for ( ; (i -= 2) >= 0; indices >>= 8 )
				  *--dest =
				    (byte)colors[(uint)indices & 0xf] +
				    ((byte)colors[((uint)indices >> 4) & 0xf]
				     << 4);
				/* Check for final odd nibble. */
				if ( i & 1 )
				  *--dest = (byte)colors[(uint)indices & 0xf];
				break;
			case 4:			/* 32 */
				for ( i = nx; --i >= 0; indices >>= 4 )
			  {	gx_color_index tcolor =
					colors[(uint)indices & 0xf];
				dest -= 4;
				dest[3] = (byte)tcolor;
				dest[2] = (byte)(tcolor >> 8);
				tcolor >>= 16;
				dest[1] = (byte)tcolor;
				dest[0] = (byte)((uint)tcolor >> 8);
			  }
				break;
			case 3:			/* 24 */
				for ( i = nx; --i >= 0; indices >>= 4 )
			  {	gx_color_index tcolor =
					colors[(uint)indices & 0xf];
				dest -= 3;
				dest[2] = (byte)tcolor;
				dest[1] = (byte)((uint)tcolor >> 8);
				tcolor >>= 16;
				dest[0] = (byte)((uint)tcolor >> 8);
			  }
				break;
			case 2:			/* 16 */
				for ( i = nx; --i >= 0; indices >>= 4 )
			  {	uint tcolor =
					(uint)colors[(uint)indices & 0xf];
				dest -= 2;
				dest[1] = (byte)tcolor;
				dest[0] = (byte)(tcolor >> 8);
			  }
				break;
			case 1:			/* 8 */
				for ( i = nx; --i >= 0; indices >>= 4 )
					*--dest = (byte)colors[(uint)indices & 0xf];
				break;
			}
		}
		if ( y == 0 )
			break;

#define step_row(c, i)\
  if ( c.row > c.tdata )\
    c.row -= c.raster;\
  else	/* wrap around to end of tile, taking shift into account */\
    { c.row += c.raster * (sbits[i]->size.y - 1);\
      if ( c.tile_shift )\
	{ if ( (c.xshift += c.tile_shift) >= 8 )\
	    { if ( (c.xoffset -= c.xshift >> 3) < 0 )\
		{ /* wrap around in X */\
		  int bx = c.xoffset + sbits[i]->size.x;\
		  c.xoffset = bx >> 3;\
		  c.xshift = 8 - (bx & 7);\
		}\
	      else\
		c.xshift &= 7;\
	    }\
	}\
    }

		step_row(cursor[0], 0);
		step_row(cursor[1], 1);
		step_row(cursor[2], 2);
		if ( nplanes == 4)
		  step_row(cursor[3], 3);
#undef step_row
	}
}
