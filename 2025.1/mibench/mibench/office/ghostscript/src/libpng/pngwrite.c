
/* pngwrite.c - general routines to write a png file

   libpng 1.0 beta 3 - version 0.89
   For conditions of distribution and use, see copyright notice in png.h
   Copyright (c) 1995, 1996 Guy Eric Schalnat, Group 42, Inc.
   May 25, 1996
   */

/* get internal access to png.h */
#define PNG_INTERNAL
#include "png.h"

/* Writes all the png information.  This is the suggested way to use
   the library.  If you have a new chunk to add, make a function to
   write it, and put it in the correct location here.  If you want
   the chunk written after the image data, put it in png_write_end().
   I strongly encurage you to supply a PNG_INFO_ flag, and check
   info->valid before writing the chunk, as that will keep the code
   from breaking if you want to just write a plain png file.
   If you have long comments, I suggest writing them in png_write_end(),
   and compressing them. */
void
png_write_info(png_structp png_ptr, png_infop info)
{
   png_write_sig(png_ptr); /* write PNG signature */
   /* write IHDR information. */
   png_write_IHDR(png_ptr, info->width, info->height, info->bit_depth,
      info->color_type, info->compression_type, info->filter_type,
      info->interlace_type);
   /* the rest of these check to see if the valid field has the appropriate
      flag set, and if it does, writes the chunk. */
#if defined(PNG_WRITE_gAMA_SUPPORTED)
   if (info->valid & PNG_INFO_gAMA)
      png_write_gAMA(png_ptr, info->gamma);
#endif
#if defined(PNG_WRITE_sBIT_SUPPORTED)
   if (info->valid & PNG_INFO_sBIT)
      png_write_sBIT(png_ptr, &(info->sig_bit), info->color_type);
#endif
#if defined(PNG_WRITE_cHRM_SUPPORTED)
   if (info->valid & PNG_INFO_cHRM)
      png_write_cHRM(png_ptr,
         info->x_white, info->y_white,
         info->x_red, info->y_red,
         info->x_green, info->y_green,
         info->x_blue, info->y_blue);
#endif
   if (info->valid & PNG_INFO_PLTE)
      png_write_PLTE(png_ptr, info->palette, info->num_palette);
   else if (info->color_type == PNG_COLOR_TYPE_PALETTE)
      png_error(png_ptr, "Valid palette required for paletted images\n");
#if defined(PNG_WRITE_tRNS_SUPPORTED)
   if (info->valid & PNG_INFO_tRNS)
      png_write_tRNS(png_ptr, info->trans, &(info->trans_values),
         info->num_trans, info->color_type);
#endif
#if defined(PNG_WRITE_bKGD_SUPPORTED)
   if (info->valid & PNG_INFO_bKGD)
      png_write_bKGD(png_ptr, &(info->background), info->color_type);
#endif
#if defined(PNG_WRITE_hIST_SUPPORTED)
   if (info->valid & PNG_INFO_hIST)
      png_write_hIST(png_ptr, info->hist, info->num_palette);
#endif
#if defined(PNG_WRITE_pHYs_SUPPORTED)
   if (info->valid & PNG_INFO_pHYs)
      png_write_pHYs(png_ptr, info->x_pixels_per_unit,
         info->y_pixels_per_unit, info->phys_unit_type);
#endif
#if defined(PNG_WRITE_oFFs_SUPPORTED)
   if (info->valid & PNG_INFO_oFFs)
      png_write_oFFs(png_ptr, info->x_offset, info->y_offset,
         info->offset_unit_type);
#endif
#if defined(PNG_WRITE_tIME_SUPPORTED)
   if (info->valid & PNG_INFO_tIME)
   {
      png_write_tIME(png_ptr, &(info->mod_time));
      png_ptr->flags |= PNG_FLAG_WROTE_tIME;
   }
#endif
#if defined(PNG_WRITE_tEXt_SUPPORTED) || defined(PNG_WRITE_zTXt_SUPPORTED)
   /* Check to see if we need to write text chunks */
   if (info->num_text)
   {
      int i; /* local counter */

      /* loop through the text chunks */
      for (i = 0; i < info->num_text; i++)
      {
         /* if chunk is compressed */
         if (info->text[i].compression >= 0)
         {
#if defined(PNG_WRITE_zTXt_SUPPORTED)
            /* write compressed chunk */
            png_write_zTXt(png_ptr, info->text[i].key,
               info->text[i].text, info->text[i].text_length,
               info->text[i].compression);
#else
            png_warning(png_ptr, "Unable to write compressed text\n");
#endif
         }
         else
         {
#if defined(PNG_WRITE_tEXt_SUPPORTED)
            /* write uncompressed chunk */
            png_write_tEXt(png_ptr, info->text[i].key,
               info->text[i].text, info->text[i].text_length);
#else
            png_warning(png_ptr, "Unable to write uncompressed text\n");
#endif
         }
      }
   }
#endif
}

/* writes the end of the png file.  If you don't want to write comments or
   time information, you can pass NULL for info.  If you already wrote these
   in png_write_info(), do not write them again here.  If you have long
   comments, I suggest writing them here, and compressing them. */
void
png_write_end(png_structp png_ptr, png_infop info)
{
   if (!(png_ptr->mode & PNG_HAVE_IDAT))
      png_error(png_ptr, "No IDATs written into file");

   /* see if user wants us to write information chunks */
   if (info)
   {
#if defined(PNG_WRITE_tIME_SUPPORTED)
      /* check to see if user has supplied a time chunk */
      if (info->valid & PNG_INFO_tIME &&
         !(png_ptr->flags & PNG_FLAG_WROTE_tIME))
         png_write_tIME(png_ptr, &(info->mod_time));
#endif
#if defined(PNG_WRITE_tEXt_SUPPORTED) || defined(PNG_WRITE_zTXt_SUPPORTED)
      /* check to see if we need to write comment chunks */
      if (info->num_text)
      {
         int i; /* local index variable */

         /* loop through comment chunks */
         for (i = 0; i < info->num_text; i++)
         {
#if defined(PNG_WRITE_zTXt_SUPPORTED)
            /* check to see if comment is to be compressed */
            if (info->text[i].compression >= 0)
            {
               /* write compressed chunk */
               png_write_zTXt(png_ptr, info->text[i].key,
                  info->text[i].text, info->text[i].text_length,
                  info->text[i].compression);
            }
#if defined(PNG_WRITE_tEXt_SUPPORTED)
            else
#endif
#endif
#if defined(PNG_WRITE_tEXt_SUPPORTED)
            {
               /* write uncompressed chunk */
               png_write_tEXt(png_ptr, info->text[i].key,
                  info->text[i].text, info->text[i].text_length);
            }
#endif
         }
      }
#endif
   }

   png_ptr->mode |= PNG_AFTER_IDAT;

   /* write end of png file */
   png_write_IEND(png_ptr);
}

#if defined(PNG_WRITE_tIME_SUPPORTED)
void
png_convert_from_struct_tm(png_timep ptime, struct tm FAR * ttime)
{
   ptime->year = (png_uint_16)(1900 + ttime->tm_year);
   ptime->month = (png_byte)(ttime->tm_mon + 1);
   ptime->day = (png_byte)ttime->tm_mday;
   ptime->hour = (png_byte)ttime->tm_hour;
   ptime->minute = (png_byte)ttime->tm_min;
   ptime->second = (png_byte)ttime->tm_sec;
}

void
png_convert_from_time_t(png_timep ptime, time_t ttime)
{
   struct tm *tbuf;

   tbuf = gmtime(&ttime);
   png_convert_from_struct_tm(ptime, tbuf);
}
#endif

/* initialize png structure, and allocate any memory needed */
png_structp
png_create_write_struct(png_const_charp user_png_ver, voidp error_ptr,
   png_error_ptr warn_fn, png_error_ptr error_fn)
{
   png_structp png_ptr;

   if ((png_ptr = (png_structp)png_create_struct(PNG_STRUCT_PNG)) == NULL)
   {
      return (png_structp)NULL;
   }

   if (setjmp(png_ptr->jmpbuf))
   {
      png_large_free(png_ptr, png_ptr->zbuf);
      png_free(png_ptr, png_ptr->zstream);
      png_destroy_struct(png_ptr);
      return (png_structp)NULL;
   }

   png_set_error_fn(png_ptr, error_ptr, warn_fn, error_fn);

   if (user_png_ver == NULL || strcmp(user_png_ver, png_libpng_ver))
   {
      if (user_png_ver == NULL || user_png_ver[0] != png_libpng_ver[0])
      {
         png_error(png_ptr, "Incompatible libpng versions");
      }
      else
      {
         png_warning(png_ptr, "Different libpng versions");
      }
   }

   /* initialize zbuf - compression buffer */
   png_ptr->zbuf_size = PNG_ZBUF_SIZE;
   png_ptr->zbuf = png_large_malloc(png_ptr, png_ptr->zbuf_size);

   png_set_write_fn(png_ptr, NULL, NULL, NULL);

   png_ptr->do_free |= PNG_FREE_STRUCT;

   return (png_ptr);
}


/* initialize png structure, and allocate any memory needed */
void
png_write_init(png_structp png_ptr)
{
   jmp_buf tmp_jmp; /* to save current jump buffer */

   /* save jump buffer and error functions */
   png_memcpy(tmp_jmp, png_ptr->jmpbuf, sizeof (jmp_buf));

   /* reset all variables to 0 */
   png_memset(png_ptr, 0, sizeof (png_struct));

   /* restore jump buffer */
   png_memcpy(png_ptr->jmpbuf, tmp_jmp, sizeof (jmp_buf));

   /* initialize zbuf - compression buffer */
   png_ptr->zbuf_size = PNG_ZBUF_SIZE;
   png_ptr->zbuf = png_large_malloc(png_ptr, png_ptr->zbuf_size);
   png_set_write_fn(png_ptr, NULL, NULL, NULL);
}

/* write a few rows of image data.  If the image is interlaced,
   either you will have to write the 7 sub images, or, if you
   have called png_set_interlace_handling(), you will have to
   "write" the image seven times */
void
png_write_rows(png_structp png_ptr, png_bytepp row,
   png_uint_32 num_rows)
{
   png_uint_32 i; /* row counter */
   png_bytepp rp; /* row pointer */

   /* loop through the rows */
   for (i = 0, rp = row; i < num_rows; i++, rp++)
   {
      png_write_row(png_ptr, *rp);
   }
}

/* write the image.  You only need to call this function once, even
   if you are writing an interlaced image. */
void
png_write_image(png_structp png_ptr, png_bytepp image)
{
   png_uint_32 i; /* row index */
   int pass, num_pass; /* pass variables */
   png_bytepp rp; /* points to current row */

   /* intialize interlace handling.  If image is not interlaced,
      this will set pass to 1 */
   num_pass = png_set_interlace_handling(png_ptr);
   /* loop through passes */
   for (pass = 0; pass < num_pass; pass++)
   {
      /* loop through image */
      for (i = 0, rp = image; i < png_ptr->height; i++, rp++)
      {
         png_write_row(png_ptr, *rp);
      }
   }
}

/* called by user to write a row of image data */
void
png_write_row(png_structp png_ptr, png_bytep row)
{
   /* initialize transformations and other stuff if first time */
   if (png_ptr->row_number == 0 && png_ptr->pass == 0)
   {
      png_write_start_row(png_ptr);
   }

#if defined(PNG_WRITE_INTERLACING_SUPPORTED)
   /* if interlaced and not interested in row, return */
   if (png_ptr->interlaced && (png_ptr->transformations & PNG_INTERLACE))
   {
      switch (png_ptr->pass)
      {
         case 0:
            if (png_ptr->row_number & 7)
            {
               png_write_finish_row(png_ptr);
               return;
            }
            break;
         case 1:
            if ((png_ptr->row_number & 7) || png_ptr->width < 5)
            {
               png_write_finish_row(png_ptr);
               return;
            }
            break;
         case 2:
            if ((png_ptr->row_number & 7) != 4)
            {
               png_write_finish_row(png_ptr);
               return;
            }
            break;
         case 3:
            if ((png_ptr->row_number & 3) || png_ptr->width < 3)
            {
               png_write_finish_row(png_ptr);
               return;
            }
            break;
         case 4:
            if ((png_ptr->row_number & 3) != 2)
            {
               png_write_finish_row(png_ptr);
               return;
            }
            break;
         case 5:
            if ((png_ptr->row_number & 1) || png_ptr->width < 2)
            {
               png_write_finish_row(png_ptr);
               return;
            }
            break;
         case 6:
            if (!(png_ptr->row_number & 1))
            {
               png_write_finish_row(png_ptr);
               return;
            }
            break;
      }
   }
#endif

   /* set up row info for transformations */
   png_ptr->row_info.color_type = png_ptr->color_type;
   png_ptr->row_info.width = png_ptr->usr_width;
   png_ptr->row_info.channels = png_ptr->usr_channels;
   png_ptr->row_info.bit_depth = png_ptr->usr_bit_depth;
   png_ptr->row_info.pixel_depth = (png_byte)(png_ptr->row_info.bit_depth *
      png_ptr->row_info.channels);
   png_ptr->row_info.rowbytes = ((png_ptr->row_info.width *
      (png_uint_32)png_ptr->row_info.pixel_depth + 7) >> 3);

   /* copy users row into buffer, leaving room for filter byte */
   png_memcpy(png_ptr->row_buf + 1, row, (png_size_t)png_ptr->row_info.rowbytes);

#if defined(PNG_WRITE_INTERLACING_SUPPORTED)
   /* handle interlacing */
   if (png_ptr->interlaced && png_ptr->pass < 6 &&
      (png_ptr->transformations & PNG_INTERLACE))
   {
      png_do_write_interlace(&(png_ptr->row_info),
         png_ptr->row_buf + 1, png_ptr->pass);
      /* this should always get caught above, but still ... */
      if (!(png_ptr->row_info.width))
      {
         png_write_finish_row(png_ptr);
         return;
      }
   }
#endif

   /* handle other transformations */
   if (png_ptr->transformations)
      png_do_write_transformations(png_ptr);

   /* find a filter if necessary, filter the row and write it out */
   png_write_find_filter(png_ptr, &(png_ptr->row_info));
}

#if defined(PNG_WRITE_FLUSH_SUPPORTED)
/* Set the automatic flush interval or 0 to turn flushing off */
void
png_set_flush(png_structp png_ptr, int nrows)
{
   png_ptr->flush_dist = (nrows < 0 ? 0 : nrows);
}

/* flush the current output buffers now */
void
png_write_flush(png_structp png_ptr)
{
   int wrote_IDAT;

   /* We have already written out all of the data */
   if (png_ptr->row_number >= png_ptr->num_rows)
     return;

   do
   {
      int ret;

      /* compress the data */
      ret = deflate(png_ptr->zstream, Z_SYNC_FLUSH);
      wrote_IDAT = 0;

      /* check for compression errors */
      if (ret != Z_OK)
      {
         if (png_ptr->zstream->msg)
            png_error(png_ptr, png_ptr->zstream->msg);
         else
            png_error(png_ptr, "zlib error");
      }

      if (!png_ptr->zstream->avail_out)
      {
         /* write the IDAT and reset the zlib output buffer */
         png_write_IDAT(png_ptr, png_ptr->zbuf,
                        png_ptr->zbuf_size);
         png_ptr->zstream->next_out = png_ptr->zbuf;
         png_ptr->zstream->avail_out = (uInt)png_ptr->zbuf_size;
         wrote_IDAT = 1;
      }
   } while(wrote_IDAT == 1);

   /* If there is any data left to be output, write it into a new IDAT */
   if (png_ptr->zbuf_size != png_ptr->zstream->avail_out)
   {
      /* write the IDAT and reset the zlib output buffer */
      png_write_IDAT(png_ptr, png_ptr->zbuf,
                     png_ptr->zbuf_size - png_ptr->zstream->avail_out);
      png_ptr->zstream->next_out = png_ptr->zbuf;
      png_ptr->zstream->avail_out = (uInt)png_ptr->zbuf_size;
   }
   png_ptr->flush_rows = 0;
   png_flush(png_ptr);
}
#endif /* PNG_WRITE_FLUSH_SUPPORTED */

/* free all memory used by the write */
void
png_destroy_write_struct(png_structpp png_ptr, png_infopp info_ptr)
{
   if (info_ptr && *info_ptr)
   {
      png_destroy_struct((voidp)*info_ptr);
      *info_ptr = (png_infop)NULL;
   }

   if (png_ptr && *png_ptr)
   {
      png_write_destroy(*png_ptr);
      png_destroy_struct((voidp)*png_ptr);
      *png_ptr = (png_structp)NULL;
   }
}


/* free any memory used in png struct (old) */
void
png_write_destroy(png_structp png_ptr)
{
   jmp_buf tmp_jmp; /* save jump buffer */
   png_error_ptr error_fn;
   png_error_ptr warning_fn;
   png_voidp error_ptr;

   /* free any memory zlib uses */
   deflateEnd(png_ptr->zstream);
   png_free(png_ptr, png_ptr->zstream);

   /* free our memory.  png_free checks NULL for us. */
   png_large_free(png_ptr, png_ptr->zbuf);
   png_large_free(png_ptr, png_ptr->row_buf);
   png_large_free(png_ptr, png_ptr->prev_row);
   png_large_free(png_ptr, png_ptr->sub_row);
   png_large_free(png_ptr, png_ptr->up_row);
   png_large_free(png_ptr, png_ptr->avg_row);
   png_large_free(png_ptr, png_ptr->paeth_row);

   /* reset structure */
   png_memcpy(tmp_jmp, png_ptr->jmpbuf, sizeof (jmp_buf));

   error_fn = png_ptr->error_fn;
   warning_fn = png_ptr->warning_fn;
   error_ptr = png_ptr->error_ptr;

   png_memset(png_ptr, 0, sizeof (png_struct));

   png_ptr->error_fn = error_fn;
   png_ptr->warning_fn = warning_fn;
   png_ptr->error_ptr = error_ptr;

   png_memcpy(png_ptr->jmpbuf, tmp_jmp, sizeof (jmp_buf));
}

/* Allow the application to select one or more filters to use */
void
png_set_filter(png_structp png_ptr, int method, int filters)
{
   /* We allow 'method' only for future expansion of the base filter method */
   if (method == 0)
   {
      switch (filters & (PNG_ALL_FILTERS | 0x07))
      {
         case 5:
         case 6:
         case 7: png_warning(png_ptr, "Unknown custom row filter for method 0");
         case 0: png_ptr->do_filter = PNG_FILTER_NONE; break;
         case 1: png_ptr->do_filter = PNG_FILTER_SUB; break;
         case 2: png_ptr->do_filter = PNG_FILTER_UP; break;
         case 3: png_ptr->do_filter = PNG_FILTER_AVG; break;
         case 4: png_ptr->do_filter = PNG_FILTER_PAETH; break;
         default: png_ptr->do_filter = (png_byte)filters; break;
      }

      /* If we have allocated the row_buf, then we should have also allocated
       * all of the filter buffers that have been selected.
       */
      if (png_ptr->row_buf)
      {
         if (png_ptr->do_filter & PNG_FILTER_SUB && !(png_ptr->sub_row))
         {
            png_ptr->sub_row = (png_bytep )png_large_malloc(png_ptr,
               png_ptr->rowbytes + 1);
            png_ptr->sub_row[0] = 1;  /* Set the row filter type */
         }

         if (png_ptr->do_filter & PNG_FILTER_UP && !(png_ptr->up_row))
         {
            if (!(png_ptr->prev_row))
            {
               png_warning(png_ptr, "Can't to add up filter after starting");
               png_ptr->do_filter &= ~PNG_FILTER_UP;
            }
            else
            {
               png_ptr->up_row = (png_bytep )png_large_malloc(png_ptr,
                  png_ptr->rowbytes + 1);
               png_ptr->up_row[0] = 2;  /* Set the row filter type */
            }
         }

         if (png_ptr->do_filter & PNG_FILTER_AVG && !(png_ptr->avg_row))
         {
            if (!(png_ptr->prev_row))
            {
               png_warning(png_ptr, "Can't add average filter after starting");
               png_ptr->do_filter &= ~PNG_FILTER_AVG;
            }
            else
            {
               png_ptr->up_row = (png_bytep )png_large_malloc(png_ptr,
                  png_ptr->rowbytes + 1);
               png_ptr->up_row[0] = 3;  /* Set the row filter type */
            }
         }

         if (png_ptr->do_filter & PNG_FILTER_PAETH && !(png_ptr->paeth_row))
         {
            if (!(png_ptr->prev_row))
            {
               png_warning(png_ptr, "Can't add Paeth filter after starting");
               png_ptr->do_filter &= ~PNG_FILTER_PAETH;
            }
            else
            {
               png_ptr->paeth_row = (png_bytep )png_large_malloc(png_ptr,
                  png_ptr->rowbytes + 1);
               png_ptr->paeth_row[0] = 4;  /* Set the row filter type */
            }
         }

         if (png_ptr->do_filter == PNG_NO_FILTERS)
            png_ptr->do_filter = PNG_FILTER_NONE;
      }
   }
   else
     png_error(png_ptr, "Unknown custom filter method");
}

void
png_set_compression_level(png_structp png_ptr, int level)
{
   png_ptr->flags |= PNG_FLAG_ZLIB_CUSTOM_LEVEL;
   png_ptr->zlib_level = level;
}

void
png_set_compression_mem_level(png_structp png_ptr, int mem_level)
{
   png_ptr->flags |= PNG_FLAG_ZLIB_CUSTOM_MEM_LEVEL;
   png_ptr->zlib_mem_level = mem_level;
}

void
png_set_compression_strategy(png_structp png_ptr, int strategy)
{
   png_ptr->flags |= PNG_FLAG_ZLIB_CUSTOM_STRATEGY;
   png_ptr->zlib_strategy = strategy;
}

void
png_set_compression_window_bits(png_structp png_ptr, int window_bits)
{
   if (window_bits > 15)
      png_warning(png_ptr, "Only compression windows <= 32k supported by PNG");
   png_ptr->flags |= PNG_FLAG_ZLIB_CUSTOM_WINDOW_BITS;
   png_ptr->zlib_window_bits = window_bits;
}

void
png_set_compression_method(png_structp png_ptr, int method)
{
   if (method != 8)
      png_warning(png_ptr, "Only compression method 8 is supported by PNG");
   png_ptr->flags |= PNG_FLAG_ZLIB_CUSTOM_METHOD;
   png_ptr->zlib_method = method;
}

