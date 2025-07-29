/* Copyright (C) 1995, 1996 Aladdin Enterprises.  All rights reserved.
  
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

/* ireclaim.c */
/* Interpreter's interface to garbage collector */
#include "ghost.h"
#include "errors.h"
#include "gsstruct.h"
#include "iastate.h"
#include "dstack.h"			/* for dsbot, dsp, dict_set_top */
#include "estack.h"			/* for esbot, esp */
#include "ostack.h"			/* for osbot, osp */
#include "opdef.h"			/* for defining init procedure */
#include "store.h"			/* for make_array */

/* Import the static interpreter refs from interp.c. */
extern ref ref_static_stacks;
extern ref ref_ref_stacks[3];

/* Import preparation and cleanup routines. */
extern void file_gc_prepare(P0());
extern void dstack_gc_cleanup(P0());

/* Forward references */
private void gs_vmreclaim(P2(gs_dual_memory_t *, bool));

/* Initialize the GC hook in the allocator. */
private int ireclaim(P2(gs_dual_memory_t *, int));
private void
ireclaim_init(void)
{	gs_imemory.reclaim = ireclaim;
}

/* GC hook called when the allocator returns a VMerror (space = -1), */
/* or for vmreclaim (space = the space to collect). */
private int
ireclaim(gs_dual_memory_t *dmem, int space)
{	bool global;
	gs_ref_memory_t *mem;
	if ( space < 0 )
	  {	/* Determine which allocator got the VMerror. */
		gs_memory_status_t stats;
		int i;
		mem = dmem->space_global;	/* just in case */
		for ( i = 0; i < countof(dmem->spaces.indexed); ++i )
		  {	mem = dmem->spaces.indexed[i];
			if ( mem == 0 )
			  continue;
			if ( mem->gc_status.requested > 0 )
			  break;
		  }
		gs_memory_status((gs_memory_t *)mem, &stats);
		if ( stats.allocated >= mem->gc_status.max_vm )
		  {	/* We can't satisfy this request within max_vm. */
			return_error(e_VMerror);
		  }
	  }
	else
	  {	mem = dmem->spaces.indexed[space >> r_space_shift];
	  }
	if_debug3('0', "[0]GC called, space=%d, requestor=%d, requested=%ld\n",
		  space, mem->space, (long)mem->gc_status.requested);
	global = mem->space != avm_local;
	gs_vmreclaim(dmem, global);
	ialloc_set_limit(mem);
	ialloc_reset_requested(dmem);
	return 0;
}

/* Interpreter entry to garbage collector. */
/* This registers the stacks before calling the main GC. */
private void near set_ref_chunk(P4(chunk_t *, ref *, ref *, gs_ref_memory_t *));
private void
gs_vmreclaim(gs_dual_memory_t *dmem, bool global)
{	/*
	 * Create pseudo-chunks to hold the interpreter roots:
	 * copies of the ref_stacks, and, if necessary,
	 * the statically allocated stack bodies.
	 */
	gs_ref_memory_t *lmem = dmem->space_local;
	gs_ref_memory_t *gmem = dmem->space_global;
	gs_ref_memory_t *smem = dmem->space_system;
	struct ir_ {
		chunk_head_t head;
		obj_header_t prefix;
		ref refs[5+1];		/* +1 for extra relocation ref */
	} iroot_refs;
	chunk_t cir, css;
	void *piroot = &iroot_refs.refs[0];
	gs_gc_root_t iroot;

	alloc_close_chunk(lmem);
	if ( gmem != lmem )
	  alloc_close_chunk(gmem);
	alloc_close_chunk(smem);

	/*
	 * Copy the ref_stacks into the heap, so we can trace and
	 * relocate them.  Note that they are allocated in system VM.
	 */
#define stkmem smem
#define get_stack(i, stk)\
  ref_stack_cleanup(&stk);\
  iroot_refs.refs[i+2] = ref_ref_stacks[i],\
  *r_ptr(&iroot_refs.refs[i+2], ref_stack) = stk
	get_stack(0, d_stack);
	get_stack(1, e_stack);
	get_stack(2, o_stack);
#undef get_stack

	/* Make the root chunk. */
	iroot_refs.refs[1] = ref_static_stacks;
	make_array(&iroot_refs.refs[0], avm_system, 4, &iroot_refs.refs[1]);
	set_ref_chunk(&cir, &iroot_refs.refs[0], &iroot_refs.refs[5], stkmem);
	gs_register_ref_root((gs_memory_t *)stkmem, &iroot, &piroot,
			     "gs_gc_main");

	/* If necessary, make the static stack chunk. */
#define css_array iroot_refs.refs[1]
#define css_base css_array.value.refs
	if ( css_base != NULL )
	  set_ref_chunk(&css, css_base, css_base + r_size(&css_array), stkmem);

	/* Prune the file list so it won't retain potentially collectible */
	/* files. */
	file_gc_prepare();

	/* Do the actual collection. */
	gs_reclaim(&dmem->spaces, global);

	/* Remove the temporary chunks. */
	if ( css_base != NULL )
	  alloc_unlink_chunk(&css, stkmem);
	gs_unregister_root((gs_memory_t *)stkmem, &iroot, "gs_gc_main");
	alloc_unlink_chunk(&cir, stkmem);
#undef css_array
#undef css_base

	/* Update the static copies of the ref_stacks. */
#define put_stack(i, stk)\
  ref_ref_stacks[i].value.pstruct = iroot_refs.refs[i+2].value.pstruct,\
  stk = *r_ptr(&iroot_refs.refs[i+2], ref_stack)
	put_stack(0, d_stack);
	put_stack(1, e_stack);
	put_stack(2, o_stack);
#undef put_stack
#undef stkmem

	/* Update the cached value pointers in names. */

	dstack_gc_cleanup();

	/* Reopen the active chunks. */

	alloc_open_chunk(smem);
	if ( gmem != lmem )
	  alloc_open_chunk(gmem);
	alloc_open_chunk(lmem);

	/* Update caches */

	{ uint dcount = ref_stack_count(&d_stack);
	  ref_systemdict = *ref_stack_index(&d_stack, dcount - 1);
	}
	dict_set_top();
}
private void near
set_ref_chunk(chunk_t *cp, ref *bot, ref *top, gs_ref_memory_t *mem)
{	obj_header_t *pre = (obj_header_t *)bot - 1;
	chunk_head_t *head = (chunk_head_t *)pre - 1;
	pre->o_large = 1;		/* not relocatable */
	pre->o_lsize = 0;
	pre->o_lmark = o_l_unmarked;
	pre->o_size = (byte *)(top + 1) - (byte *)bot;
	pre->o_type = &st_refs;
	alloc_init_chunk(cp, (byte *)head, (byte *)(top + 1), false, NULL);	/* +1 for extra reloc ref */
	cp->cbot = cp->ctop;
	alloc_link_chunk(cp, mem);
	make_int(top, 0);		/* relocation ref */
}

/* ------ Initialization procedure ------ */

BEGIN_OP_DEFS(ireclaim_l2_op_defs) {
END_OP_DEFS(ireclaim_init) }
