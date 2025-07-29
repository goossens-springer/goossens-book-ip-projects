/* Copyright (C) 1993, 1995, 1997 Aladdin Enterprises.  All rights reserved.
  
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

/* zdevice2.c */
/* Level 2 device operators */
#include "math_.h"
#include "memory_.h"
#include "ghost.h"
#include "errors.h"
#include "oper.h"
#include "dstack.h"			/* for dict_find_name */
#include "estack.h"
#include "idict.h"
#include "idparam.h"
#include "igstate.h"
#include "iname.h"
#include "store.h"
#include "gxdevice.h"
#include "gsstate.h"

/* Imported data */
extern op_proc_p zcopy_procs[t_next_index];

/* Forward references */
private int z2copy_gstate(P1(os_ptr));
private int near push_callout(P1(const char _ds *));

/* Initialize by adding changing the `copy' operator for gstates. */
/* This is a hack -- we know that gstates are the only */
/* t_astruct subtype that implements copy. */
private void
zdevice2_init(void)
{	zcopy_procs[t_astruct] = z2copy_gstate;
}

/* - .currentshowpagecount <count> true */
/* - .currentshowpagecount false */
private int
zcurrentshowpagecount(register os_ptr op)
{	gx_device *dev = gs_currentdevice(igs);

	if ( (*dev_proc(dev, get_page_device))(dev) == 0 )
	  {	push(1);
		make_false(op);
	  }
	else
	  {	push(2);
		make_int(op - 1, dev->ShowpageCount);
		make_true(op);
	  }
	return 0;
}

/* - .doneshowpage - */
private int
zdoneshowpage(register os_ptr op)
{	gx_device *dev = gs_currentdevice(igs);

	if ( (*dev_proc(dev, get_page_device))(dev) != 0 )
	  dev->ShowpageCount++;
	return 0;
}

/* - .currentpagedevice <dict> <bool> */
private int
zcurrentpagedevice(register os_ptr op)
{	gx_device *dev = gs_currentdevice(igs);

	push(2);
	if ( (*dev_proc(dev, get_page_device))(dev) != 0 )
	  { op[-1] = istate->pagedevice;
	    make_true(op);
	  }
	else
	  { op[-1] = i_null_pagedevice;
	    make_false(op);
	  }
	return 0;
}

/* <dict> .setpagedevice - */
private int
zsetpagedevice(register os_ptr op)
{	int code;

/******
	if ( igs->in_cachedevice )
	  return_error(e_undefined);
 ******/
	check_type(*op, t_dictionary);
	check_dict_read(*op);
	/* Make the dictionary read-only. */
	code = zreadonly(op);
	if ( code < 0 )
	  return code;
	istate->pagedevice = *op;
	pop(1);
	return 0;
}

/* Default Install/BeginPage/EndPage procedures */
/* that just call the procedure in the device. */

/* - .callinstall - */
private int
zcallinstall(os_ptr op)
{	gx_device *dev = gs_currentdevice(igs);

	if ( (dev = (*dev_proc(dev, get_page_device))(dev)) != 0 )
	  {	int code = (*dev->page_procs.install)(dev, igs);
		if ( code < 0 )
		  return code;
	  }
	return 0;
}

/* <showpage_count> .callbeginpage - */
private int
zcallbeginpage(os_ptr op)
{	gx_device *dev = gs_currentdevice(igs);

	check_type(*op, t_integer);
	if ( (dev = (*dev_proc(dev, get_page_device))(dev)) != 0 )
	  {	int code = (*dev->page_procs.begin_page)(dev, igs);
		if ( code < 0 )
		  return code;
	  }
	pop(1);
	return 0;
}

/* <showpage_count> <reason_int> .callendpage <flush_bool> */
private int
zcallendpage(os_ptr op)
{	gx_device *dev = gs_currentdevice(igs);
	int code;

	check_type(op[-1], t_integer);
	check_type(*op, t_integer);
	if ( (dev = (*dev_proc(dev, get_page_device))(dev)) != 0 )
	  {	code = (*dev->page_procs.end_page)(dev, (int)op->value.intval, igs);
		if ( code < 0 )
		  return code;
		if ( code > 1 )
		  return_error(e_rangecheck);
	  }
	else
	  {	code = (op->value.intval == 2 ? 0 : 1);
	  }
	make_bool(op - 1, code);
	pop(1);
	return 0;
}

/* ------ Wrappers for operators that save the graphics state. ------ */

/* When saving the state with the current device a page device, */
/* we need to make sure that the page device dictionary exists */
/* so that grestore can use it to reset the device parameters. */
/* This may have significant performance consequences, but we don't see */
/* any way around it. */

/* Check whether we need to call out to create the page device dictionary. */
#define save_page_device(pgs)\
  (gs_int_gstate(pgs)->pagedevice.value.pdict ==\
     i_null_pagedevice.value.pdict &&\
   (*dev_proc(gs_currentdevice(pgs), get_page_device))(gs_currentdevice(pgs))\
     != 0)
   
/* - gsave - */
private int
z2gsave(os_ptr op)
{	if ( !save_page_device(igs) )
	  return gs_gsave(igs);
	return push_callout("%gsavepagedevice");
}
   
/* - save - */
private int
z2save(os_ptr op)
{	if ( !save_page_device(igs) )
	  return zsave(op);
	return push_callout("%savepagedevice");
}

/* - gstate <gstate> */
private int
z2gstate(os_ptr op)
{	if ( !save_page_device(igs) )
	  return zgstate(op);
	return push_callout("%gstatepagedevice");
}

/* <gstate1> <gstate2> copy <gstate2> */
private int
z2copy_gstate(os_ptr op)
{	if ( !save_page_device(igs) )
	  return zcopy_gstate(op);
	return push_callout("%copygstatepagedevice");
}

/* <gstate1> <gstate2> currentgstate <gstate2> */
private int
z2currentgstate(os_ptr op)
{	if ( !save_page_device(igs) )
	  return zcurrentgstate(op);
	return push_callout("%currentgstatepagedevice");
}

/* ------ Wrappers for operators that reset the graphics state. ------ */

/* Check whether we need to call out to restore the page device. */
private bool near
restore_page_device(const gs_state *pgs_old, const gs_state *pgs_new)
{	gx_device *dev_old = gs_currentdevice(pgs_old);
	gx_device *dev_new;
	gx_device *dev_t1;
	gx_device *dev_t2;

	if ( (dev_t1 = (*dev_proc(dev_old, get_page_device))(dev_old)) == 0 )
	  return false;
	dev_new = gs_currentdevice(pgs_new);
	if ( dev_old != dev_new )
	  { if ( (dev_t2 = (*dev_proc(dev_new, get_page_device))(dev_new)) == 0 )
	      return false;
	    if ( dev_t1 != dev_t2 )
	      return true;
	  }
	/* The current implementation of setpagedevice just sets new */
	/* parameters in the same device object, so we have to check */
	/* whether the page device dictionaries are the same. */
	{ const ref *pdict1 = &gs_int_gstate(pgs_old)->pagedevice;
	  const ref *pdict2 = &gs_int_gstate(pgs_new)->pagedevice;
	  return pdict1->value.pdict != pdict2->value.pdict;
	}
}

/* - grestore - */
private int
z2grestore(os_ptr op)
{	if ( !restore_page_device(igs, gs_state_saved(igs)) )
	  return gs_grestore(igs);
	return push_callout("%grestorepagedevice");
}

/* - grestoreall - */
private int
z2grestoreall(os_ptr op)
{	for ( ; ; )
	  { if ( !restore_page_device(igs, gs_state_saved(igs)) )
	      { bool done = !gs_state_saved(gs_state_saved(igs));

	        gs_grestore(igs);
		if ( done )
		  break;
	      }
	    else
	      return push_callout("%grestoreallpagedevice");
	  }
	return 0;
}

/* <save> restore - */
private int
z2restore(os_ptr op)
{	for ( ; ; )
	{	if ( !restore_page_device(igs, gs_state_saved(igs)) )
		{	zgrestore(op);
			if ( !gs_state_saved(gs_state_saved(igs)) )
			  break;
		}
		else
		  return push_callout("%restorepagedevice");
	}
	return zrestore(op);
}

/* <gstate> setgstate - */
private int
z2setgstate(os_ptr op)
{	check_stype(*op, st_igstate_obj);
	if ( !restore_page_device(igs, igstate_ptr(op)) )
	  return zsetgstate(op);
	return push_callout("%setgstatepagedevice");
}

/* ------ Initialization procedure ------ */

BEGIN_OP_DEFS(zdevice2_l2_op_defs) {
		op_def_begin_level2(),
	{"0.currentshowpagecount", zcurrentshowpagecount},
	{"0.currentpagedevice", zcurrentpagedevice},
	{"0.doneshowpage", zdoneshowpage},
	{"1.setpagedevice", zsetpagedevice},
		/* Note that the following replace prior definitions */
		/* in the indicated files: */
	{"0gsave", z2gsave},			/* zgstate.c */
	{"0save", z2save},			/* zvmem.c */
	{"0gstate", z2gstate},			/* zdps1.c */
	{"1currentgstate", z2currentgstate},	/* zdps1.c */
	{"0grestore", z2grestore},		/* zgstate.c */
	{"0grestoreall", z2grestoreall},	/* zgstate.c */
	{"1restore", z2restore},		/* zvmem.c */
	{"1setgstate", z2setgstate},		/* zdps1.c */
		/* Default Install/BeginPage/EndPage procedures */
		/* that just call the procedure in the device. */
	{"0.callinstall", zcallinstall},
	{"1.callbeginpage", zcallbeginpage},
	{"2.callendpage", zcallendpage},
END_OP_DEFS(zdevice2_init) }

/* ------ Internal routines ------ */

/* Call out to a PostScript procedure. */
private int near
push_callout(const char _ds *callout_name)
{	int code;

	check_estack(1);
	code = name_enter_string(callout_name, esp + 1);
	if ( code < 0 )
	  return code;
	++esp;
	r_set_attrs(esp, a_executable);
	return o_push_estack;
}
