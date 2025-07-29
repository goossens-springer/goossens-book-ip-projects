#    Copyright (C) 1994, 1995, 1996, 1997 Aladdin Enterprises.  All rights reserved.
# 
# This file is part of Aladdin Ghostscript.
# 
# Aladdin Ghostscript is distributed with NO WARRANTY OF ANY KIND.  No author
# or distributor accepts any responsibility for the consequences of using it,
# or for whether it serves any particular purpose or works at all, unless he
# or she says so in writing.  Refer to the Aladdin Ghostscript Free Public
# License (the "License") for full details.
# 
# Every copy of Aladdin Ghostscript must include a copy of the License,
# normally in a plain ASCII text file named PUBLIC.  The License grants you
# the right to copy, modify and redistribute Aladdin Ghostscript, but only
# under certain conditions described in the License.  Among other things, the
# License requires that the copyright notice and this notice be preserved on
# all copies.

# makefile for DesqView/X/gcc/X11 configuration.
# Note: this makefile assumes you are using gcc in ANSI mode.

#****************************************************************#
#   If you want to change options, DO NOT edit dvx-gcc.mak       #
#   or makefile.  Edit dgc-head.mak and run the tar_cat script.  #
#****************************************************************#

# ------------------------------- Options ------------------------------- #

####### The following are the only parts of the file you should need to edit.

# ------ Generic options ------ #

# Define the installation commands and target directories for
# executables and files.  The commands are only relevant to `make install';
# the directories also define the default search path for the
# initialization files (gs_*.ps) and the fonts.

INSTALL = install -c
INSTALL_PROGRAM = $(INSTALL) -m 755
INSTALL_DATA = $(INSTALL) -m 644

prefix = c:/bin
bindir = c:/bin
gsdatadir = c:/gs
gsfontdir = c:/gsfonts

docdir=$(gsdatadir)/doc
exdir=$(gsdatadir)/examples
GS_DOCDIR=$(docdir)

# Define the default directory/ies for the runtime
# initialization and font files.  Separate multiple directories with a ;.

GS_LIB_DEFAULT="$(gsdatadir);$(gsfontdir)"

# Define whether or not searching for initialization files should always
# look in the current directory first.  This leads to well-known security
# and confusion problems, but users insist on it.

SEARCH_HERE_FIRST=1

# Define the name of the interpreter initialization file.
# (There is no reason to change this.)

GS_INIT=gs_init.ps

# Choose generic configuration options.

# -DDEBUG
#	includes debugging features (-Z switch) in the code.
#	  Code runs substantially slower even if no debugging switches
#	  are set.
# -DNOPRIVATE
#	makes private (static) procedures and variables public,
#	  so they are visible to the debugger and profiler.
#	  No execution time or space penalty.

GENOPT=

# Define the name of the executable file.

GS=gs

# Define the directory where the IJG JPEG library sources are stored,
# and the major version of the library that is stored there.
# You may need to change this if the IJG library version changes.
# See jpeg.mak for more information.

JSRCDIR=jpeg-6a
JVERSION=6

# Define the directory where the PNG library sources are stored,
# and the version of the library that is stored there.
# You may need to change this if the libpng version changes.
# See libpng.mak for more information.

PSRCDIR=libpng
PVERSION=89

# Choose whether to use a shared version of the PNG library (-lpng).
# See gs.mak and make.txt for more information.

SHARE_LIBPNG=0

# Define the directory where the zlib sources are stored.
# See zlib.mak for more information.

ZSRCDIR=zlib

# Choose whether to use a shared version of the zlib library (-lgz).
# See gs.mak and make.txt for more information.

SHARE_ZLIB=0

# Define the configuration ID.  Read gs.mak carefully before changing this.

CONFIG=

# ------ Platform-specific options ------ #

# Define the name of the C compiler.

CC=gcc

# Define the other compilation flags.
# Add -DBSD4_2 for 4.2bsd systems.
# Add -DSYSV for System V or DG/UX.
# Add -DSYSV -D__SVR3 for SCO ODT, ISC Unix 2.2 or before,
#   or any System III Unix, or System V release 3-or-older Unix.
# Add -DSVR4 (not -DSYSV) for System V release 4.
# XCFLAGS can be set from the command line.
# We don't include -ansi, because this gets in the way of the platform-
#   specific stuff that <math.h> typically needs; nevertheless, we expect
#   gcc to accept ANSI-style function prototypes and function definitions.
XCFLAGS=

# Under DJGPP, since we strip the executable by default, we may as
# well *not* use '-g'.

# CFLAGS=-g -O $(XCFLAGS)
CFLAGS=-O $(XCFLAGS)

# Define platform flags for ld.
# Ultrix wants -x.
# SunOS 4.n may need -Bstatic.
# XLDFLAGS can be set from the command line.
XLDFLAGS=

LDFLAGS=$(XLDFLAGS)

# Define any extra libraries to link into the executable.
# ISC Unix 2.2 wants -linet.
# SCO Unix needs -lsocket if you aren't including the X11 driver.
# (Libraries required by individual drivers are handled automatically.)

EXTRALIBS=-lsys -lc

# Define the include switch(es) for the X11 header files.
# This can be null if handled in some other way (e.g., the files are
# in /usr/include, or the directory is supplied by an environment variable);
# in particular, SCO Xenix, Unix, and ODT just want
#XINCLUDE=
# Note that x_.h expects to find the header files in $(XINCLUDE)/X11,
# not in $(XINCLUDE).

XINCLUDE=

# Define the directory/ies and library names for the X11 library files.
# The former can be null if these files are in the default linker search path.
# Unfortunately, Quarterdeck's old libraries did not conform to the
# X11 conventions for naming, in that the main Xlib library was called
# libx.a, not libx11.a.  To make things worse, both are provided in
# the v2.00 library.  Creation dates indicate that 'libx.a' is left
# over from a previous build (or this could just be on my system, but
# others who have upgraded from the early version will have the same
# problem---SJT).  Thus I will make the default to look for
# 'libx11.a', since v1.0x does *not* have it and the linker will
# complain.  With the reverse default, the linker will find to the
# obsolete library on some systems.

# XLIBDIRS includes a prefix -L; XLIBDIR does not.
XLIBDIRS=
XLIBDIR=
# reverse the comments if you have QDDVX10x or the prerelease version
# of QDLIB200 (still available on some Simtel mirrors, unfortunately)
# XLIBS=Xt Xext X
XLIBS=Xt Xext X11

# Define whether this platform has floating point hardware:
#	FPU_TYPE=2 means floating point is faster than fixed point.
# (This is the case on some RISCs with multiple instruction dispatch.)
#	FPU_TYPE=1 means floating point is at worst only slightly slower
# than fixed point.
#	FPU_TYPE=0 means that floating point may be considerably slower.
#	FPU_TYPE=-1 means that floating point is always much slower than
# fixed point.

FPU_TYPE=1

# ------ Devices and features ------ #

# Choose the language feature(s) to include.  See gs.mak for details.

FEATURE_DEVS=level2.dev pdf.dev

# Choose whether to compile the .ps initialization files into the executable.
# See gs.mak for details.

COMPILE_INITS=0

# Choose whether to store band lists on files or in memory.
# The choices are 'file' or 'memory'.

BAND_LIST_STORAGE=file

# Choose which compression method to use when storing band lists in memory.
# The choices are 'lzw' or 'zlib'.  lzw is not recommended, because the
# LZW-compatible code in Ghostscript doesn't actually compress its input.

BAND_LIST_COMPRESSOR=zlib

# Choose the implementation of file I/O: 'stdio', 'fd', or 'both'.
# See gs.mak and sfilefd.c for more details.

FILE_IMPLEMENTATION=stdio

# Choose the device(s) to include.  See devs.mak for details.

DEVICE_DEVS=x11.dev
DEVICE_DEVS1=
DEVICE_DEVS2=
DEVICE_DEVS3=deskjet.dev djet500.dev laserjet.dev ljetplus.dev ljet2p.dev ljet3.dev ljet4.dev
DEVICE_DEVS4=cdeskjet.dev cdjcolor.dev cdjmono.dev cdj550.dev pj.dev pjxl.dev pjxl300.dev
DEVICE_DEVS5=paintjet.dev pjetxl.dev
DEVICE_DEVS6=
DEVICE_DEVS7=
DEVICE_DEVS8=
DEVICE_DEVS9=pbm.dev pbmraw.dev pgm.dev pgmraw.dev pgnm.dev pgnmraw.dev pnm.dev pnmraw.dev ppm.dev ppmraw.dev
DEVICE_DEVS10=tiffcrle.dev tiffg3.dev tiffg32d.dev tiffg4.dev tifflzw.dev tiffpack.dev
DEVICE_DEVS11=tiff12nc.dev tiff24nc.dev
DEVICE_DEVS12=psmono.dev psgray.dev bit.dev bitrgb.dev bitcmyk.dev
DEVICE_DEVS13=
DEVICE_DEVS14=
DEVICE_DEVS15=

# ---------------------------- End of options --------------------------- #

# Define the name of the partial makefile that specifies options --
# used in dependencies.

MAKEFILE=dgc-head.mak

# Define the ANSI-to-K&R dependency.  (gcc accepts ANSI syntax.)

AK=

# Define the compilation rules and flags.

CCC=$(CC) $(CCFLAGS) -c
CCLEAF=$(CCC) -fomit-frame-pointer

# --------------------------- Generic makefile ---------------------------- #

# The remainder of the makefile (unixhead.mak, gs.mak, devs.mak, unixtail.mak)
# is generic.  tar_cat concatenates all these together.
