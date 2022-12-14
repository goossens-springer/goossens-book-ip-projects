# Generated automatically from Makefile.in by configure.
#
# mad - MPEG audio decoder
# Copyright (C) 2000-2001 Robert Leslie
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 2 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
#
# $Id: Makefile.in,v 1.19 2001/11/09 02:38:25 rob Exp $
#

SHELL =		/bin/sh

srcdir =	.
top_srcdir =	..

PACKAGE =	mad
VERSION =	0.14.2b

CC =		riscv32-unknown-elf-gcc

DEBUG =		-Wall -O2 #-g
CFLAGS =	$(DEBUG) -m486
CPPFLAGS =	-DHAVE_CONFIG_H  \
		-I. -I.. -I$(top_srcdir)  \
		-I../libmad -I$(top_srcdir)/libid3tag -I../intl

DLL_EXP_DEF =	$(srcdir)/in_mad.def
DLL_CFLAGS =	-mno-cygwin
DLL_LDFLAGS =	-mwindows -L../libmad/.libs -L../libid3tag/.libs -L../libz
DLL_LDLIBS =	-lmad -lid3tag -lz -lwininet -lcomctl32
DLL_OBJS =	in_mad.o xing.o resource.o
DLL_LIBOBJS =	../libmad/.libs/libmad.a ../libid3tag/.libs/libid3tag.a  \
		../libz/libz.a

all: in_mad.dll

pimp: MAD\ plug-in\ $(VERSION).exe

MAD\ plug-in\ $(VERSION).exe: in_mad.dll in_mad.txt in_mad.psc
	strip in_mad.dll
	test $(srcdir) = . || cp $(srcdir)/in_mad.txt .
	makepimp in_mad.psc

in_mad.dll: $(DLL_OBJS) $(DLL_LIBOBJS)
	dllwrap --target=i386-mingw32 --driver-name=$(CC) $(DLL_CFLAGS)  \
		--def $(DLL_EXP_DEF) -o $@  \
		$(DLL_OBJS)  \
		$(DLL_LDFLAGS)  \
		$(DLL_LDLIBS)

in_mad.o: in_mad.c ../config.h ../global.h  \
	resource.h messages.h in2.h out.h  \
	../libmad/mad.h $(top_srcdir)/libid3tag/id3tag.h $(top_srcdir)/xing.h

xing.o: $(top_srcdir)/xing.c $(top_srcdir)/xing.h ../config.h ../global.h
	$(CC) -c $(DLL_CFLAGS) $(CFLAGS) $(CPPFLAGS) -o $@ $<

.c.o:
	$(CC) -c $(DLL_CFLAGS) $(CFLAGS) $(CPPFLAGS) -o $@ $<

resource.o: $(srcdir)/resource.rc $(srcdir)/messages.rc
	windres --include-dir $(srcdir) -o $@ $<

$(srcdir)/messages.rc $(srcdir)/messages.h: $(srcdir)/messages.mc
	cd $(srcdir) && mc -v -c messages.mc

Makefile: Makefile.in ../config.status
	cd .. && CONFIG_FILES=winamp/Makefile CONFIG_HEADERS= ./config.status

in_mad.psc: in_mad.psc.in ../config.status
	cd .. && CONFIG_FILES=winamp/in_mad.psc CONFIG_HEADERS= ./config.status

clean:
	rm -f *.dll *.o *.exe *.a

distclean: clean
	rm -f Makefile in_mad.psc

maintainer-clean:

again: clean all

distdir = $(PACKAGE)-$(VERSION)

DISTFILES =  \
	Makefile.in  \
	in2.h out.h  \
	in_mad.c in_mad.def in_mad.psc.in in_mad.txt  \
	resource.h resource.rc  \
	messages.mc messages.h messages.rc MSG00001.bin  \
	id3genre.dat

distdir: $(DISTFILES)
	-rm -rf $(distdir)
	mkdir $(distdir)
	-chmod 777 $(distdir)
	@for file in $(DISTFILES); do \
	  d=$(srcdir); \
	  if test -d $$d/$$file; then \
	    cp -pr $$d/$$file $(distdir)/$$file; \
	  else \
	    test -f $(distdir)/$$file \
	    || ln $$d/$$file $(distdir)/$$file 2> /dev/null \
	    || cp -p $$d/$$file $(distdir)/$$file || :; \
	  fi; \
	done

dvi:
check:
install:
installcheck:
tags:

.PHONY: all pimp
.PHONY: clean distclean maintainer-clean again distdir
.PHONY: dvi check install installcheck tags
