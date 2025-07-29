/* $Header: /home/mguthaus/.cvsroot/mibench/consumer/tiff-v3.5.4/tools/tiff2rgba.c,v 1.1.1.1 2000/11/06 19:52:46 mguthaus Exp $ */

/*
 * Copyright (c) 1991-1997 Sam Leffler
 * Copyright (c) 1991-1997 Silicon Graphics, Inc.
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
#include <string.h>
#include <stdlib.h>

#include "tiffio.h"

#define	streq(a,b)	(strcmp(a,b) == 0)
#define	CopyField(tag, v) \
    if (TIFFGetField(in, tag, &v)) TIFFSetField(out, tag, v)

#ifndef howmany
#define	howmany(x, y)	(((x)+((y)-1))/(y))
#endif
#define	roundup(x, y)	(howmany(x,y)*((uint32)(y)))

uint16	compression = COMPRESSION_PACKBITS;
uint32	rowsperstrip = (uint32) -1;
int	process_by_block = 0; /* default is whole image at once */


static	int tiffcvt(TIFF* in, TIFF* out);
static	void usage(void);

int
main(int argc, char* argv[])
{
    TIFF *in, *out;
    int c;
    extern int optind;
    extern char *optarg;

    while ((c = getopt(argc, argv, "c:r:t:b")) != -1)
        switch (c) {
          case 'b':
            process_by_block = 1;
            break;
            
          case 'c':
            if (streq(optarg, "none"))
                compression = COMPRESSION_NONE;
            else if (streq(optarg, "packbits"))
                compression = COMPRESSION_PACKBITS;
            else if (streq(optarg, "lzw"))
                compression = COMPRESSION_LZW;
            else if (streq(optarg, "jpeg"))
                compression = COMPRESSION_JPEG;
            else
                usage();
            break;

          case 'r':
            rowsperstrip = atoi(optarg);
            break;

          case 't':
            rowsperstrip = atoi(optarg);
            break;
            
          case '?':
            usage();
            /*NOTREACHED*/
        }

    if (argc - optind < 2)
        usage();

    out = TIFFOpen(argv[argc-1], "w");
    if (out == NULL)
        return (-2);

    for (; optind < argc-1; optind++) {
        in = TIFFOpen(argv[optind], "r");
        if (in != NULL) {
            do {
                if (!tiffcvt(in, out) ||
                    !TIFFWriteDirectory(out)) {
                    (void) TIFFClose(out);
                    return (1);
                }
            } while (TIFFReadDirectory(in));
            (void) TIFFClose(in);
        }
    }
    (void) TIFFClose(out);
    return (0);
}

static int
cvt_by_tile( TIFF *in, TIFF *out )

{
    uint32* raster;			/* retrieve RGBA image */
    uint32  width, height;		/* image width & height */
    uint32  tile_width, tile_height;
    uint32  row, col;
    uint32  *wrk_line;
    int	    ok = 1;

    TIFFGetField(in, TIFFTAG_IMAGEWIDTH, &width);
    TIFFGetField(in, TIFFTAG_IMAGELENGTH, &height);

    if( !TIFFGetField(in, TIFFTAG_TILEWIDTH, &tile_width)
        || !TIFFGetField(in, TIFFTAG_TILELENGTH, &tile_height) ) {
        TIFFError(TIFFFileName(in), "Source image not tiled");
        return (0);
    }
    
    TIFFSetField(out, TIFFTAG_TILEWIDTH, tile_width );
    TIFFSetField(out, TIFFTAG_TILELENGTH, tile_height );

    /*
     * Allocate tile buffer
     */
    raster = (uint32*)_TIFFmalloc(tile_width * tile_height * sizeof (uint32));
    if (raster == 0) {
        TIFFError(TIFFFileName(in), "No space for raster buffer");
        return (0);
    }

    /*
     * Allocate a scanline buffer for swapping during the vertical
     * mirroring pass.
     */
    wrk_line = (uint32*)_TIFFmalloc(tile_width * sizeof (uint32));
    if (wrk_line == 0) {
        TIFFError(TIFFFileName(in), "No space for raster scanline buffer");
        ok = 0;
    }
    
    /*
     * Loop over the tiles.
     */
    for( row = 0; ok && row < height; row += tile_height )
    {
        for( col = 0; ok && col < width; col += tile_width )
        {
            int		i_row;

            /* Read the tile into an RGBA array */
            if (!TIFFReadRGBATile(in, col, row, raster)) {
                ok = 0;
                break;
            }

            /*
             * For some reason the TIFFReadRGBATile() function chooses the
             * lower left corner as the origin.  Vertically mirror scanlines.
             */
            for( i_row = 0; i_row < tile_height / 2; i_row++ )
            {
                uint32	*top_line, *bottom_line;

                top_line = raster + tile_width * i_row;
                bottom_line = raster + tile_width * (tile_height-i_row-1);

                _TIFFmemcpy(wrk_line, top_line, 4*tile_width);
                _TIFFmemcpy(top_line, bottom_line, 4*tile_width);
                _TIFFmemcpy(bottom_line, wrk_line, 4*tile_width);
            }

            /*
             * Write out the result in a tile.
             */

            if( TIFFWriteEncodedTile( out,
                                      TIFFComputeTile( out, col, row, 0, 0),
                                      raster,
                                      4 * tile_width * tile_height ) == -1 )
            {
                ok = 0;
                break;
            }
        }
    }

    _TIFFfree( raster );
    _TIFFfree( wrk_line );

    return ok;
}

static int
cvt_by_strip( TIFF *in, TIFF *out )

{
    uint32* raster;			/* retrieve RGBA image */
    uint32  width, height;		/* image width & height */
    uint32  row;
    uint32  *wrk_line;
    int	    ok = 1;

    TIFFGetField(in, TIFFTAG_IMAGEWIDTH, &width);
    TIFFGetField(in, TIFFTAG_IMAGELENGTH, &height);

    if( !TIFFGetField(in, TIFFTAG_ROWSPERSTRIP, &rowsperstrip) ) {
        TIFFError(TIFFFileName(in), "Source image not in strips");
        return (0);
    }
    
    TIFFSetField(out, TIFFTAG_ROWSPERSTRIP, rowsperstrip);

    /*
     * Allocate strip buffer
     */
    raster = (uint32*)_TIFFmalloc(width * rowsperstrip * sizeof (uint32));
    if (raster == 0) {
        TIFFError(TIFFFileName(in), "No space for raster buffer");
        return (0);
    }

    /*
     * Allocate a scanline buffer for swapping during the vertical
     * mirroring pass.
     */
    wrk_line = (uint32*)_TIFFmalloc(width * sizeof (uint32));
    if (wrk_line == 0) {
        TIFFError(TIFFFileName(in), "No space for raster scanline buffer");
        ok = 0;
    }
    
    /*
     * Loop over the strips.
     */
    for( row = 0; ok && row < height; row += rowsperstrip )
    {
        int	rows_to_write, i_row;

        /* Read the strip into an RGBA array */
        if (!TIFFReadRGBAStrip(in, row, raster)) {
            ok = 0;
            break;
        }

        /*
         * Figure out the number of scanlines actually in this strip.
         */
        if( row + rowsperstrip > height )
            rows_to_write = height - row;
        else
            rows_to_write = rowsperstrip;

        /*
         * For some reason the TIFFReadRGBAStrip() function chooses the
         * lower left corner as the origin.  Vertically mirror scanlines.
         */

        for( i_row = 0; i_row < rows_to_write / 2; i_row++ )
        {
            uint32	*top_line, *bottom_line;

            top_line = raster + width * i_row;
            bottom_line = raster + width * (rows_to_write-i_row-1);

            _TIFFmemcpy(wrk_line, top_line, 4*width);
            _TIFFmemcpy(top_line, bottom_line, 4*width);
            _TIFFmemcpy(bottom_line, wrk_line, 4*width);
        }

        /*
         * Write out the result in a strip
         */

        if( TIFFWriteEncodedStrip( out, row / rowsperstrip, raster,
                                   4 * rows_to_write * width ) == -1 )
        {
            ok = 0;
            break;
        }
    }

    _TIFFfree( raster );
    _TIFFfree( wrk_line );

    return ok;
}

/*
 * cvt_whole_image()
 *
 * read the whole image into one big RGBA buffer and then write out
 * strips from that.  This is using the traditional TIFFReadRGBAImage()
 * API that we trust.
 */

static int
cvt_whole_image( TIFF *in, TIFF *out )

{
    uint32* raster;			/* retrieve RGBA image */
    uint32  width, height;		/* image width & height */
    uint32	row;
    uint32  *wrk_line;
        
        
    TIFFGetField(in, TIFFTAG_IMAGEWIDTH, &width);
    TIFFGetField(in, TIFFTAG_IMAGELENGTH, &height);

    rowsperstrip = TIFFDefaultStripSize(out, rowsperstrip);
    TIFFSetField(out, TIFFTAG_ROWSPERSTRIP, rowsperstrip);

    raster = (uint32*)_TIFFmalloc(width * height * sizeof (uint32));
    if (raster == 0) {
        TIFFError(TIFFFileName(in), "No space for raster buffer");
        return (0);
    }

    /* Read the image in one chunk into an RGBA array */
    if (!TIFFReadRGBAImage(in, width, height, raster, 0)) {
        _TIFFfree(raster);
        return (0);
    }

    /* For some reason the TIFFReadRGBAImage() function chooses the
       lower left corner as the origin.  Vertically mirror scanlines. */

    wrk_line = (uint32*)_TIFFmalloc(width * sizeof (uint32));
    if (wrk_line == 0) {
        TIFFError(TIFFFileName(in), "No space for raster scanline buffer");
        return (0);
    }
    
    for( row = 0; row < height / 2; row++ )
    {
        uint32	*top_line, *bottom_line;

        top_line = raster + width * row;
        bottom_line = raster + width * (height-row-1);

        _TIFFmemcpy(wrk_line, top_line, 4*width);
        _TIFFmemcpy(top_line, bottom_line, 4*width);
        _TIFFmemcpy(bottom_line, wrk_line, 4*width);
    }

    _TIFFfree( wrk_line );
    

    /* Write out the result in strips */

    for( row = 0; row < height; row += rowsperstrip )
    {
        uint32* raster_strip;
        int	rows_to_write;

        raster_strip = raster + row * width;

        if( row + rowsperstrip > height )
            rows_to_write = height - row;
        else
            rows_to_write = rowsperstrip;

        if( TIFFWriteEncodedStrip( out, row / rowsperstrip,
                                   raster_strip,
                                   4 * rows_to_write * width ) == -1 )
        {
            _TIFFfree( raster );
            return 0;
        }
    }

    _TIFFfree( raster );

    return 1;
}


static int
tiffcvt(TIFF* in, TIFF* out)
{
	uint32 width, height;		/* image width & height */
	uint16 shortv;
	float floatv;
	char *stringv;
	uint32 longv;
        uint16 v[1];

	TIFFGetField(in, TIFFTAG_IMAGEWIDTH, &width);
	TIFFGetField(in, TIFFTAG_IMAGELENGTH, &height);

	CopyField(TIFFTAG_SUBFILETYPE, longv);
	TIFFSetField(out, TIFFTAG_IMAGEWIDTH, width);
	TIFFSetField(out, TIFFTAG_IMAGELENGTH, height);
	TIFFSetField(out, TIFFTAG_BITSPERSAMPLE, 8);
	TIFFSetField(out, TIFFTAG_COMPRESSION, compression);
	TIFFSetField(out, TIFFTAG_PHOTOMETRIC, PHOTOMETRIC_RGB);

	CopyField(TIFFTAG_FILLORDER, shortv);
	TIFFSetField(out, TIFFTAG_ORIENTATION, ORIENTATION_TOPLEFT);
	TIFFSetField(out, TIFFTAG_SAMPLESPERPIXEL, 4);
        v[0] = EXTRASAMPLE_ASSOCALPHA;
	TIFFSetField(out, TIFFTAG_EXTRASAMPLES, 1, v);
	CopyField(TIFFTAG_XRESOLUTION, floatv);
	CopyField(TIFFTAG_YRESOLUTION, floatv);
	CopyField(TIFFTAG_RESOLUTIONUNIT, shortv);
	TIFFSetField(out, TIFFTAG_PLANARCONFIG, PLANARCONFIG_CONTIG);
	TIFFSetField(out, TIFFTAG_SOFTWARE, TIFFGetVersion());
	CopyField(TIFFTAG_DOCUMENTNAME, stringv);

        if( process_by_block && TIFFIsTiled( in ) )
            return( cvt_by_tile( in, out ) );
        else if( process_by_block )
            return( cvt_by_strip( in, out ) );
        else
            return( cvt_whole_image( in, out ) );
}

static char* usageMsg[] = {
    "usage: tiff2rgba [-c comp] [-r rows] [-b] input... output\n",
    "where comp is one of the following compression algorithms:\n",
    " jpeg\t\tJPEG encoding\n",
    " lzw\t\tLempel-Ziv & Welch encoding\n",
    " packbits\tPackBits encoding\n",
    " none\t\tno compression\n",
    "and the other options are:\n",
    " -r\trows/strip\n",
    " -b (progress by block rather than as a whole image)\n",
    NULL
};

static void
usage(void)
{
	int i;
	for (i = 0; usageMsg[i]; i++)
		fprintf(stderr, "%s", usageMsg[i]);
	exit(-1);
}
