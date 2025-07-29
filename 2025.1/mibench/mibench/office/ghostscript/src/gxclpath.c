/* Copyright (C) 1995, 1996, 1997 Aladdin Enterprises.  All rights reserved.
  
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

/* gxclpath.c */
/* Higher-level path operations for band lists */
#include "math_.h"
#include "memory_.h"
#include "gx.h"
#include "gpcheck.h"
#include "gserrors.h"
#include "gxdevice.h"
#include "gxdevmem.h"			/* must precede gxcldev.h */
#include "gxcldev.h"
#include "gxclpath.h"
#include "gxcolor2.h"
#include "gxpaint.h"			/* for gx_fill/stroke_params */
#include "gzpath.h"
#include "gzcpath.h"

#define cdev cwdev

/* Statistics */
#ifdef DEBUG
ulong cmd_diffs[5];
#endif

/* Forward declarations */
private int cmd_put_path(P8(gx_device_clist_writer *cldev,
  gx_clist_state *pcls, const gx_path *ppath, fixed ymin, fixed ymax, byte op,
  bool implicit_close, segment_notes keep_notes));
/* Driver procedures */
private dev_proc_fill_path(clist_fill_path);
private dev_proc_stroke_path(clist_stroke_path);

/* ------ Define the extensions to the command set ------ */

#ifdef DEBUG
private const char *cmd_misc2_op_names[16] = { cmd_misc2_op_name_strings };
private const char *cmd_segment_op_names[16] = { cmd_segment_op_name_strings };
private const char *cmd_path_op_names[16] = { cmd_path_op_name_strings };
#endif

/* Initialize the extensions to the command name table. */
void
gs_clpath_init(gs_memory_t *mem)
{
#ifdef DEBUG
	cmd_op_names[cmd_op_misc2 >> 4] = "(misc2)";
	cmd_sub_op_names[cmd_op_misc2 >> 4] = cmd_misc2_op_names;
	cmd_op_names[cmd_op_segment >> 4] = "(segment)";
	cmd_sub_op_names[cmd_op_segment >> 4] = cmd_segment_op_names;
	cmd_op_names[cmd_op_path >> 4] = "(path)";
	cmd_sub_op_names[cmd_op_path >> 4] = cmd_path_op_names;
#endif
	gs_clist_device_procs.fill_path = clist_fill_path;
	gs_clist_device_procs.stroke_path = clist_stroke_path;
	cmd_opvar_disable_clip = cmd_opv_disable_clip;
	cmd_opvar_enable_clip = cmd_opv_enable_clip;
}

/* ------ Utilities ------ */

/* Write out the color for filling, stroking, or masking. */
/* We should be able to share this with clist_tile_rectangle, */
/* but I don't see how to do it without adding a level of procedure. */
int
cmd_put_drawing_color(gx_device_clist_writer *cldev, gx_clist_state *pcls,
  const gx_drawing_color *pdcolor)
{	const gx_strip_bitmap *tile;
	gx_color_index color0, color1;
	ulong offset_temp;

	if ( gx_dc_is_pure(pdcolor) )
	  { gx_color_index color1 = gx_dc_pure_color(pdcolor);
	    if ( color1 != pcls->colors[1] )
	      { int code = cmd_set_color1(cldev, pcls, color1);
	        if ( code < 0 )
		  return code;
	      }
#ifdef FUTURE
	    return cmd_dc_type_pure;
#else
	    return 0;
#endif
	  }
#ifdef FUTURE
	/* Any non-pure color will require the phase. */
	{ int px = pdcolor->phase.x, py = pdcolor->phase.y;
	  if ( px != pcls->tile_phase.x || py != pcls->tile_phase.y )
	    {	int code = cmd_set_tile_phase(cldev, pcls, px, py);
		if ( code < 0 )
		  return code;
	    }
	}
#endif
	if ( gx_dc_is_binary_halftone(pdcolor) )
	  { tile = gx_dc_binary_tile(pdcolor);
	    color0 = gx_dc_binary_color0(pdcolor);
	    color1 = gx_dc_binary_color1(pdcolor);
	    /* Set up tile and colors as for clist_tile_rectangle. */
	    if ( !cls_has_tile_id(cldev, pcls, tile->id, offset_temp) )
	      { int depth =
		  (color1 == gx_no_color_index &&
		   color0 == gx_no_color_index ?
		   cldev->color_info.depth : 1);
		if ( tile->id == gx_no_bitmap_id ||
		     clist_change_tile(cldev, pcls, tile, depth) < 0
		   )
		  return_error(-1);		/* can't cache tile */
	      }
	    if ( color1 != pcls->tile_colors[1] ||
		 color0 != pcls->tile_colors[0]
	       )
	      { int code = cmd_set_tile_colors(cldev, pcls, color0, color1);
		if ( code < 0 )
		  return code;
	      }
#ifdef FUTURE
	    return cmd_dc_type_ht;
#endif
	  }
#ifdef FUTURE
	else if ( gx_dc_is_colored_halftone(pdcolor) ) 
	  { const gx_device_halftone *pdht = pdcolor->colors.colored.c_ht;
	    int num_comp = pdht->num_comp;
	    byte buf[4 + 4 * cmd_max_intsize(sizeof(pdcolor->colors.colored.c_level[0]))];
	    byte *bp = buf;
	    int i;
	    uint short_bases = 0;
	    ulong bases = 0;
	    byte *dp;

	    /****** HOW TO TELL IF COLOR IS ALREADY SET? ******/
	    if ( pdht->id != cldev->device_halftone_id )
	      { int code = cmd_put_halftone(cldev, pdht, pdht->type);
	        if ( code < 0 )
		  return code;
		cldev->device_halftone_id = pdht->id;
	      }
	    for ( i = 0; i < num_comp; ++i )
	      { uint base = pdcolor->colors.colored.c_base[i];
	        if ( base > 31 )
		  return_error(gs_error_rangecheck);
		bases |= base << ((3 - i) * 5);
		short_bases |= base << (3 - i);
	      }
	    if ( bases & 0xf7bde )
	      { /* Some base value requires more than 1 bit. */
		*bp++ = 0x10 + (byte)(bases >> 16);
		*bp++ = (byte)(bases >> 8);
		*bp++ = (byte)bases;
	      }
	    else
	      { /* The bases all fit in 1 bit each. */
		*bp++ = 0x00 + (byte)short_bases;
	      }
	    for ( i = 0; i < num_comp; ++i )
	      bp = cmd_put_w((uint)pdcolor->colors.colored.c_level[i], bp);
	    /****** IGNORE alpha ******/
	    set_cmd_put_op(dp, cldev, pcls, cmd_opv_set_color, bp - buf + 1);
	    memcpy(dp + 1, buf, bp - buf);
	    return cmd_dc_type_color;
	  }
#endif
	else
	  return_error(-1);
#ifndef FUTURE
	{ int px = pdcolor->phase.x, py = pdcolor->phase.y;
	  if ( px != pcls->tile_phase.x || py != pcls->tile_phase.y )
	    {	int code = cmd_set_tile_phase(cldev, pcls, px, py);
		if ( code < 0 )
		  return code;
	    }
	}
#endif
	return 0;
}

/* Clear (a) specific 'known' flag(s) for all bands. */
/* We must do this whenever the value of a 'known' parameter changes. */
void
cmd_clear_known(gx_device_clist_writer *cldev, uint known)
{	ushort unknown = ~known;
	gx_clist_state *pcls = cldev->states;
	int i;

	for ( i = cldev->nbands; --i >= 0; ++pcls )
	  pcls->known &= unknown;
}

/* Check whether we need to change the clipping path in the device. */
bool
cmd_check_clip_path(gx_device_clist_writer *cldev, const gx_clip_path *pcpath)
{	if ( pcpath == NULL )
	  return false;
	/* The clip path might have moved in memory, so even if the */
	/* ids match, update the pointer. */
	cldev->clip_path = pcpath;
	if ( pcpath->id == cldev->clip_path_id )
	  return false;
	cldev->clip_path_id = pcpath->id;
	return true;
}

/* Construct the parameters for writing out a matrix. */
/* We need a buffer of at least 1 + 6 * sizeof(float) bytes. */
byte *
cmd_for_matrix(byte *cbuf, const gs_matrix *pmat)
{	    byte *cp = cbuf + 1;
	    byte b = 0;
	    float coeffs[6];
	    int i;

	    coeffs[0] = pmat->xx;
	    coeffs[1] = pmat->xy;
	    coeffs[2] = pmat->yx;
	    coeffs[3] = pmat->yy;
	    coeffs[4] = pmat->tx;
	    coeffs[5] = pmat->ty;
	    for ( i = 0; i < 4; i += 2 )
	      { float u = coeffs[i], v = coeffs[i^3];
		b <<= 2;
		if ( u != 0 || v != 0 )
		  { memcpy(cp, &u, sizeof(float));
		    cp += sizeof(float);
		    if ( v == u )
		      b += 1;
		    else if ( v == -u )
		      b += 2;
		    else
		      { b += 3;
			memcpy(cp, &v, sizeof(float));
			cp += sizeof(float);
		      }
		  }
	      }
	    for ( ; i < 6; ++i )
	      { float v = coeffs[i];
		b <<= 1;
		if ( v != 0 )
		  { ++b;
		    memcpy(cp, &v, sizeof(float));
		    cp += sizeof(float);
		  }
	      }
	    cbuf[0] = b << 2;
	    return cp;
}

/* Write out values of any unknown parameters. */
int
cmd_write_unknown(gx_device_clist_writer *cldev, gx_clist_state *pcls,
  uint must_know)
{	ushort unknown = ~pcls->known & must_know;

	if ( unknown & flatness_known )
	  { byte *dp;
	    set_cmd_put_op(dp, cldev, pcls, cmd_opv_set_flatness,
			   1 + sizeof(float));
	    memcpy(dp + 1, &cldev->imager_state.flatness, sizeof(float));
	    pcls->known |= flatness_known;
	  }
	if ( unknown & fill_adjust_known )
	  { byte *dp;
	    set_cmd_put_op(dp, cldev, pcls, cmd_opv_set_fill_adjust,
			   1 + sizeof(fixed) * 2);
	    memcpy(dp + 1, &cldev->imager_state.fill_adjust.x, sizeof(fixed));
	    memcpy(dp + 1 + sizeof(fixed), &cldev->imager_state.fill_adjust.y, sizeof(fixed));
	    pcls->known |= fill_adjust_known;
	  }
	if ( unknown & ctm_known )
	  { byte cbuf[1 + 6 * sizeof(float)];
	    uint len =
	      cmd_for_matrix(cbuf,
			     (const gs_matrix *)&cldev->imager_state.ctm) -
			       cbuf;
	    byte *dp;

	    set_cmd_put_op(dp, cldev, pcls, cmd_opv_set_ctm, len + 1);
	    memcpy(dp + 1, cbuf, len);
	    pcls->known |= ctm_known;
	  }
	if ( unknown & line_width_known )
	  { byte *dp;
	    float width =
	      gx_current_line_width(&cldev->imager_state.line_params);

	    set_cmd_put_op(dp, cldev, pcls, cmd_opv_set_line_width,
			   1 + sizeof(width));
	    memcpy(dp + 1, &width, sizeof(width));
	    pcls->known |= line_width_known;
	  }
	if ( unknown & miter_limit_known )
	  { byte *dp;
	    set_cmd_put_op(dp, cldev, pcls, cmd_opv_set_miter_limit,
			   1 + sizeof(float));
	    memcpy(dp + 1, &cldev->imager_state.line_params.miter_limit, sizeof(float));
	    pcls->known |= miter_limit_known;
	  }
	if ( unknown & misc0_known )
	  { byte *dp;
	    set_cmd_put_op(dp, cldev, pcls, cmd_opv_set_misc2, 2);
	    dp[1] = cmd_set_misc2_cap_join +
	      (cldev->imager_state.line_params.cap << 3) +
	      cldev->imager_state.line_params.join;
	    pcls->known |= misc0_known;
	  }
	if ( unknown & misc1_known )
	  { byte *dp;
	    set_cmd_put_op(dp, cldev, pcls, cmd_opv_set_misc2, 2);
	    dp[1] = cmd_set_misc2_ac_op_sa +
	      (cldev->imager_state.accurate_curves ? 4 : 0) +
	      (cldev->imager_state.overprint ? 2 : 0) +
	      (cldev->imager_state.stroke_adjust ? 1 : 0);
	    pcls->known |= misc1_known;
	  }
	if ( unknown & dash_known )
	  { byte *dp;
	    int n = cldev->imager_state.line_params.dash.pattern_size;

	    set_cmd_put_op(dp, cldev, pcls, cmd_opv_set_dash,
			   2 + (n + 2) * sizeof(float));
	    dp[1] = n + (cldev->imager_state.line_params.dash.adapt ? 0x80 : 0) +
	      (cldev->imager_state.line_params.dot_length_absolute ? 0x40 : 0);
	    memcpy(dp + 2, &cldev->imager_state.line_params.dot_length,
		   sizeof(float));
	    memcpy(dp + 2 + sizeof(float),
		   &cldev->imager_state.line_params.dash.offset,
		   sizeof(float));
	    if ( n != 0 )
	      memcpy(dp + 2 + sizeof(float) * 2,
		     cldev->imager_state.line_params.dash.pattern,
		     n * sizeof(float));
	    pcls->known |= dash_known;
	  }
	if ( unknown & clip_path_known )
	  { /* We can write out the clipping path either as rectangles */
	    /* or as a real (filled) path. */
	    const gx_clip_path *pcpath = cldev->clip_path;
	    int band_height = cldev->page_band_height;
	    int ymin = (pcls - cldev->states) * band_height;
	    int ymax = min(ymin + band_height, cldev->height);
	    gs_fixed_rect box;
	    byte *dp;

	    set_cmd_put_op(dp, cldev, pcls, cmd_opv_begin_clip, 1);
	    if ( pcpath->segments_valid )
	      { int code;

	        if ( gx_path_is_rectangle(&pcpath->path, &box) &&
		     fixed_is_int(box.p.x | box.p.y | box.q.x | box.q.y)
		   )
		  { /* Write the path as a rectangle. */
		    code = cmd_write_rect_cmd(cldev, pcls, cmd_op_fill_rect,
					      fixed2int_var(box.p.x),
					      fixed2int_var(box.p.y),
					      fixed2int(box.q.x - box.p.x),
					      fixed2int(box.q.y - box.p.y));
		  }
	        else
		  { /* Write the path. */
		    code = cmd_put_path(cldev, pcls, &pcpath->path,
					int2fixed(ymin) - fixed_half,
					int2fixed(ymax) + fixed_half,
					(pcpath->rule == gx_rule_even_odd ?
					 cmd_opv_eofill : cmd_opv_fill),
					true, sn_not_first);
		  }
		if ( code < 0 )
		  return code;
	      }
	    else
	      { /* Write out the rectangles. */
		const gx_clip_rect *prect = pcpath->list.head;

		if ( prect == 0 )
		  prect = &pcpath->list.single;
		for ( ; prect != 0; prect = prect->next )
		  if ( prect->xmax > prect->xmin &&
		       prect->ymin < ymax && prect->ymax > ymin
		     )
		    { int code =
			cmd_write_rect_cmd(cldev, pcls, cmd_op_fill_rect,
					   prect->xmin, prect->ymin,
					   prect->xmax - prect->xmin,
					   prect->ymax - prect->ymin);
		      if ( code < 0 )
			return code;
		    }
	      }
	    set_cmd_put_op(dp, cldev, pcls, cmd_opv_end_clip, 2);
	    dp[1] = (gx_cpath_is_outside(pcpath) ? 1 : 0);
	    pcls->clip_enabled = 1;
	    pcls->known |= clip_path_known;
	  }
	if ( unknown & color_space_known )
	  { byte *dp;

	    if ( cldev->color_space & 8 )	/* indexed */
	      { uint num_values = (cldev->indexed_params.hival + 1) *
		  gs_color_space_num_components(
		    (const gs_color_space *)&cldev->indexed_params.base_space);
	        bool use_proc = cldev->color_space & 4;
		const void *map_data;
		uint map_size;

		if ( use_proc )
		  { map_data = cldev->indexed_params.lookup.map->values;
		    map_size = num_values *
		      sizeof(cldev->indexed_params.lookup.map->values[0]);
		  }
		else
		  { map_data = cldev->indexed_params.lookup.table.data;
		    map_size = num_values;
		  }
	        set_cmd_put_op(dp, cldev, pcls, cmd_opv_set_color_space,
			2 + cmd_sizew(cldev->indexed_params.hival) + map_size);
	        memcpy(cmd_put_w(cldev->indexed_params.hival, dp + 2),
		       map_data, map_size);
	      }
	    else
	      { set_cmd_put_op(dp, cldev, pcls, cmd_opv_set_color_space, 2);
	      }
	    dp[1] = cldev->color_space;
	    pcls->known |= color_space_known;
	  }
	return 0;
}	

/* ------ Driver procedures ------ */

private int
clist_fill_path(gx_device *dev, const gs_imager_state *pis, gx_path *ppath,
  const gx_fill_params *params, const gx_drawing_color *pdcolor,
  const gx_clip_path *pcpath)
{	uint unknown = 0;
	int y, height;
	gs_logical_operation_t lop = pis->log_op;
	byte op = (byte)
	  (params->rule == gx_rule_even_odd ?
#ifdef FUTURE
	   cmd_opv_eofill : cmd_opv_fill
#else
	   (gx_dc_is_pure(pdcolor) ? cmd_opv_eofill : cmd_opv_hteofill) :
	   (gx_dc_is_pure(pdcolor) ? cmd_opv_fill : cmd_opv_htfill)
#endif
	   );
	gs_fixed_point adjust;

#ifdef DEBUG
	if ( gs_debug_c(',') )		/* disable path-based banding */
	  return gx_default_fill_path(dev, pis, ppath, params, pdcolor,
				      pcpath);
#endif
	adjust = params->adjust;
	{ gs_fixed_rect bbox;
	  gx_path_bbox(ppath, &bbox);
	  if ( params->fill_zero_width )
	    gx_adjust_if_empty(&bbox, &adjust);
	  y = fixed2int(bbox.p.y - adjust.y);
	  height = fixed2int_ceiling(bbox.q.y + adjust.y) - y;
	  fit_fill_yh(dev, y, height);
	  if ( height <= 0 )
	    return 0;
	}
	if ( cdev->imager_state.flatness != params->flatness )
	  { unknown |= flatness_known;
	    cdev->imager_state.flatness = params->flatness;
	  }
	if ( cdev->imager_state.fill_adjust.x != adjust.x ||
	     cdev->imager_state.fill_adjust.y != adjust.y
	   )
	  { unknown |= fill_adjust_known;
	    cdev->imager_state.fill_adjust = adjust;
	  }
	if ( cmd_check_clip_path(cdev, pcpath) )
	  unknown |= clip_path_known;
	if ( unknown )
	  cmd_clear_known(cdev, unknown);
	BEGIN_RECT
	int code;

	cmd_do_write_unknown(cdev, pcls,
			     flatness_known | fill_adjust_known |
			     clip_path_known);
	cmd_do_enable_clip(cdev, pcls, pcpath != NULL);
	if ( lop == lop_default )
	  { cmd_disable_lop(cdev, pcls);
	  }
	else
	  { if ( lop != pcls->lop )
	      { code = cmd_set_lop(cdev, pcls, lop);
	        if ( code < 0 )
		  return code;
	      }
	    cmd_enable_lop(cdev, pcls);
	  }
	code = cmd_put_drawing_color(cdev, pcls, pdcolor);
	if ( code < 0 )
	  { /* Something went wrong, use the default implementation. */
	    return gx_default_fill_path(dev, pis, ppath, params, pdcolor,
					pcpath);
	  }
	code = cmd_put_path(cdev, pcls, ppath,
			    int2fixed(y) - params->adjust.y,
			    int2fixed(y + height) + params->adjust.y,
#ifdef FUTURE
			    op + code,	/* cmd_dc_type */
#else
			    op,
#endif
			    true, sn_none /* fill doesn't need the notes */);
	if ( code < 0 )
	  return code;
	END_RECT
	return 0;
}

private int
clist_stroke_path(gx_device *dev, const gs_imager_state *pis, gx_path *ppath,
  const gx_stroke_params *params,
  const gx_drawing_color *pdcolor, const gx_clip_path *pcpath)
{	int pattern_size = pis->line_params.dash.pattern_size;
	uint unknown = 0;
	gs_fixed_rect bbox;
	gs_fixed_point expansion;
	fixed adjust_y;
	int y, height;
	gs_logical_operation_t lop = pis->log_op;
#ifndef FUTURE
	byte op = (byte)
	  (gx_dc_is_pure(pdcolor) ? cmd_opv_stroke : cmd_opv_htstroke);
#endif

#ifdef DEBUG
	if ( gs_debug_c(',') )		/* disable path-based banding */
	  return gx_default_stroke_path(dev, pis, ppath, params, pdcolor,
					pcpath);
#endif
	gx_path_bbox(ppath, &bbox);
	/* We must use the supplied imager state, not our saved one, */
	/* for computing the stroke expansion. */
	if ( gx_stroke_path_expansion(pis, ppath, &expansion) < 0 )
	  { /* Expansion is too large: use the entire page. */
	    adjust_y = 0;
	    y = 0;
	    height = dev->height;
	  }
	else
	  { adjust_y = expansion.y + pis->fill_adjust.y;
	    y = fixed2int(bbox.p.y - adjust_y);
	    height = fixed2int_ceiling(bbox.q.y + adjust_y) - y;
	    fit_fill_yh(dev, y, height);
	    if ( height <= 0 )
	      return 0;
	  }
	/* Check the dash pattern, since we bail out if */
	/* the pattern is too large. */
	cdev->imager_state.line_params.dash.pattern = cdev->dash_pattern;
	if ( cdev->imager_state.line_params.dash.pattern_size != pattern_size ||
	     (pattern_size != 0 &&
	      memcmp(cdev->imager_state.line_params.dash.pattern,
		     pis->line_params.dash.pattern,
		     pattern_size * sizeof(float))) ||
	     cdev->imager_state.line_params.dash.offset !=
	       pis->line_params.dash.offset ||
	     cdev->imager_state.line_params.dash.adapt !=
	       pis->line_params.dash.adapt ||
	     cdev->imager_state.line_params.dot_length !=
	       pis->line_params.dot_length ||
	     cdev->imager_state.line_params.dot_length_absolute !=
	       pis->line_params.dot_length_absolute
	   )
	  { /* Bail out if the dash pattern is too long. */
	    if ( pattern_size > cmd_max_dash )
	      return gx_default_stroke_path(dev, pis, ppath, params,
					    pdcolor, pcpath);
	    unknown |= dash_known;
	    gx_set_dash(&cdev->imager_state.line_params.dash,
			pis->line_params.dash.pattern,
			pis->line_params.dash.pattern_size,
			pis->line_params.dash.offset, NULL);
	    gx_set_dash_adapt(&cdev->imager_state.line_params.dash,
			      pis->line_params.dash.adapt);
	    gx_set_dot_length(&cdev->imager_state.line_params,
			      pis->line_params.dot_length,
			      pis->line_params.dot_length_absolute);
	  }
	if ( state_neq(flatness) )
	  { unknown |= flatness_known;
	    state_update(flatness);
	  }
	if ( state_neq(fill_adjust.x) || state_neq(fill_adjust.y) )
	  { unknown |= fill_adjust_known;
	    state_update(fill_adjust);
	  }
	if ( state_neq(ctm.xx) || state_neq(ctm.xy) ||
	     state_neq(ctm.yx) || state_neq(ctm.yy) ||
	    /* We don't actually need tx or ty, but we don't want to bother */
	    /* tracking them separately from the other coefficients. */
	     state_neq(ctm.tx) || state_neq(ctm.ty)
	   )
	  { unknown |= ctm_known;
	    state_update(ctm);
	  }
	if ( state_neq(line_params.half_width) )
	  { unknown |= line_width_known;
	    state_update(line_params.half_width);
	  }
	if ( state_neq(line_params.miter_limit) )
	  { unknown |= miter_limit_known;
	    gx_set_miter_limit(&cdev->imager_state.line_params,
			       pis->line_params.miter_limit);
	  }
	if ( state_neq(line_params.cap) || state_neq(line_params.join) )
	  { unknown |= misc0_known;
	    state_update(line_params.cap);
	    state_update(line_params.join);
	  }
	if ( state_neq(accurate_curves) || state_neq(overprint) ||
	     state_neq(stroke_adjust)
	   )
	  { unknown |= misc1_known;
	    state_update(accurate_curves);
	    state_update(overprint);
	    state_update(stroke_adjust);
	  }
	if ( cmd_check_clip_path(cdev, pcpath) )
	  unknown |= clip_path_known;
	if ( unknown )
	  cmd_clear_known(cdev, unknown);
	BEGIN_RECT
	int code;

	cmd_do_write_unknown(cdev, pcls, stroke_all_known);
	cmd_do_enable_clip(cdev, pcls, pcpath != NULL);
	if ( lop == lop_default )
	  { cmd_disable_lop(cdev, pcls);
	  }
	else
	  { if ( lop != pcls->lop )
	      { code = cmd_set_lop(cdev, pcls, lop);
	        if ( code < 0 )
		  return code;
	      }
	    cmd_enable_lop(cdev, pcls);
	  }
	code = cmd_put_drawing_color(cdev, pcls, pdcolor);
	if ( code < 0 )
	  { /* Something went wrong, use the default implementation. */
	    return gx_default_stroke_path(dev, pis, ppath, params, pdcolor,
					  pcpath);
	  }
	{ fixed ymin, ymax;
	  /* If a dash pattern is active, we can't skip segments */
	  /* outside the clipping region, because that would throw off */
	  /* the pattern. */
	  if ( pattern_size == 0 )
	    ymin = int2fixed(y) - adjust_y,
	    ymax = int2fixed(y + height) + adjust_y;
	  else
	    ymin = min_fixed,
	    ymax = max_fixed;
	  code = cmd_put_path(cdev, pcls, ppath, ymin, ymax,
#ifdef FUTURE
			      cmd_opv_stroke + code,	/* cmd_dc_type */
#else
			      op,
#endif
			      false, (segment_notes)~0);
	  if ( code < 0 )
	    return code;
	}
	END_RECT
	return 0;
}

/* ------ Path utilities ------ */

/* Define the state bookkeeping for writing path segments. */
typedef struct cmd_segment_writer_s {
	/* Set at initialization */
  gx_device_clist_writer *cldev;
  gx_clist_state *pcls;
	/* Updated dynamically */
  segment_notes notes;
  byte *dp;
  int len;
  gs_fixed_point delta_first;
  byte cmd[6 * (1 + sizeof(fixed))];
} cmd_segment_writer;

/* Put out a path segment command. */
private int near
cmd_put_segment(cmd_segment_writer _ss *psw, byte op,
  const fixed _ss *operands, segment_notes notes)
{	const fixed _ss *optr = operands;
	/* Fetch num_operands before possible command merging. */
	int i = clist_segment_op_num_operands[op & 0xf];
	byte *q = psw->cmd - 1;

#ifdef DEBUG
	if ( gs_debug_c('L') )
	  { int j;
	    dprintf2("[L]  %s:%d:", cmd_segment_op_names[op & 0xf],
		     (int)notes);
	    for ( j = 0; j < i; ++j )
	      dprintf1(" %g", fixed2float(operands[j]));
	    dputs("\n");
	  }
#endif

	/* Merge or shorten commands if possible. */
	if ( op == cmd_opv_rlineto )
	  { if ( operands[0] == 0 )
	      op = cmd_opv_vlineto, optr = ++operands, i = 1;
	    else if ( operands[1] == 0 )
	      op = cmd_opv_hlineto, i = 1;
	    else
	      switch ( *psw->dp )
		{
		case cmd_opv_rmoveto:
		  psw->delta_first.x = operands[0];
		  psw->delta_first.y = operands[1];
		  op = cmd_opv_rmlineto;
merge:		  cmd_uncount_op(*psw->dp, psw->len);
		  cmd_shorten_op(psw->cldev, psw->pcls, psw->len); /* delete it */
		  q += psw->len - 1;
		  break;
		case cmd_opv_rmlineto:
		  if ( notes != psw->notes )
		    break;
		  op = cmd_opv_rm2lineto;
		  goto merge;
		case cmd_opv_rm2lineto:
		  if ( notes != psw->notes )
		    break;
		  if ( operands[0] == -psw->delta_first.x &&
		       operands[1] == -psw->delta_first.y
		      )
		    { cmd_uncount_op(cmd_opv_rm2lineto, psw->len);
		      *psw->dp = cmd_count_op(cmd_opv_rm3lineto, psw->len);
		      return 0;
		    }
		  break;
		default:
		  ;
		}
	  }

	for ( ; --i >= 0; ++optr )
	  {	fixed d = *optr, d2;
		if ( is_bits(d, _fixed_shift + 11) &&
		     !(d & (float2fixed(0.25) - 1))
		   )
		  { cmd_count_add1(cmd_diffs[3]);
		    d = ((d >> (_fixed_shift - 2)) & 0x1fff) + 0xc000;
		    q += 2;
		  }
		else if ( is_bits(d, 19) && i > 0 && is_bits(d2 = optr[1], 19) )
		  { cmd_count_add1(cmd_diffs[0]);
		    q[1] = (byte)((d >> 13) & 0x3f);
		    q[2] = (byte)(d >> 5);
		    q[3] = (byte)((d << 3) + ((d2 >> 16) & 7));
		    q[4] = (byte)(d2 >> 8);
		    q[5] = (byte)d2;
		    q += 5;
		    --i, ++optr;
		    continue;
		  }
		else if ( is_bits(d, 22) )
		  { cmd_count_add1(cmd_diffs[1]);
		    q[1] = (byte)(((d >> 16) & 0x3f) + 0x40);
		    q += 3;
		  }
		else if ( is_bits(d, 30) )
		  { cmd_count_add1(cmd_diffs[2]);
		    q[1] = (byte)(((d >> 24) & 0x3f) + 0x80);
		    q[2] = (byte)(d >> 16);
		    q += 4;
		  }
		else
		  { int b;
		    cmd_count_add1(cmd_diffs[4]);
		    *++q = 0xe0;
		    for ( b = sizeof(fixed) - 1; b > 1; --b )
		      *++q = (byte)(d >> (b * 8));
		    q += 2;
		  }
		q[-1] = (byte)(d >> 8);
		*q = (byte)d;
	      }
	if ( notes != psw->notes )
	  { byte *dp;

	    set_cmd_put_op(dp, psw->cldev, psw->pcls, cmd_opv_set_misc2, 2);
	    dp[1] = cmd_set_misc2_notes + notes;
	    psw->notes = notes;
	  }
	{ int len = q + 2 - psw->cmd;
	  byte *dp;

	  set_cmd_put_op(dp, psw->cldev, psw->pcls, op, len);
	  memcpy(dp + 1, psw->cmd, len - 1);
	  psw->len = len;
	  psw->dp = dp;
	}
	return 0;
}
/* Put out a line segment command. */
#define cmd_put_rmoveto(psw, operands)\
  cmd_put_segment(psw, cmd_opv_rmoveto, operands, sn_none)
#define cmd_put_rlineto(psw, operands, notes)\
  cmd_put_segment(psw, cmd_opv_rlineto, operands, notes)

/*
 * Write a path.  We go to a lot of trouble to omit segments that are
 * entirely outside the band.
 */
private int
cmd_put_path(gx_device_clist_writer *cldev, gx_clist_state *pcls,
  const gx_path *ppath, fixed ymin, fixed ymax, byte path_op,
  bool implicit_close, segment_notes keep_notes)
{	gs_path_enum cenum;
	cmd_segment_writer writer;
	static byte initial_op = { cmd_opv_end_run };
	/*
	 * We define the 'side' of a point according to its Y value as
	 * follows:
	 */
#define which_side(y) ((y) < ymin ? -1 : (y) >= ymax ? 1 : 0)

	/*
	 * While writing a subpath, we need to keep track of any segments
	 * skipped at the beginning of the subpath and any segments skipped
	 * just before the current segment.  We do this with two sets of
	 * state variables, one that tracks the actual path segments and one
	 * that tracks the emitted segments.
	 *
	 * The following track the actual segments:
	 */

		/*
		 * The point and side of the last moveto (skipped if
		 * start_side != 0):
		 */
	gs_fixed_point start;
	int start_side;
		/*
		 * Whether any lines or curves were skipped immediately
		 * following the moveto:
		 */
	bool start_skip;
		/* The side of the last point: */
	int side;
		/* The last point with side != 0: */
	gs_fixed_point out;
		/* If the last out-going segment was a lineto, */
		/* its notes: */
	segment_notes out_notes;

	/*
	 * The following track the emitted segments:
	 */

		/* The last point emitted: */
	fixed px = int2fixed(pcls->rect.x);
	fixed py = int2fixed(pcls->rect.y);
		/* The point of the last emitted moveto: */
	gs_fixed_point first;
		/* Information about the last emitted operation: */
	int open = 0;		/* -1 if last was moveto, 1 if line/curveto, */
				/* 0 if newpath/closepath */

	if_debug4('p', "[p]initial (%g,%g), clip [%g..%g)\n",
		  fixed2float(px), fixed2float(py),
		  fixed2float(ymin), fixed2float(ymax));
	gx_path_enum_init(&cenum, ppath);
	writer.cldev = cldev;
	writer.pcls = pcls;
	writer.notes = sn_none;
#define set_first_point() (writer.dp = &initial_op)
#define first_point() (writer.dp == &initial_op)
	set_first_point();
	for ( ; ; )
	  { fixed vs[6];
#define A vs[0]
#define B vs[1]
#define C vs[2]
#define D vs[3]
#define E vs[4]
#define F vs[5]
	    int pe_op = gx_path_enum_next(&cenum, (gs_fixed_point *)vs);
	    byte *dp;
	    int code;

	    switch ( pe_op )
	      {
	      case 0:
		/* If the path is open and needs an implicit close, */
		/* do the close and then come here again. */
		if ( open > 0 && implicit_close )
		  goto close;
		/* All done. */
		pcls->rect.x = fixed2int_var(px);
		pcls->rect.y = fixed2int_var(py);
		if_debug2('p', "[p]final (%d,%d)\n",
			  pcls->rect.x, pcls->rect.y);
		set_cmd_put_op(dp, cldev, pcls, path_op, 1);
		return 0;
	      case gs_pe_moveto:
		/* If the path is open and needs an implicit close, */
		/* do a closepath and then redo the moveto. */
		if ( open > 0 && implicit_close )
		  { gx_path_enum_backup(&cenum);
		    goto close;
		  }
		open = -1;
		start.x = A, start.y = B;
		start_skip = false;
		if ( (start_side = side = which_side(B)) != 0 )
		  {	out.x = A, out.y = B;
			if_debug3('p', "[p]skip moveto (%g,%g) side %d\n",
				  fixed2float(out.x), fixed2float(out.y),
				  side);
			continue;
		  }
		C = A - px, D = B - py;
		first.x = px = A, first.y = py = B;
		code = cmd_put_rmoveto(&writer, &C);
		if_debug2('p', "[p]moveto (%g,%g)\n",
			  fixed2float(px), fixed2float(py));
		break;
	      case gs_pe_lineto:
		{ int next_side = which_side(B);
		  segment_notes notes =
		    gx_path_enum_notes(&cenum) & keep_notes;

		  if ( next_side == side && side != 0 )
		    { /* Skip a line completely outside the clip region. */
		      if ( open < 0 )
			start_skip = true;
		      out.x = A, out.y = B;
		      out_notes = notes;
		      if_debug3('p', "[p]skip lineto (%g,%g) side %d\n",
				fixed2float(out.x), fixed2float(out.y),
				side);
		      continue;
		    }
		  /* If we skipped any segments, put out a moveto/lineto. */
		  if ( side && (px != out.x || py != out.y || first_point()) )
		    { C = out.x - px, D = out.y - py;
		      if ( open < 0 )
			{ first = out;
			  code = cmd_put_rmoveto(&writer, &C);
			}
		      else
			code = cmd_put_rlineto(&writer, &C, out_notes);
		      if ( code < 0 )
			return code;
		      px = out.x, py = out.y;
		      if_debug3('p', "[p]catchup %s (%g,%g) for line\n",
				(open < 0 ? "moveto" : "lineto"),
				fixed2float(px), fixed2float(py));
		    }
		  if ( (side = next_side) != 0 )
		    { /* Note a vertex going outside the clip region. */
		      out.x = A, out.y = B;
		    }
		  C = A - px, D = B - py;
		  px = A, py = B;
		  open = 1;
		  code = cmd_put_rlineto(&writer, &C, notes);
		}
		if_debug3('p', "[p]lineto (%g,%g) side %d\n",
			  fixed2float(px), fixed2float(py), side);
		break;
	      case gs_pe_closepath:
#ifdef DEBUG
		{ gs_path_enum cpenum;
		  gs_fixed_point cvs[3];
		  int op;
		  cpenum = cenum;
		  switch ( op = gx_path_enum_next(&cpenum, cvs) )
		    {
		    case 0: case gs_pe_moveto:
		      break;
		    default:
		      lprintf1("closepath followed by %d, not end/moveto!\n",
			       op);
		    }
		}
#endif
		/* A closepath may require drawing an explicit line if */
		/* we skipped any segments at the beginning of the path. */
close:		if ( side != start_side )
		  { /* If we skipped any segments, put out a moveto/lineto. */
		    if ( side && (px != out.x || py != out.y || first_point()) )
		      { C = out.x - px, D = out.y - py;
			code = cmd_put_rlineto(&writer, &C, out_notes);
			if ( code < 0 )
			  return code;
			px = out.x, py = out.y;
			if_debug2('p', "[p]catchup line (%g,%g) for close\n",
				  fixed2float(px), fixed2float(py));
		      }
		    if ( open > 0 && start_skip )
		      { /* Draw the closing line back to the start. */
			C = start.x - px, D = start.y - py;
			code = cmd_put_rlineto(&writer, &C, sn_none);
			if ( code < 0 )
			  return code;
			px = start.x, py = start.y;
			if_debug2('p', "[p]draw close to (%g,%g)\n",
				  fixed2float(px), fixed2float(py));
		      }
		  }
		/*
		 * We don't bother to update side because we know that the
		 * next element after a closepath, if any, must be a moveto.
		 * We must handle explicitly the possibility that the entire
		 * subpath was skipped.
		 */
		if ( implicit_close || open <= 0 )
		  { open = 0;
		    /*
		     * Force writing an explicit moveto if the next subpath
		     * starts with a moveto to the same point where this one
		     * ends.
		     */
		    set_first_point();
		    continue;
		  }
		open = 0;
		px = first.x, py = first.y;
		code = cmd_put_segment(&writer, cmd_opv_closepath, &A, sn_none);
		if_debug0('p', "[p]close\n");
		break;
	      case gs_pe_curveto:
		{ segment_notes notes =
		    gx_path_enum_notes(&cenum) & keep_notes;
		{ fixed bpy, bqy;
		  int all_side, out_side;

		  /* Compute the Y bounds for the clipping check. */
		  if ( B < D ) bpy = B, bqy = D;
		  else bpy = D, bqy = B;
		  if ( F < bpy ) bpy = F;
		  else if ( F > bqy ) bqy = F;
		  all_side = (bqy < ymin ? -1 : bpy > ymax ? 1 : 0);
		  if ( all_side != 0 )
		    { if ( all_side == side )
			{ /* Skip a curve entirely outside the clip region. */
			  if ( open < 0 )
			    start_skip = true;
			  out.x = E, out.y = F;
			  out_notes = notes;
			  if_debug3('p', "[p]skip curveto (%g,%g) side %d\n",
				    fixed2float(out.x), fixed2float(out.y),
				    side);
			  continue;
			}
		      out_side = all_side;
		    }
		  else
		    out_side = which_side(F);
		  /* If we skipped any segments, put out a moveto/lineto. */
		  if ( side && (px != out.x || py != out.y || first_point()) )
		    { fixed diff[2];
		      diff[0] = out.x - px, diff[1] = out.y - py;
		      if ( open < 0 )
			{ first = out;
			  code = cmd_put_rmoveto(&writer, diff);
			}
		      else
			code = cmd_put_rlineto(&writer, diff, out_notes);
		      if ( code < 0 )
			return code;
		      px = out.x, py = out.y;
		      if_debug3('p', "[p]catchup %s (%g,%g) for curve\n",
				(open < 0 ? "moveto" : "lineto"),
				fixed2float(px), fixed2float(py));
		    }
		  if ( (side = out_side) != 0 )
		    { /* Note a vertex going outside the clip region. */
		      out.x = E, out.y = F;
		    }
		}
		{ fixed nx = E, ny = F;
		  const fixed _ss *optr = vs;
		  byte op;

		  if_debug7('p', "[p]curveto (%g,%g; %g,%g; %g,%g) side %d\n",
			    fixed2float(A), fixed2float(B),
			    fixed2float(C), fixed2float(D),
			    fixed2float(E), fixed2float(F), side);
		  E -= C, F -= D;
		  C -= A, D -= B;
		  A -= px, B -= py;
		  if ( B == 0 && E == 0 )
		    { B = A, E = F, optr++, op = cmd_opv_hvcurveto;
		      if ( (B ^ D) >= 0 )
			{ if ( C == D && E == B )
			    op = cmd_opv_hqcurveto;
			}
		      else if ( C == -D && E == -B )
			C = D, op = cmd_opv_hqcurveto;
		    }
		  else if ( A == 0 && F == 0 )
		    { optr++, op = cmd_opv_vhcurveto;
		      if ( (B ^ C) >= 0 )
			{ if ( D == C && E == B )
			    op = cmd_opv_vqcurveto;
			}
		      else if ( D == -C && E == -B )
			op = cmd_opv_vqcurveto;
		    }
		  else if ( A == 0 && B == 0 )
		    optr += 2, op = cmd_opv_nrcurveto;
		  else if ( E == 0 && F == 0 )
		    op = cmd_opv_rncurveto;
		  else
		    op = cmd_opv_rrcurveto;
		  px = nx, py = ny;
		  open = 1;
		  code = cmd_put_segment(&writer, op, optr, notes);
		}
		} break;
	      default:
		return_error(gs_error_rangecheck);
	      }
	    if ( code < 0 )
	      return code;
#undef A
#undef B
#undef C
#undef D
#undef E
#undef F
	  }
}
