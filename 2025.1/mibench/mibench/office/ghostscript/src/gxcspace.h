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

/* gxcspace.h */
/* Implementation of color spaces */

#ifndef gxcspace_INCLUDED
#  define gxcspace_INCLUDED

#include "gscspace.h"		/* client interface */
#include "gsccolor.h"
#include "gscsel.h"
#include "gsstruct.h"		/* needed for enum_ptrs & reloc_ptrs */
#include "gxfrac.h"		/* for concrete colors */

/* Define opaque types. */

#ifndef gx_device_color_DEFINED
#  define gx_device_color_DEFINED
typedef struct gx_device_color_s gx_device_color;
#endif

#ifndef gx_device_DEFINED
#  define gx_device_DEFINED
typedef struct gx_device_s gx_device;
#endif

/* Color space types (classes): */
/*typedef struct gs_color_space_type_s gs_color_space_type;*/
struct gs_color_space_type_s {

	gs_color_space_index index;

	/* Define the number of components in a color of this space. */
	/* For Pattern spaces, where the number of components depends on */
	/* the underlying space, this value is -1. */

	int num_components;

	/* Define whether the space can be the base space for */
	/* an Indexed color space or the alternate space for */
	/* a Separation color space. */

	bool can_be_base_space;

	/* ------ Procedures ------ */

	/* Construct the initial color value for this space. */

#define cs_proc_init_color(proc)\
  void proc(P2(gs_client_color *, const gs_color_space *))
#define cs_init_color(pcc, pcs)\
  (*(pcs)->type->init_color)(pcc, pcs)
#define cs_full_init_color(pcc, pcs)\
  ((pcc)->pattern = 0, cs_init_color(pcc, pcs))
	cs_proc_init_color((*init_color));

	/* Return the concrete color space underlying this one. */
	/* (Not defined for Pattern spaces.) */

#define cs_proc_concrete_space(proc)\
  const gs_color_space *proc(P2(const gs_color_space *,\
				const gs_imager_state *))
#define cs_concrete_space(pcs, pis)\
  (*(pcs)->type->concrete_space)(pcs, pis)
	cs_proc_concrete_space((*concrete_space));

	/* Reduce a color to a concrete color. */
	/* (Not defined for Pattern spaces.) */

#define cs_proc_concretize_color(proc)\
  int proc(P4(const gs_client_color *, const gs_color_space *,\
    frac *, const gs_imager_state *))
	cs_proc_concretize_color((*concretize_color));

	/* Map a concrete color to a device color. */
	/* (Only defined for concrete color spaces.) */

#define cs_proc_remap_concrete_color(proc)\
  int proc(P5(const frac *, gx_device_color *, const gs_imager_state *,\
    gx_device *, gs_color_select_t))
	cs_proc_remap_concrete_color((*remap_concrete_color));

	/* Map a color directly to a device color. */

#define cs_proc_remap_color(proc)\
  int proc(P6(const gs_client_color *, const gs_color_space *,\
    gx_device_color *, const gs_imager_state *, gx_device *,\
    gs_color_select_t))
	cs_proc_remap_color((*remap_color));

	/* Install the color space in a graphics state. */

#define cs_proc_install_cspace(proc)\
  int proc(P2(gs_color_space *, gs_state *))
	cs_proc_install_cspace((*install_cspace));

	/* Adjust reference counts of indirect color space components. */
#define cs_proc_adjust_cspace_count(proc)\
  void proc(P3(const gs_color_space *, gs_memory_t *, int))
#define cs_adjust_cspace_count(pgs, delta)\
  (*(pgs)->color_space->type->adjust_cspace_count)((pgs)->color_space, (pgs)->memory, delta)
	cs_proc_adjust_cspace_count((*adjust_cspace_count));

	/* Adjust reference counts of indirect color components. */

#define cs_proc_adjust_color_count(proc)\
  void proc(P4(const gs_client_color *, const gs_color_space *, gs_memory_t *, int))
#define cs_adjust_color_count(pgs, delta)\
  (*(pgs)->color_space->type->adjust_color_count)((pgs)->ccolor, (pgs)->color_space, (pgs)->memory, delta)
	cs_proc_adjust_color_count((*adjust_color_count));

/* Adjust both reference counts. */
#define cs_adjust_counts(pgs, delta)\
  cs_adjust_color_count(pgs, delta), cs_adjust_cspace_count(pgs, delta)

	/* Enumerate the pointers in a color space. */

	struct_proc_enum_ptrs((*enum_ptrs));

	/* Relocate the pointers in a color space. */

	struct_proc_reloc_ptrs((*reloc_ptrs));

};
/* Standard color space procedures */
cs_proc_init_color(gx_init_paint_1);
cs_proc_init_color(gx_init_paint_3);
cs_proc_init_color(gx_init_paint_4);
cs_proc_concrete_space(gx_no_concrete_space);
cs_proc_concrete_space(gx_same_concrete_space);
cs_proc_concretize_color(gx_no_concretize_color);
cs_proc_remap_color(gx_default_remap_color);
cs_proc_install_cspace(gx_no_install_cspace);
cs_proc_adjust_cspace_count(gx_no_adjust_cspace_count);
cs_proc_adjust_color_count(gx_no_adjust_color_count);
#define gx_no_cspace_enum_ptrs gs_no_struct_enum_ptrs
#define gx_no_cspace_reloc_ptrs gs_no_struct_reloc_ptrs

/* Macro for defining color space procedures. */
#define cs_declare_procs(scope, concretize, install, adjust, enum_p, reloc_p)\
  scope cs_proc_concretize_color(concretize);\
  scope cs_proc_install_cspace(install);\
  scope cs_proc_adjust_cspace_count(adjust);\
  scope struct_proc_enum_ptrs(enum_p);\
  scope struct_proc_reloc_ptrs(reloc_p)

/* Standard color space types */
extern const gs_color_space_type
	gs_color_space_type_DeviceGray,
	gs_color_space_type_DeviceRGB,
	gs_color_space_type_DeviceCMYK;

/* Define the allocator type for color spaces. */
extern_st(st_color_space);

#endif					/* gxcspace_INCLUDED */
