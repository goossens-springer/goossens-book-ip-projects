/* Copyright (C) 1996 Aladdin Enterprises.  All rights reserved.
  
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

/* icharout.h */
/* Interface to zcharout.c */

/* Execute an outline defined by a PostScript procedure. */
int zchar_exec_char_proc(P1(os_ptr));

/*
 * Get the metrics for a character from the Metrics dictionary of a base
 * font.  If present, store the l.s.b. in psbw[0,1] and the width in
 * psbw[2,3].
 */
typedef enum {
	metricsNone = 0,
	metricsWidthOnly = 1,
	metricsSideBearingAndWidth = 2
} metrics_present;
int /*metrics_present*/
  zchar_get_metrics(P3(const gs_font_base *pbfont, const ref *pcnref,
		       float psbw[4]));

/*
 * Consult Metrics2 and CDevProc, and call setcachedevice[2].  Return
 * o_push_estack if we had to call a CDevProc, or if we are skipping the
 * rendering process (only getting the metrics).
 */
int zchar_set_cache(P8(os_ptr op, const gs_font_base *pbfont,
		       const ref *pcnref, const float psb[2],
		       const float pwidth[2], const gs_rect *pbbox,
		       int (*cont_fill)(P1(os_ptr)),
		       int (*cont_stroke)(P1(os_ptr))));
