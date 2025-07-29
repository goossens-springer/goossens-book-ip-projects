/* Copyright (C) 1991, 1995, 1996, 1997 Aladdin Enterprises.  All rights reserved.
  
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

/* gxclist.h */
/* Command list definitions for Ghostscript. */
/* Requires gxdevice.h and gxdevmem.h */

#ifndef gxclist_INCLUDED
#  define gxclist_INCLUDED

#include "gscspace.h"
#include "gxbcache.h"
#include "gxclio.h"
#include "gxistate.h"

/*
 * A command list is essentially a compressed list of driver calls.
 * Command lists are used to record an image that must be rendered in bands
 * for high-resolution and/or limited-memory printers.
 *
 * Command lists work in two phases.  The first phase records driver calls,
 * sorting them according to the band(s) they affect.  The second phase
 * reads back the commands band-by-band to create the bitmap images.
 * When opened, a command list is in the recording state; it switches
 * automatically from recording to reading when its get_bits procedure
 * is called.  Currently, there is a hack to reopen the device after
 * each page is processed, in order to switch back to recording.
 */

/*
 * The command list contains both commands for particular bands (the vast
 * majority) and commands that apply to a range of bands.  In order to
 * synchronize the two, we maintain the following invariant for buffered
 * commands:
 *
 *	If there are any band-range commands in the buffer, they are the
 *	first commands in the buffer, before any specific-band commands.
 *
 * To maintain this invariant, whenever we are about to put an band-range
 * command in the buffer, we check to see if the buffer already has any
 * band-range commands in it, and if so, whether they are the last commands
 * in the buffer and are for the same range; if the answer to any of these
 * questions is negative, we flush the buffer.
 */

/* ---------------- Public structures ---------------- */

/*
 * Define the parameters controlling banding.
 */
typedef struct gx_band_params_s {
  int BandWidth;			/* (optional) band width in pixels */
  int BandHeight;			/* (optional) */
  long BandBufferSpace;			/* (optional) */
} gx_band_params;
#define band_params_initial_values 0, 0, 0

/*
 * Define the information for a saved page.
 */
typedef struct gx_band_page_info_s {
  char cfname[60];		/* command file name */
  clist_file_ptr cfile;		/* command file, normally 0 */
  char bfname[60];		/* block file name */
  clist_file_ptr bfile;		/* block file, normally 0 */
  uint tile_cache_size;		/* size of tile cache */
  long bfile_end_pos;		/* ftell at end of bfile */
  gx_band_params band_params;	/* parameters used when writing band list */
				/* (actual values, no 0s) */
} gx_band_page_info;
/*
 * By convention, the structure member containing the above is called
 * page_info.  Define shorthand accessors for its members.
 */
#define page_cfile page_info.cfile
#define page_cfname page_info.cfname
#define page_bfile page_info.bfile
#define page_bfname page_info.bfname
#define page_tile_cache_size page_info.tile_cache_size
#define page_bfile_end_pos page_info.bfile_end_pos
#define page_band_height page_info.band_params.BandHeight

/*
 * Define a saved page object.  This consists of a snapshot of the device
 * structure, information about the page per se, and the num_copies
 * parameter of output_page.
 */
typedef struct gx_saved_page_s {
  gx_device device;
  char dname[8+1];		/* device name for checking */
  gx_band_page_info info;
  int num_copies;
} gx_saved_page;

/*
 * Define a saved page placed at a particular (X,Y) offset for rendering.
 */
typedef struct gx_placed_page_s {
  gx_saved_page *page;
  gs_int_point offset;
} gx_placed_page;

/* ---------------- Internal structures ---------------- */

/*
 * Currently, halftoning occurs during the first phase, producing calls
 * to tile_rectangle.  Both phases keep a cache of recently seen bitmaps
 * (halftone cells and characters), which allows writing only a short cache
 * index in the command list rather than the entire bitmap.
 *
 * We keep only a single cache for all bands, but since the second phase
 * reads the command lists for each band separately, we have to keep track
 * for each cache entry E and band B whether the definition of E has been
 * written into B's list.  We do this with a bit mask in each entry.
 *
 * Eventually, we will replace this entire arrangement with one in which
 * we pass the actual halftone screen (whitening order) to all bands
 * through the command list, and halftoning occurs on the second phase.
 * This not only will shrink the command list, but will allow us to apply
 * other rendering algorithms such as error diffusion in the second phase.
 */
typedef struct {
	ulong offset;		/* writing: offset from cdev->data, */
				/*   0 means unused */
				/* reading: offset from cdev->chunk.data */
} tile_hash;
typedef struct {
	gx_cached_bits_common;
	/* To save space, instead of storing rep_width and rep_height, */
	/* we store width / rep_width and height / rep_height. */
	byte x_reps, y_reps;
	ushort rep_shift;
	ushort index;		/* index in table (hash table when writing) */
	ushort num_bands;	/* # of 1-bits in the band mask */
	/* byte band_mask[]; */
#define ts_mask(pts) (byte *)((pts) + 1)
	/* byte bits[]; */
#define ts_bits(cldev,pts) (ts_mask(pts) + (cldev)->tile_band_mask_size)
} tile_slot;

/* Define the prefix on each command run in the writing buffer. */
typedef struct cmd_prefix_s cmd_prefix;
struct cmd_prefix_s {
	cmd_prefix *next;
	uint size;
};

/* Define the pointers for managing a list of command runs in the buffer. */
/* There is one of these for each band, plus one for band-range commands. */
typedef struct cmd_list_s {
	cmd_prefix *head, *tail;	/* list of commands for band */
} cmd_list;

/*
 * In order to keep the per-band state down to a reasonable size,
 * we store only a single set of the imager state parameters;
 * for each parameter, each band has a flag that says whether that band
 * 'knows' the current value of the parameters.
 */
extern const gs_imager_state clist_imager_state_initial;

/*
 * Define the main structure for holding command list state.
 * Unless otherwise noted, all elements are used in both the writing (first)
 * and reading (second) phase.
 */
typedef struct gx_clist_state_s gx_clist_state;
#define gx_device_clist_common\
	gx_device_forward_common;	/* (see gxdevice.h) */\
		/* Following must be set before writing or reading. */\
	/* gx_device *target; */	/* device for which commands */\
					/* are being buffered */\
	dev_proc_make_buffer_device((*make_buffer_device));\
	byte *data;			/* buffer area */\
	uint data_size;			/* size of buffer */\
	gx_band_params band_params;	/* band buffering parameters */\
		/* Following are used for both writing and reading. */\
	gx_bits_cache_chunk chunk;	/* the only chunk of bits */\
	gx_bits_cache bits;\
	uint tile_hash_mask;		/* size of tile hash table -1 */\
	uint tile_band_mask_size;	/* size of band mask preceding */\
					/* each tile in the cache */\
	tile_hash *tile_table;		/* table for tile cache: */\
					/* see tile_hash above */\
					/* (a hash table when writing) */\
	int ymin, ymax;			/* current band, <0 when writing */\
		/* Following are set when writing, read when reading. */\
	gx_band_page_info page_info;	/* page information */\
	int nbands			/* # of bands */

#define clist_band_height(cldev) ((cldev)->page_info.band_height)
#define clist_cfname(cldev) ((cldev)->page_info.cfname)
#define clist_cfile(cldev) ((cldev)->page_info.cfile)
#define clist_bfname(cldev) ((cldev)->page_info.bfname)
#define clist_bfile(cldev) ((cldev)->page_info.bfile)

/* Define the length of the longest dash pattern we are willing to store. */
/* (Strokes with longer patterns are converted to fills.) */
#define cmd_max_dash 11

/* Define the state of a band list when writing. */
typedef struct gx_device_clist_writer_s {
	gx_device_clist_common;		/* (must be first) */
	int error_code;			/* error returned by cmd_put_op */
	gx_clist_state *states;		/* current state of each band */
	byte *cbuf;			/* start of command buffer */
	byte *cnext;			/* next slot in command buffer */
	byte *cend;			/* end of command buffer */
	cmd_list *ccl;			/* &clist_state.list of last command */
	cmd_list band_range_list;	/* list of band-range commands */
	int band_range_min, band_range_max;	/* range for list */
	uint tile_max_size;		/* max size of a single tile (bytes) */
	uint tile_max_count;		/* max # of hash table entries */
	gx_strip_bitmap tile_params;	/* current tile parameters */
	int tile_depth;			/* current tile depth */
	int tile_known_min, tile_known_max;
					/* range of bands that knows the */
					/* current tile parameters */
	gs_imager_state imager_state;	/* current values of imager params */
	float dash_pattern[cmd_max_dash]; /* current dash pattern */
	const gx_clip_path *clip_path;	/* current clip path */
	gs_id clip_path_id;		/* id of current clip path */
	byte color_space;		/* current color space identifier */
					/* (only used for images) */
	gs_indexed_params indexed_params;  /* current indexed space parameters */
					/* (ditto) */
	gs_id transfer_ids[4];		/* ids of transfer maps */
	gs_id black_generation_id;	/* id of black generation map */
	gs_id undercolor_removal_id;	/* id of u.c.r. map */
	gs_id device_halftone_id;	/* id of device halftone */
	bool in_image;			/* true if we are inside an image */
					/* that we are passing through */
} gx_device_clist_writer;

/* Define the state of a band list when reading. */
/* For normal rasterizing, pages and num_pages are both 0. */
typedef struct gx_device_clist_reader_s {
	gx_device_clist_common;		/* (must be first) */
	const gx_placed_page *pages;
	int num_pages;
} gx_device_clist_reader;

typedef union gx_device_clist_s {
	struct _clc {
	  gx_device_clist_common;
	} common;
	gx_device_clist_reader reader;
	gx_device_clist_writer writer;
} gx_device_clist;

/* The device template itself is never used, only the procedures. */
extern gx_device_procs gs_clist_device_procs;

/* Reset (or prepare to append to) the command list after printing a page. */
int clist_finish_page(P2(gx_device *dev, bool flush));

#endif					/* gxclist_INCLUDED */
