/* Copyright (C) 1989, 1995, 1997 Aladdin Enterprises.  All rights reserved.
  
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

/* gxpath2.c */
/* Path tracing procedures for Ghostscript library */
#include "math_.h"
#include "gx.h"
#include "gserrors.h"
#include "gxfixed.h"
#include "gxarith.h"
#include "gzpath.h"

/* Define the enumeration structure. */
private_st_path_enum();

/* Assign a path. */
void
gx_path_assign(gx_path *pto, const gx_path *pfrom)
{	*pto = *pfrom;
}

/* Read the current point of a path. */
int
gx_path_current_point(const gx_path *ppath, gs_fixed_point *ppt)
{	if ( !path_position_valid(ppath) )
	  return_error(gs_error_nocurrentpoint);
	/* Copying the coordinates individually */
	/* is much faster on a PC, and almost as fast on other machines.... */
	ppt->x = ppath->position.x, ppt->y = ppath->position.y;
	return 0;
}

/* Read the bounding box of a path. */
/* Note that if the last element of the path is a moveto, */
/* the bounding box does not include this point, */
/* unless this is the only element of the path. */
int
gx_path_bbox(gx_path *ppath, gs_fixed_rect *pbox)
{	if ( ppath->bbox_set )
	{	/* The bounding box was set by setbbox. */
		*pbox = ppath->bbox;
		return 0;
	}
	if ( ppath->first_subpath == 0 )
	   {	/* The path is empty, use the current point if any. */
		gx_path_current_point(ppath, &pbox->p);
		return gx_path_current_point(ppath, &pbox->q);
	   }
	/* The stored bounding box may not be up to date. */
	/* Correct it now if necessary. */
	if ( ppath->box_last == ppath->current_subpath->last )
	   {	/* Box is up to date */
		*pbox = ppath->bbox;
	   }
	else
	   {	gs_fixed_rect box;
		register segment *pseg = ppath->box_last;
		if ( pseg == 0 )	/* box is uninitialized */
		   {	pseg = (segment *)ppath->first_subpath;
			box.p.x = box.q.x = pseg->pt.x;
			box.p.y = box.q.y = pseg->pt.y;
		   }
		else
		   {	box = ppath->bbox;
			pseg = pseg->next;
		   }
/* Macro for adjusting the bounding box when adding a point */
#define adjust_bbox(pt)\
  if ( (pt).x < box.p.x ) box.p.x = (pt).x;\
  else if ( (pt).x > box.q.x ) box.q.x = (pt).x;\
  if ( (pt).y < box.p.y ) box.p.y = (pt).y;\
  else if ( (pt).y > box.q.y ) box.q.y = (pt).y
		while ( pseg )
		   {	switch ( pseg->type )
			   {
			case s_curve:
#define pcurve ((curve_segment *)pseg)
				adjust_bbox(pcurve->p1);
				adjust_bbox(pcurve->p2);
#undef pcurve
				/* falls through */
			default:
				adjust_bbox(pseg->pt);
			   }
			pseg = pseg->next;
		   }
#undef adjust_bbox
		ppath->bbox = box;
		ppath->box_last = ppath->current_subpath->last;
		*pbox = box;
	   }
	return 0;
}

/* Test if a path has any curves. */
bool
gx_path_has_curves(const gx_path *ppath)
{	return ppath->curve_count != 0;
}

/* Test if a path has no segments. */
bool
gx_path_is_void(const gx_path *ppath)
{	return ppath->first_subpath == 0;
}

/* Test if a path has no elements at all. */
bool
gx_path_is_null(const gx_path *ppath)
{	return ppath->first_subpath == 0 && !path_position_valid(ppath);
}

/*
 * Test if a subpath to be filled is a rectangle; if so, return its
 * bounding box and the start of the next subpath.
 * Note that this must recognize:
 *	ordinary closed rectangles (M, L, L, L, C);
 *	open rectangles (M, L, L, L);
 *	rectangles closed with lineto (Mo, L, L, L, Lo);
 *	rectangles closed with *both* lineto and closepath (bad PostScript,
 *	  but unfortunately not rare) (Mo, L, L, L, Lo, C).
 */
bool
gx_subpath_is_rectangle(const subpath *pseg0, gs_fixed_rect *pbox,
  const subpath **ppnext)
{	const segment *pseg1, *pseg2, *pseg3, *pseg4;
	if (	pseg0->curve_count == 0 &&
		(pseg1 = pseg0->next) != 0 &&
		(pseg2 = pseg1->next) != 0 &&
		(pseg3 = pseg2->next) != 0 &&
		((pseg4 = pseg3->next) == 0 || pseg4->type != s_line ||
		 (pseg4->pt.x == pseg0->pt.x &&
		  pseg4->pt.y == pseg0->pt.y &&
		  (pseg4->next == 0 || pseg4->next->type != s_line)))
	   )
	   {	fixed x0 = pseg0->pt.x, y0 = pseg0->pt.y;
		fixed x2 = pseg2->pt.x, y2 = pseg2->pt.y;
		if (	(x0 == pseg1->pt.x && pseg1->pt.y == y2 &&
			 x2 == pseg3->pt.x && pseg3->pt.y == y0) ||
			(x0 == pseg3->pt.x && pseg3->pt.y == y2 &&
			 x2 == pseg1->pt.x && pseg1->pt.y == y0)
		   )
		   {	/* Path is a rectangle.  Return the bounding box. */
			if ( x0 < x2 )
			  pbox->p.x = x0, pbox->q.x = x2;
			else
			  pbox->p.x = x2, pbox->q.x = x0;
			if ( y0 < y2 )
			  pbox->p.y = y0, pbox->q.y = y2;
			else
			  pbox->p.y = y2, pbox->q.y = y0;
			while ( pseg4 != 0 && pseg4->type != s_start )
			  pseg4 = pseg4->next;
			*ppnext = (const subpath *)pseg4;
			return true;
		   }
	   }
	return false;
}
/* Test if an entire path to be filled is a rectangle. */
bool
gx_path_is_rectangle(const gx_path *ppath, gs_fixed_rect *pbox)
{	const subpath *pnext;
	return (ppath->subpath_count == 1 &&
		gx_subpath_is_rectangle(ppath->first_subpath, pbox, &pnext));
}

/* Translate an already-constructed path (in device space). */
/* Don't bother to update the cbox. */
int
gx_path_translate(gx_path *ppath, fixed dx, fixed dy)
{	segment *pseg;
#define update_xy(pt)\
  pt.x += dx, pt.y += dy
	if ( ppath->box_last != 0 )
	  { update_xy(ppath->bbox.p);
	    update_xy(ppath->bbox.q);
	  }
	if ( path_position_valid(ppath) )
	  update_xy(ppath->position);
	for ( pseg = (segment *)(ppath->first_subpath); pseg != 0;
	      pseg = pseg->next
	    )
	  switch ( pseg->type )
	    {
	    case s_curve:
#define pcseg ((curve_segment *)pseg)
		update_xy(pcseg->p1);
		update_xy(pcseg->p2);
#undef pcseg
	    default:
		update_xy(pseg->pt);
	    }
#undef update_xy
	return 0;
}

/* Scale an existing path by a power of 2 (positive or negative). */
void
gx_point_scale_exp2(gs_fixed_point *pt, int sx, int sy)
{	if ( sx >= 0 ) pt->x <<= sx; else pt->x >>= -sx;
	if ( sy >= 0 ) pt->y <<= sy; else pt->y >>= -sy;
}
void
gx_rect_scale_exp2(gs_fixed_rect *pr, int sx, int sy)
{	gx_point_scale_exp2(&pr->p, sx, sy);
	gx_point_scale_exp2(&pr->q, sx, sy);
}
int
gx_path_scale_exp2(gx_path *ppath, int log2_scale_x, int log2_scale_y)
{	segment *pseg;
	gx_rect_scale_exp2(&ppath->bbox, log2_scale_x, log2_scale_y);
#define update_xy(pt) gx_point_scale_exp2(&pt, log2_scale_x, log2_scale_y)
	update_xy(ppath->position);
	for ( pseg = (segment *)(ppath->first_subpath); pseg != 0;
	      pseg = pseg->next
	    )
	  switch ( pseg->type )
	    {
	    case s_curve:
#define pcseg ((curve_segment *)pseg)
		update_xy(pcseg->p1);
		update_xy(pcseg->p2);
#undef pcseg
	    default:
		update_xy(pseg->pt);
	    }
#undef update_xy
	return 0;
}

/* Reverse a path. */
/* We know ppath != ppath_old. */
int
gx_path_copy_reversed(const gx_path *ppath_old, gx_path *ppath, bool init)
{	const subpath *psub = ppath_old->first_subpath;
	int code;

#ifdef DEBUG
	if ( gs_debug_c('P') )
	  gx_dump_path(ppath_old, "before reversepath");
#endif
	if ( init )
	  gx_path_init(ppath, ppath_old->memory);
nsp:	while ( psub )
	{	const segment *pseg = psub->last;
		const segment *prev;
		segment_notes prev_notes =
		  (pseg == (const segment *)psub ? sn_none :
		   psub->next->notes);
		segment_notes notes;

		code = gx_path_add_point(ppath, pseg->pt.x, pseg->pt.y);
		if ( code < 0 )
		  goto fx;
		for ( ; ; pseg = prev, prev_notes = notes )
		{	prev = pseg->prev;
			notes = pseg->notes;
			prev_notes = (prev_notes & sn_not_first) |
			  (notes & ~sn_not_first);
			switch ( pseg->type )
			{
			case s_start:
endsp:				/* Finished subpath */
				if ( psub->is_closed )
				{	code =
					  gx_path_close_subpath_notes(ppath,
						prev_notes);
					if ( code < 0 )
					  goto fx;
				}
				psub = (const subpath *)psub->last->next;
				goto nsp;
			case s_curve:
			{	const curve_segment *pc =
				  (const curve_segment *)pseg;

				code = gx_path_add_curve_notes(ppath,
					pc->p2.x, pc->p2.y,
					pc->p1.x, pc->p1.y,
					prev->pt.x, prev->pt.y, prev_notes);
				break;
			}
			case s_line:
			case s_line_close:
				if ( prev->type == s_start && psub->is_closed )
				{	pseg = prev;
					goto endsp;
				}
				code = gx_path_add_line_notes(ppath,
					prev->pt.x, prev->pt.y, prev_notes);
				break;
			}
			if ( code < 0 )
			  goto fx;
		}
		/* not reached */
	}
#undef sn_not_end
	if ( path_last_is_moveto(ppath_old) )
	{	code = gx_path_add_point(ppath, ppath_old->position.x,
					 ppath_old->position.y);
		if ( code < 0 )
		  goto fx;
	}
#ifdef DEBUG
if ( gs_debug_c('P') )
	gx_dump_path(ppath, "after reversepath");
#endif
	return 0;
fx:	gx_path_release(ppath);
	return code;
}

/* ------ Path enumeration ------ */

/* Allocate a path enumerator. */
gs_path_enum *
gs_path_enum_alloc(gs_memory_t *mem, client_name_t cname)
{	return gs_alloc_struct(mem, gs_path_enum, &st_gs_path_enum, cname);
}

/* Start enumerating a path. */
int
gx_path_enum_init(gs_path_enum *penum, const gx_path *ppath)
{	penum->path = ppath;
	penum->copied_path = 0;		/* not copied */
	penum->pgs = 0;
	penum->pseg = (const segment *)ppath->first_subpath;
	penum->moveto_done = false;
	penum->notes = sn_none;
	return 0;
}

/* Enumerate the next element of a path. */
/* If the path is finished, return 0; */
/* otherwise, return the element type. */
int
gx_path_enum_next(gs_path_enum *penum, gs_fixed_point ppts[3])
{	const segment *pseg = penum->pseg;

	if ( pseg == 0 )
	{	/* We've enumerated all the segments, but there might be */
		/* a trailing moveto. */
		const gx_path *ppath = penum->path;
		if ( path_last_is_moveto(ppath) && !penum->moveto_done )
		{	/* Handle a trailing moveto */
			penum->moveto_done = true;
			penum->notes = sn_none;
			ppts[0] = ppath->position;
			return gs_pe_moveto;
		}
		return 0;
	}
	penum->pseg = pseg->next;
	penum->notes = pseg->notes;
	switch ( pseg->type )
	   {
	case s_start:
	     ppts[0] = pseg->pt;
	     return gs_pe_moveto;
	case s_line:
	     ppts[0] = pseg->pt;
	     return gs_pe_lineto;
	case s_line_close:
	     ppts[0] = pseg->pt;
	     return gs_pe_closepath;
	case s_curve:
#define pcseg ((const curve_segment *)pseg)
	     ppts[0] = pcseg->p1;
	     ppts[1] = pcseg->p2;
	     ppts[2] = pseg->pt;
	     return gs_pe_curveto;
#undef pcseg
	default:
	     lprintf1("bad type %x in gx_path_enum_next!\n", pseg->type);
	     return_error(gs_error_Fatal);
	   }
}

/* Return the notes from the last-enumerated segment. */
segment_notes
gx_path_enum_notes(const gs_path_enum *penum)
{	return penum->notes;
}

/* Back up 1 element in the path being enumerated. */
/* Return true if successful, false if we are at the beginning of the path. */
/* This implementation allows backing up multiple times, */
/* but no client currently relies on this. */
bool
gx_path_enum_backup(gs_path_enum *penum)
{	const segment *pseg = penum->pseg;

	if ( pseg != 0 )
	  {	if ( (pseg = pseg->prev) == 0 )
		  return false;
		penum->pseg = pseg;
		return true;
	  }
	/* We're at the end of the path.  Check to see whether */
	/* we need to back up over a trailing moveto. */
	{ const gx_path *ppath = penum->path;
	  if ( path_last_is_moveto(ppath) && penum->moveto_done )
	    { /* Back up over the trailing moveto. */
	      penum->moveto_done = false;
	      return true;
	    }
	  { const subpath *psub = ppath->current_subpath;
	    if ( psub == 0 )		/* empty path */
	      return false;
	    /* Back up to the last segment of the last subpath. */
	    penum->pseg = psub->last;
	    return true;
	  }
	}
}
