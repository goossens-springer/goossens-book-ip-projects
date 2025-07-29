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

/* inamedef.h */
/* Name table definition */
#include "iname.h"
#include "gconfigv.h"		/* defines EXTEND_NAMES */

/*
 * The name table machinery has two slightly different configurations:
 * a faster one that limits the total number of names to 64K and allows
 * names up to 16K in size, and a slightly slower one that limits
 * the total to 4M and restricts names to 256 characters.
 */
#if arch_sizeof_int < 4
#  undef EXTEND_NAMES		/* no extended names if ints are short */
#endif
#ifndef EXTEND_NAMES		/* # of bits beyond 16 */
#  define EXTEND_NAMES 0
#endif
#define max_name_extension_bits 6
#if EXTEND_NAMES > max_name_extension_bits
#  undef EXTEND_NAMES
#  define EXTEND_NAMES max_name_extension_bits
#endif
/*	 
 * We capture the small algorithmic differences between these two
 * configurations entirely in this header file;
 * the implementation doesn't need any conditionals on EXTEND_NAMES.
 */
#define max_name_index (uint)((0x10000 << EXTEND_NAMES) - 1)
/* As explained below, we distinguish name indices from name counts. */
#define max_name_count max_name_index

/* ---------------- Structure definitions ---------------- */

/*
 * Define the structure of a name.  The next_index "pointer" is used for
 * the chained hash table in the name_table, and also for the list of
 * free names.  The pvalue member implements an important optimization
 * to avoid lookup for operator and other global names.
 */
struct name_s {
	ushort next_index;	/* (low bits of) next name in chain or 0 */
	unsigned foreign_string : 1; /* string is allocated statically */
	unsigned mark : 1;	/* GC mark bit */
#if EXTEND_NAMES
#  define name_extension_bits 6
	unsigned my_extension : name_extension_bits;	/* high-order bits */
#  define set_name_extension(pname, xbits) ((pname)->my_extension = xbits)
#else
#  define name_extension_bits 0
#  define set_name_extension(name, xbits) DO_NOTHING
#endif
				/* of index for this name */
#define name_string_size_bits (14 - name_extension_bits)
#define max_name_string ((1 << name_string_size_bits) - 1)
	unsigned string_size : name_string_size_bits;
	const byte *string_bytes;
/* pvalue specifies the definition status of the name: */
/*	pvalue == pv_no_defn: no definitions */
#define pv_no_defn ((ref *)0)
/*	pvalue == pv_other: other status */
#define pv_other ((ref *)1)
/*	pvalue != pv_no_defn, pvalue != pv_other: pvalue is valid */
#define pv_valid(pvalue) ((unsigned long)(pvalue) > 1)
	ref *pvalue;		/* if only defined in systemdict */
				/* or userdict, this points to */
				/* the value */
};
/*typedef struct name_s name;*/		/* in iref.h */

/*
 * Define the structure of a name table.  Normally we would make this
 * an opaque type, but we want to be able to in-line some of the
 * access procedures.
 *
 * The name table is a two-level indexed table, consisting of
 * sub-tables of size nt_sub_size each.
 *
 * First we define the name sub-table structure.
 */
#define nt_log2_sub_size (7 + (EXTEND_NAMES / 2))
# define nt_sub_size (1 << nt_log2_sub_size)
# define nt_sub_index_mask (nt_sub_size - 1)
typedef struct name_sub_table_s {
	name names[nt_sub_size];	/* must be first */
#if EXTEND_NAMES
	byte next_index_extension[nt_sub_size];	/* high-order bits */
					/* of next_index */
#  define name_next_index(nidx, pname)\
     (	(((name_sub_table *)((pname) - ((nidx) & nt_sub_index_mask)))->\
	  next_index_extension[(nidx) & nt_sub_index_mask] << 16) +\
	((pname)->next_index)\
     )	
#  define set_name_next_index(nidx, pname, next)\
     ( ((name_sub_table *)((pname) - ((nidx) & nt_sub_index_mask)))->\
	  next_index_extension[(nidx) & nt_sub_index_mask] =\
	 (byte)((next) >> 16),\
       (pname)->next_index = (ushort)(next)\
     )
#else		/* !EXTEND_NAMES */
#  define name_next_index(nidx, pname)\
     ((pname)->next_index)
#  define set_name_next_index(nidx, pname, next)\
     ((pname)->next_index = (next))
#endif		/* (!)EXTEND_NAMES */
} name_sub_table;
/*
 * Now define the name table itself.
 * This must be made visible so that the interpreter can use the
 * inline macros defined below.
 */
#define nt_hash_size (1024 << (EXTEND_NAMES / 2))  /* must be a power of 2 */
struct name_table_s {
	uint free;		/* head of free list, which is sorted in */
				/* increasing count (not index) order */
	uint sub_next;		/* index of next sub-table to allocate */
				/* if not already allocated */
	uint sub_count;		/* index of highest allocated sub-table +1 */
	uint max_sub_count;	/* max allowable value of sub_count */
	gs_memory_t *memory;
	uint hash[nt_hash_size];
	name_sub_table *sub_tables[max_name_index / nt_sub_size + 1];
};
/*typedef struct name_table_s name_table;*/	/* in iname.h */

/* ---------------- Procedural interface ---------------- */

/* Convert between names and indices.  Note that the inline versions, */
/* but not the procedure versions, take a name_table argument. */
		/* ref => index */
#if EXTEND_NAMES
#  define name_index_inline(pnref)\
     ( ((uint)((pnref)->value.pname->my_extension) << 16) + r_size(pnref) )
#else
#  define name_index_inline(pnref) r_size(pnref)
#endif
#define name_index(pnref) name_index_inline(pnref)
		/* index => name */
#define name_index_ptr_inline(nt, nidx)\
  ((nt)->sub_tables[(nidx) >> nt_log2_sub_size]->names + ((nidx) & nt_sub_index_mask))
		/* index => ref */
#define name_index_ref_inline(nt, nidx, pnref)\
  make_name(pnref, nidx, name_index_ptr_inline(nt, nidx));
		/* name => ref */
/* We have to set the space to system so that the garbage collector */
/* won't think names are foreign and therefore untraceable. */
#define make_name(pnref, nidx, pnm)\
  make_tasv(pnref, t_name, avm_system, (ushort)(nidx), pname, pnm)

/* ------ Garbage collection ------ */

/* Unmark all names, except for 1-character permanent names, */
/* before a garbage collection. */
void name_unmark_all(P0());

/* Finish tracing the name table by putting free names on the free list. */
void name_trace_finish(P1(gc_state_t *));

/* ------ Save/restore ------ */

/* Clean up the name table before a restore, */
/* by removing names whose count is less than old_count. */
#ifndef alloc_save_t_DEFINED		/* also in isave.h */
typedef struct alloc_save_s alloc_save_t;
#  define alloc_save_t_DEFINED
#endif
void name_restore(P1(alloc_save_t *));

/* ---------------- Name count/index maintenance ---------------- */

/*
 * We scramble the assignment order within a sub-table, so that
 * dictionary lookup doesn't have to scramble the index.
 * The scrambling algorithm must have three properties:
 *	- It must map 0 to 0;
 *	- It must only scramble the sub-table index;
 *	- It must be a permutation on the sub-table index.
 * Something very simple works just fine.
 */
#define name_count_to_index(cnt)\
  (((cnt) & (-nt_sub_size)) +\
   (((cnt) * 59) & nt_sub_index_mask))
/*
 * The reverse permutation requires finding a number R such that
 * 59*R = 1 mod nt_sub_size.  For nt_sub_size any power of 2 up to 2048,
 * R = 243 will work.  Currently, this is only needed for debugging printout.
 */
#define name_index_to_count(nidx)\
  (((nidx) & (-nt_sub_size)) +\
   (((nidx) * 243) & nt_sub_index_mask))
