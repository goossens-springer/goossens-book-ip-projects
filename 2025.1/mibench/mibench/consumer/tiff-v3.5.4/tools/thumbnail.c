/* $Header: /home/mguthaus/.cvsroot/mibench/consumer/tiff-v3.5.4/tools/thumbnail.c,v 1.1.1.1 2000/11/06 19:52:42 mguthaus Exp $ */

/*
 * Copyright (c) 1994-1997 Sam Leffler
 * Copyright (c) 1994-1997 Silicon Graphics, Inc.
 *
 * Permission to use, copy, modify, distribute, and sell this software and 
 * its documentation for any purpose is hereby granted without fee, provided
 * that (i) the above copyright notices and this permission notice appear in
 * all copies of the software and related documentation, and (ii) the names of
 * Sam Leffler and Silicon Graphics may not be used in any advertising or
 * publicity relating to the software without the specific, prior written
 * permission of Sam Leffler and Silicon Graphics.
 * 
 * THE SOFTWARE IS PROVIDED "AS-IS" AND WITHOUT WARRANTY OF ANY KIND, 
 * EXPRESS, IMPLIED OR OTHERWISE, INCLUDING WITHOUT LIMITATION, ANY 
 * WARRANTY OF MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE.  
 * 
 * IN NO EVENT SHALL SAM LEFFLER OR SILICON GRAPHICS BE LIABLE FOR
 * ANY SPECIAL, INCIDENTAL, INDIRECT OR CONSEQUENTIAL DAMAGES OF ANY KIND,
 * OR ANY DAMAGES WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS,
 * WHETHER OR NOT ADVISED OF THE POSSIBILITY OF DAMAGE, AND ON ANY THEORY OF 
 * LIABILITY, ARISING OUT OF OR IN CONNECTION WITH THE USE OR PERFORMANCE 
 * OF THIS SOFTWARE.
 */
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>

#include "tiffio.h"

#define	streq(a,b)	(strcasecmp(a,b) == 0)

#ifndef howmany
#define	howmany(x, y)	(((x)+((y)-1))/(y))
#endif

typedef enum {
    EXP50,
    EXP60,
    EXP70,
    EXP80,
    EXP90,
    EXP,
    LINEAR
} Contrast;

static	uint32 tnw = 216;		/* thumbnail width */
static	uint32 tnh = 274;		/* thumbnail height */
static	Contrast contrast = LINEAR;	/* current contrast */
static	uint8* thumbnail;

static	int cpIFD(TIFF*, TIFF*);
static	int generateThumbnail(TIFF*, TIFF*);
static	void initScale();
static	void usage(void);

extern	char* optarg;
extern	int optind;

int
main(int argc, char* argv[])
{
    TIFF* in;
    TIFF* out;
    int c;

    while ((c = getopt(argc, argv, "w:h:c:")) != -1) {
	switch (c) {
	case 'w':	tnw = strtoul(optarg, NULL, 0); break;
	case 'h':	tnh = strtoul(optarg, NULL, 0); break;
	case 'c':	contrast = streq(optarg, "exp50") ? EXP50 :
				   streq(optarg, "exp60") ? EXP60 :
				   streq(optarg, "exp70") ? EXP70 :
				   streq(optarg, "exp80") ? EXP80 :
				   streq(optarg, "exp90") ? EXP90 :
				   streq(optarg, "exp")   ? EXP :
				   streq(optarg, "linear")? LINEAR :
							    EXP;
			break;
	default:	usage();
	}
    }
    if (argc-optind != 2)
	usage();
    thumbnail = (uint8*) _TIFFmalloc(tnw * tnh);
    out = TIFFOpen(argv[optind+1], "w");
    if (out == NULL)
	return (-2);
    in = TIFFOpen(argv[optind], "r");
    if (in != NULL) {
	initScale();
	do {
	    if (!generateThumbnail(in, out))
		goto bad;
	    if (!cpIFD(in, out) || !TIFFWriteDirectory(out))
		goto bad;
	} while (TIFFReadDirectory(in));
	(void) TIFFClose(in);
    }
    (void) TIFFClose(out);
    return (0);
bad:
    (void) TIFFClose(out);
    return (1);
}

#define	CopyField1(tag, v) \
    if (TIFFGetField(in, tag, &v)) TIFFSetField(out, tag, v)
#define	CopyField2(tag, v1, v2) \
    if (TIFFGetField(in, tag, &v1, &v2)) TIFFSetField(out, tag, v1, v2)
#define	CopyField3(tag, v1, v2, v3) \
    if (TIFFGetField(in, tag, &v1, &v2, &v3)) TIFFSetField(out, tag, v1, v2, v3)
#define	CopyField4(tag, v1, v2, v3, v4) \
    if (TIFFGetField(in, tag, &v1, &v2, &v3, &v4)) TIFFSetField(out, tag, v1, v2, v3, v4)

static void
cpTag(TIFF* in, TIFF* out, uint16 tag, uint16 count, TIFFDataType type)
{
    uint16 shortv, shortv2, *shortav;
    float floatv, *floatav;
    char *stringv;
    uint32 longv;

    switch (type) {
    case TIFF_SHORT:
	if (count == 1) {
	    CopyField1(tag, shortv);
	} else if (count == 2) {
	    CopyField2(tag, shortv, shortv2);
	} else if (count == (uint16) -1) {
	    CopyField2(tag, shortv, shortav);
	}
	break;
    case TIFF_LONG:
	CopyField1(tag, longv);
	break;
    case TIFF_RATIONAL:
	if (count == 1) {
	    CopyField1(tag, floatv);
	} else if (count == (uint16) -1) {
	    CopyField1(tag, floatav);
	}
	break;
    case TIFF_ASCII:
	CopyField1(tag, stringv);
	break;
    }
}
#undef CopyField4
#undef CopyField3
#undef CopyField2
#undef CopyField1

static struct cpTag {
    uint16	tag;
    uint16	count;
    TIFFDataType type;
} tags[] = {
    { TIFFTAG_IMAGEWIDTH,		1, TIFF_LONG },
    { TIFFTAG_IMAGELENGTH,		1, TIFF_LONG },
    { TIFFTAG_BITSPERSAMPLE,		1, TIFF_SHORT },
    { TIFFTAG_COMPRESSION,		1, TIFF_SHORT },
    { TIFFTAG_FILLORDER,		1, TIFF_SHORT },
    { TIFFTAG_SAMPLESPERPIXEL,		1, TIFF_SHORT },
    { TIFFTAG_ROWSPERSTRIP,		1, TIFF_LONG },
    { TIFFTAG_PLANARCONFIG,		1, TIFF_SHORT },
    { TIFFTAG_GROUP3OPTIONS,		1, TIFF_LONG },
    { TIFFTAG_SUBFILETYPE,		1, TIFF_LONG },
    { TIFFTAG_PHOTOMETRIC,		1, TIFF_SHORT },
    { TIFFTAG_THRESHHOLDING,		1, TIFF_SHORT },
    { TIFFTAG_DOCUMENTNAME,		1, TIFF_ASCII },
    { TIFFTAG_IMAGEDESCRIPTION,		1, TIFF_ASCII },
    { TIFFTAG_MAKE,			1, TIFF_ASCII },
    { TIFFTAG_MODEL,			1, TIFF_ASCII },
    { TIFFTAG_ORIENTATION,		1, TIFF_SHORT },
    { TIFFTAG_MINSAMPLEVALUE,		1, TIFF_SHORT },
    { TIFFTAG_MAXSAMPLEVALUE,		1, TIFF_SHORT },
    { TIFFTAG_XRESOLUTION,		1, TIFF_RATIONAL },
    { TIFFTAG_YRESOLUTION,		1, TIFF_RATIONAL },
    { TIFFTAG_PAGENAME,			1, TIFF_ASCII },
    { TIFFTAG_XPOSITION,		1, TIFF_RATIONAL },
    { TIFFTAG_YPOSITION,		1, TIFF_RATIONAL },
    { TIFFTAG_GROUP4OPTIONS,		1, TIFF_LONG },
    { TIFFTAG_RESOLUTIONUNIT,		1, TIFF_SHORT },
    { TIFFTAG_PAGENUMBER,		2, TIFF_SHORT },
    { TIFFTAG_SOFTWARE,			1, TIFF_ASCII },
    { TIFFTAG_DATETIME,			1, TIFF_ASCII },
    { TIFFTAG_ARTIST,			1, TIFF_ASCII },
    { TIFFTAG_HOSTCOMPUTER,		1, TIFF_ASCII },
    { TIFFTAG_WHITEPOINT,		1, TIFF_RATIONAL },
    { TIFFTAG_PRIMARYCHROMATICITIES,	(uint16) -1,TIFF_RATIONAL },
    { TIFFTAG_HALFTONEHINTS,		2, TIFF_SHORT },
    { TIFFTAG_BADFAXLINES,		1, TIFF_LONG },
    { TIFFTAG_CLEANFAXDATA,		1, TIFF_SHORT },
    { TIFFTAG_CONSECUTIVEBADFAXLINES,	1, TIFF_LONG },
    { TIFFTAG_INKSET,			1, TIFF_SHORT },
    { TIFFTAG_INKNAMES,			1, TIFF_ASCII },
    { TIFFTAG_DOTRANGE,			2, TIFF_SHORT },
    { TIFFTAG_TARGETPRINTER,		1, TIFF_ASCII },
    { TIFFTAG_SAMPLEFORMAT,		1, TIFF_SHORT },
    { TIFFTAG_YCBCRCOEFFICIENTS,	(uint16) -1,TIFF_RATIONAL },
    { TIFFTAG_YCBCRSUBSAMPLING,		2, TIFF_SHORT },
    { TIFFTAG_YCBCRPOSITIONING,		1, TIFF_SHORT },
    { TIFFTAG_REFERENCEBLACKWHITE,	(uint16) -1,TIFF_RATIONAL },
    { TIFFTAG_EXTRASAMPLES,		(uint16) -1, TIFF_SHORT },
};
#define	NTAGS	(sizeof (tags) / sizeof (tags[0]))

static void
cpTags(TIFF* in, TIFF* out)
{
    struct cpTag *p;
    for (p = tags; p < &tags[NTAGS]; p++)
	cpTag(in, out, p->tag, p->count, p->type);
}
#undef NTAGS

static int
cpStrips(TIFF* in, TIFF* out)
{
    tsize_t bufsize  = TIFFStripSize(in);
    unsigned char *buf = (unsigned char *)_TIFFmalloc(bufsize);

    if (buf) {
	tstrip_t s, ns = TIFFNumberOfStrips(in);
	uint32 *bytecounts;

	TIFFGetField(in, TIFFTAG_STRIPBYTECOUNTS, &bytecounts);
	for (s = 0; s < ns; s++) {
	    if (bytecounts[s] > bufsize) {
		buf = (unsigned char *)_TIFFrealloc(buf, bytecounts[s]);
		if (!buf)
		    return (0);
		bufsize = bytecounts[s];
	    }
	    if (TIFFReadRawStrip(in, s, buf, bytecounts[s]) < 0 ||
		TIFFWriteRawStrip(out, s, buf, bytecounts[s]) < 0) {
		_TIFFfree(buf);
		return (0);
	    }
	}
	_TIFFfree(buf);
	return (1);
    }
    return (0);
}

static int
cpTiles(TIFF* in, TIFF* out)
{
    tsize_t bufsize = TIFFTileSize(in);
    unsigned char *buf = (unsigned char *)_TIFFmalloc(bufsize);

    if (buf) {
	ttile_t t, nt = TIFFNumberOfTiles(in);
	uint32 *bytecounts;

	TIFFGetField(in, TIFFTAG_TILEBYTECOUNTS, &bytecounts);
	for (t = 0; t < nt; t++) {
	    if (bytecounts[t] > bufsize) {
		buf = (unsigned char *)_TIFFrealloc(buf, bytecounts[t]);
		if (!buf)
		    return (0);
		bufsize = bytecounts[t];
	    }
	    if (TIFFReadRawTile(in, t, buf, bytecounts[t]) < 0 ||
		TIFFWriteRawTile(out, t, buf, bytecounts[t]) < 0) {
		_TIFFfree(buf);
		return (0);
	    }
	}
	_TIFFfree(buf);
	return (1);
    }
    return (0);
}

static int
cpIFD(TIFF* in, TIFF* out)
{
    cpTags(in, out);
    if (TIFFIsTiled(in)) {
	if (!cpTiles(in, out))
	    return (0);
    } else {
	if (!cpStrips(in, out))
	    return (0);
    }
    return (1);
}

static	uint16	photometric;		/* current photometric of raster */
static	uint16	filterWidth;		/* filter width in pixels */
static	uint16	stepSrcWidth;		/* src image stepping width */
static	uint16	stepDstWidth;		/* dest stepping width */
static	uint8* src0;			/* horizontal bit stepping (start) */
static	uint8* src1;			/* horizontal bit stepping (middle) */
static	uint8* src2;			/* horizontal bit stepping (end) */
static	uint16* rowoff;		/* row offset for stepping */
static	uint8 cmap[256];		/* colormap indexes */
static	uint8 bits[256];		/* count of bits set */

static void
setupBitsTables()
{
    int i;
    for (i = 0; i < 256; i++) {
	int n = 0;
	if (i&0x01) n++;
	if (i&0x02) n++;
	if (i&0x04) n++;
	if (i&0x08) n++;
	if (i&0x10) n++;
	if (i&0x20) n++;
	if (i&0x40) n++;
	if (i&0x80) n++;
	bits[i] = n;
    }
}

static int clamp(float v, int low, int high)
    { return (v < low ? low : v > high ? high : (int)v); }

#ifndef M_E
#define M_E		2.7182818284590452354
#endif

static void
expFill(float pct[], uint32 p, uint32 n)
{
    uint32 i;
    uint32 c = (p * n) / 100;
    for (i = 1; i < c; i++)
	pct[i] = 1-exp(i/((double)(n-1)))/ M_E;
    for (; i < n; i++)
	pct[i] = 0.;
}

static void
setupCmap()
{
    float pct[256];			/* known to be large enough */
    uint32 i;
    pct[0] = 1;				/* force white */
    switch (contrast) {
    case EXP50: expFill(pct, 50, 256); break;
    case EXP60:	expFill(pct, 60, 256); break;
    case EXP70:	expFill(pct, 70, 256); break;
    case EXP80:	expFill(pct, 80, 256); break;
    case EXP90:	expFill(pct, 90, 256); break;
    case EXP:	expFill(pct, 100, 256); break;
    case LINEAR:
	for (i = 1; i < 256; i++)
	    pct[i] = 1-((float)i)/(256-1);
	break;
    }
    switch (photometric) {
    case PHOTOMETRIC_MINISWHITE:
	for (i = 0; i < 256; i++)
	    cmap[i] = clamp(255*pct[(256-1)-i], 0, 255);
	break;
    case PHOTOMETRIC_MINISBLACK:
	for (i = 0; i < 256; i++)
	    cmap[i] = clamp(255*pct[i], 0, 255);
	break;
    }
}

static void
initScale()
{
    src0 = (uint8*) _TIFFmalloc(sizeof (uint8) * tnw);
    src1 = (uint8*) _TIFFmalloc(sizeof (uint8) * tnw);
    src2 = (uint8*) _TIFFmalloc(sizeof (uint8) * tnw);
    rowoff = (uint16*) _TIFFmalloc(sizeof (uint16) * tnw);
    filterWidth = 0;
    stepDstWidth = stepSrcWidth = 0;
    setupBitsTables();
}

/*
 * Calculate the horizontal accumulation parameteres
 * according to the widths of the src and dst images.
 */
static void
setupStepTables(uint16 sw)
{
    if (stepSrcWidth != sw || stepDstWidth != tnw) {
	int step = sw;
	int limit = tnw;
	int err = 0;
	uint32 sx = 0;
	uint32 x;
	int fw;
	uint8 b;
	for (x = 0; x < tnw; x++) {
	    uint32 sx0 = sx;
	    err += step;
	    while (err >= limit) {
		err -= limit;
		sx++;
	    }
	    rowoff[x] = sx0 >> 3;
	    fw = sx - sx0;		/* width */
	    b = (fw < 8) ? 0xff<<(8-fw) : 0xff;
	    src0[x] = b >> (sx0&7);
	    fw -= 8 - (sx0&7);
	    if (fw < 0)
		fw = 0;
	    src1[x] = fw >> 3;
	    fw -= (fw>>3)<<3;
	    src2[x] = 0xff << (8-fw);
	}
	stepSrcWidth = sw;
	stepDstWidth = tnw;
    }
}

static void
setrow(uint8* row, int nrows, const uint8* rows[])
{
    uint32 x;
    uint32 area = nrows * filterWidth;
    for (x = 0; x < tnw; x++) {
	uint32 mask0 = src0[x];
	uint32 fw = src1[x];
	uint32 mask1 = src1[x];
	uint32 off = rowoff[x];
	uint32 acc = 0;
	uint32 y, i;
	for (y = 0; y < nrows; y++) {
	    const uint8* src = rows[y] + off;
	    acc += bits[*src++ & mask0];
	    switch (fw) {
	    default:
		for (i = fw; i > 8; i--)
		    acc += bits[*src++];
		/* fall thru... */
	    case 8: acc += bits[*src++];
	    case 7: acc += bits[*src++];
	    case 6: acc += bits[*src++];
	    case 5: acc += bits[*src++];
	    case 4: acc += bits[*src++];
	    case 3: acc += bits[*src++];
	    case 2: acc += bits[*src++];
	    case 1: acc += bits[*src++];
	    case 0: break;
	    }
	    acc += bits[*src & mask1];
	}
	*row++ = cmap[(255*acc)/area];
    }
}

/*
 * Install the specified image.  The
 * image is resized to fit the display page using
 * a box filter.  The resultant pixels are mapped
 * with a user-selectable contrast curve.
 */
static void
setImage1(const uint8* br, uint32 rw, uint32 rh)
{
    int step = rh;
    int limit = tnh;
    int err = 0;
    int bpr = howmany(rw,8);
    uint32 sy = 0;
    uint8* row = thumbnail;
    uint32 dy;
    for (dy = 0; dy < tnh; dy++) {
	const uint8* rows[256];
	int nrows = 1;
	rows[0] = br + bpr*sy;
	err += step;
	while (err >= limit) {
	    err -= limit;
	    sy++;
	    if (err >= limit)
		rows[nrows++] = br + bpr*sy;
	}
	setrow(row, nrows, rows);
	row += tnw;
    }
}

static void
setImage(const uint8* br, uint32 rw, uint32 rh)
{
    filterWidth = (uint16) ceil((double) rw / (double) tnw);
    setupStepTables(rw);
    setImage1(br, rw, rh);
}

static int
generateThumbnail(TIFF* in, TIFF* out)
{
    unsigned char* raster;
    unsigned char* rp;
    uint32 sw, sh, rps;
    uint16 bps, spp;
    tsize_t rowsize, rastersize;
    tstrip_t s, ns = TIFFNumberOfStrips(in);
    uint32 diroff[1];

    TIFFGetField(in, TIFFTAG_IMAGEWIDTH, &sw);
    TIFFGetField(in, TIFFTAG_IMAGELENGTH, &sh);
    TIFFGetFieldDefaulted(in, TIFFTAG_BITSPERSAMPLE, &bps);
    TIFFGetFieldDefaulted(in, TIFFTAG_SAMPLESPERPIXEL, &spp);
    TIFFGetFieldDefaulted(in, TIFFTAG_ROWSPERSTRIP, &rps);
    if (spp != 1 || bps != 1)
	return (0);
    rowsize = TIFFScanlineSize(in);
    rastersize = sh * rowsize;
    raster = (unsigned char*)_TIFFmalloc(rastersize);
    rp = raster;
    for (s = 0; s < ns; s++) {
	(void) TIFFReadEncodedStrip(in, s, rp, -1);
	rp += rps * rowsize;
    }
    TIFFGetField(in, TIFFTAG_PHOTOMETRIC, &photometric);
    setupCmap();
    setImage(raster, sw, sh);

    TIFFSetField(out, TIFFTAG_SUBFILETYPE, FILETYPE_REDUCEDIMAGE);
    TIFFSetField(out, TIFFTAG_IMAGEWIDTH, (uint32) tnw);
    TIFFSetField(out, TIFFTAG_IMAGELENGTH, (uint32) tnh);
    TIFFSetField(out, TIFFTAG_BITSPERSAMPLE, (uint16) 8);
    TIFFSetField(out, TIFFTAG_SAMPLESPERPIXEL, (uint16) 1);
    TIFFSetField(out, TIFFTAG_COMPRESSION, COMPRESSION_LZW);
    TIFFSetField(out, TIFFTAG_PHOTOMETRIC, PHOTOMETRIC_MINISWHITE);
    TIFFSetField(out, TIFFTAG_PLANARCONFIG, PLANARCONFIG_CONTIG);
    TIFFSetField(out, TIFFTAG_ORIENTATION, ORIENTATION_TOPLEFT);
    cpTag(in, out, TIFFTAG_SOFTWARE,		(uint16) -1, TIFF_ASCII);
    cpTag(in, out, TIFFTAG_IMAGEDESCRIPTION,	(uint16) -1, TIFF_ASCII);
    cpTag(in, out, TIFFTAG_DATETIME,		(uint16) -1, TIFF_ASCII);
    cpTag(in, out, TIFFTAG_HOSTCOMPUTER,	(uint16) -1, TIFF_ASCII);
    diroff[0] = 0;
    TIFFSetField(out, TIFFTAG_SUBIFD, 1, diroff);
    return (TIFFWriteEncodedStrip(out, 0, thumbnail, tnw*tnh) != -1 &&
            TIFFWriteDirectory(out) != -1);
}

char* stuff[] = {
"usage: thumbnail [options] input.tif output.tif",
"where options are:",
" -h #		specify thumbnail image height (default is 274)",
" -w #		specify thumbnail image width (default is 216)",
"",
" -c linear	use linear contrast curve",
" -c exp50	use 50% exponential contrast curve",
" -c exp60	use 60% exponential contrast curve",
" -c exp70	use 70% exponential contrast curve",
" -c exp80	use 80% exponential contrast curve",
" -c exp90	use 90% exponential contrast curve",
" -c exp		use pure exponential contrast curve",
NULL
};

static void
usage(void)
{
	char buf[BUFSIZ];
	int i;

	setbuf(stderr, buf);
	for (i = 0; stuff[i] != NULL; i++)
		fprintf(stderr, "%s\n", stuff[i]);
	exit(-1);
}
