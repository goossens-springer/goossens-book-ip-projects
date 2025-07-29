/* Copyright (C) 1996, 1997 Aladdin Enterprises.  All rights reserved.
  
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

/* gximage5.c */
/* Interpolated image procedures */
#include "gx.h"
#include "math_.h"
#include "memory_.h"
#include "gpcheck.h"
#include "gserrors.h"
#include "gxfixed.h"
#include "gxfrac.h"
#include "gxarith.h"
#include "gxmatrix.h"
#include "gsccolor.h"
#include "gspaint.h"
#include "gxdevice.h"
#include "gxcmap.h"
#include "gxdcolor.h"
#include "gxistate.h"
#include "gzpath.h"
#include "gxdevmem.h"
#include "gxcpath.h"
#include "gximage.h"

/* ------ Strategy procedure ------ */

/* If we're interpolating, use special logic. */
private irender_proc(image_render_interpolate);
private irender_proc_t
image_strategy_interpolate(gx_image_enum *penum)
{	const gs_imager_state *pis = penum->pis;
	gs_memory_t *mem = penum->memory;
	stream_IScale_state iss;
	stream_IScale_state *pss;
	byte *line;
	const gs_color_space *pcs = penum->pcs;
	gs_point dst_xy;

	if ( !penum->interpolate )
	  return 0;
	if ( penum->posture != image_portrait || penum->masked
#ifdef DPNEXT
	     || penum->has_alpha
#endif
	   )
	  {	/* We can't handle these cases yet.  Punt. */
		penum->interpolate = false;
		return 0;
	  }
	iss.memory = mem;
	/* Non-ANSI compilers require the following casts: */
	gs_distance_transform((float)penum->rect.w, (float)penum->rect.h,
			      &penum->matrix, &dst_xy);
	if ( penum->bps <= 8 && penum->device_color )
	  iss.BitsPerComponentIn = 8,
	  iss.MaxValueIn = 0xff;
	else
	  iss.BitsPerComponentIn = sizeof(frac) * 8,
	  iss.MaxValueIn = frac_1;
	iss.BitsPerComponentOut = sizeof(frac) * 8;
	iss.MaxValueOut = frac_1;
	iss.WidthOut = (int)ceil(fabs(dst_xy.x));
	iss.HeightOut = (int)ceil(fabs(dst_xy.y));
	iss.WidthIn = penum->rect.w;
	iss.HeightIn = penum->rect.h;
	iss.Colors = cs_concrete_space(pcs, pis)->type->num_components;
	/* Allocate a buffer for one source/destination line. */
	{ uint in_size =
	    iss.WidthIn * iss.Colors * (iss.BitsPerComponentIn / 8);
	  uint out_size =
	    iss.WidthOut * iss.Colors *
	      max(iss.BitsPerComponentOut / 8, sizeof(gx_color_index));
	  line = gs_alloc_bytes(mem, max(in_size, out_size),
				"image scale src line");
	}
	pss = gs_alloc_struct(mem, stream_IScale_state,
			      &st_IScale_state, "image scale state");
	if ( line == 0 || pss == 0 ||
	     (*pss = iss,
	      (*s_IScale_template.init)((stream_state *)pss) < 0)
	   )
	  { gs_free_object(mem, pss, "image scale state");
	    gs_free_object(mem, line, "image scale src line");
	    /* Try again without interpolation. */
	    penum->interpolate = false;
	    return 0;
	  }
	penum->line = line;
	penum->scaler = pss;
	penum->line_xy = 0;
	penum->xyi.x = fixed2int_pixround(dda_current(penum->dda.pixel0.x));
	penum->xyi.y = fixed2int_pixround(dda_current(penum->dda.pixel0.y));
	if_debug0('b', "[b]render=interpolate\n");
	return image_render_interpolate;
}

void
gs_gximage5_init(gs_memory_t *mem)
{	image_strategies.interpolate = image_strategy_interpolate;
}

/* ------ Rendering for interpolated images ------ */

private int
image_render_interpolate(gx_image_enum *penum, const byte *buffer,
  int data_x, uint iw, int h, gx_device *dev)
{	stream_IScale_state *pss = penum->scaler;
	const gs_imager_state *pis = penum->pis;
	const gs_color_space *pcs = penum->pcs;
	gs_logical_operation_t lop = penum->log_op;
	int c = pss->Colors;
	stream_cursor_read r;
	stream_cursor_write w;

	if ( h != 0 )
	  {	/* Convert the unpacked data to concrete values in */
		/* the source buffer. */
		uint row_size = pss->WidthIn * c * pss->sizeofPixelIn;
		const byte *bdata = buffer + data_x * c * pss->sizeofPixelIn;

		if ( pss->sizeofPixelIn == 1 )
		  {	/* Easy case: 8-bit device color values. */
			r.ptr = bdata - 1;
		  }
		else
		  {	/* Messy case: concretize each sample. */
			int bps = penum->bps;
			int dc = penum->spp;
			const byte *pdata = bdata;
			frac *psrc = (frac *)penum->line;
			gs_client_color cc;
			int i;

			r.ptr = (byte *)psrc - 1;
			for ( i = 0; i < pss->WidthIn; i++, psrc += c )
			  {	int j;
				if ( bps <= 8 )
				  for ( j = 0; j < dc; ++pdata, ++j  )
				    { decode_sample(*pdata, cc, j);
				    }
				else		/* bps == 12 */
				  for ( j = 0; j < dc; pdata += sizeof(frac), ++j  )
				    { decode_frac(*(const frac *)pdata, cc, j);
				    }
				(*pcs->type->concretize_color)(&cc, pcs, psrc,
							       pis);
			  }
		  }
		r.limit = r.ptr + row_size;
	  }
	else			/* h == 0 */
	  r.ptr = 0, r.limit = 0;

	/*
	 * Process input and/or collect output.
	 * By construction, the pixels are 1-for-1 with the device,
	 * but the Y coordinate might be inverted.
	 */

	{	int xo = penum->xyi.x;
		int yo = penum->xyi.y;
		int width = pss->WidthOut;
		int dy;
		const gs_color_space *pconcs = cs_concrete_space(pcs, pis);
		int bpp = dev->color_info.depth;
		uint raster = bitmap_raster(width * bpp);

		if ( penum->matrix.yy > 0 )
		  dy = 1;
		else
		  dy = -1, yo--;
		for ( ; ; )
		{	int ry = yo + penum->line_xy * dy;
			int x;
			const frac *psrc;
			gx_device_color devc;
			int code;
			declare_line_accum(penum->line, bpp, xo);
		
			w.limit = penum->line + width * c *
			  sizeof(gx_color_index) - 1;
			w.ptr = w.limit - width * c *
			  (sizeof(gx_color_index) - pss->sizeofPixelOut);
			psrc = (const frac *)(w.ptr + 1);
			code = (*s_IScale_template.process)
			  ((stream_state *)pss, &r, &w, false);
			if ( code < 0 && code != EOFC )
			  return_error(gs_error_ioerror);
			if ( w.ptr == w.limit )
			  { for ( x = xo; x < xo + width; x++, psrc += c )
			      { (*pconcs->type->remap_concrete_color)
				  (psrc, &devc, pis, dev,
				   gs_color_select_source);
				if ( color_is_pure(&devc) )
				  { /* Just pack colors into a scan line. */
				    gx_color_index color = devc.colors.pure;
				    line_accum(color, bpp);
				  }
				else
				  { if ( bpp < 8 )
				      { if ( (l_shift -= bpp) < 0 )
					  *l_dst++ = (byte)l_bits, l_bits = 0,
					  l_shift += 8;
				      }
				  else
				    l_dst += bpp >> 3;
				    line_accum_copy(dev, penum->line, bpp,
						    xo, x, raster, ry);
				    code = gx_fill_rectangle_device_rop(x, ry,
						1, 1, &devc, dev, lop);
				    if ( code < 0 )
				      return code;
				    l_xprev = x + 1;
				  }
			      }
			    line_accum_copy(dev, penum->line, bpp,
					    xo, x, raster, ry);
			    penum->line_xy++;
			    continue;
			  }
			if ( r.ptr == r.limit || code == EOFC )
			  break;
		}
	}

	return (h == 0 ? 0 : 1);
}
