/*******************************************************************************
 * Size: 18 px
 * Bpp: 2
 * Opts: 
 ******************************************************************************/
#define LV_LVGL_H_INCLUDE_SIMPLE
#ifdef LV_LVGL_H_INCLUDE_SIMPLE
#include "lvgl.h"
#else
#include "lvgl/lvgl.h"
#endif

#ifndef SPORT
#define SPORT 1
#endif

#if SPORT

/*-----------------
 *    BITMAPS
 *----------------*/

/*Store the image of the glyphs*/
static LV_ATTRIBUTE_LARGE_CONST const uint8_t glyph_bitmap[] = {
    /* U+002F "/" */
    0x0, 0xa4, 0x1, 0xfc, 0x2, 0xf8, 0x3, 0xf8,
    0x3, 0xf4, 0x3, 0xf0, 0x7, 0xf0, 0xb, 0xe0,
    0xf, 0xe0, 0xf, 0xd0, 0xf, 0xc0, 0x1f, 0xc0,
    0x2f, 0xc0, 0x3f, 0x80, 0x3f, 0x40, 0x3f, 0x0,
    0x7f, 0x0, 0xbf, 0x0,

    /* U+0030 "0" */
    0x3, 0xff, 0xff, 0x80, 0xff, 0xff, 0xfc, 0xf,
    0xff, 0xff, 0xd1, 0xfe, 0x2, 0xfc, 0x1f, 0xd0,
    0x3f, 0xc2, 0xfc, 0x3, 0xfc, 0x3f, 0xc0, 0x3f,
    0x83, 0xfc, 0x7, 0xf4, 0x3f, 0x80, 0xbf, 0x7,
    0xf4, 0xf, 0xf0, 0xbf, 0xff, 0xff, 0x7, 0xff,
    0xff, 0xe0, 0x2f, 0xff, 0xf8, 0x0,

    /* U+0031 "1" */
    0x3f, 0xd1, 0xff, 0xcb, 0xff, 0x3, 0xfc, 0xf,
    0xf0, 0x3f, 0x81, 0xfd, 0xb, 0xf0, 0x2f, 0xc0,
    0xff, 0x3, 0xf8, 0x1f, 0xd0, 0xbf, 0x40,

    /* U+0032 "2" */
    0x7, 0xff, 0xfe, 0x2, 0xff, 0xff, 0xd0, 0xff,
    0xff, 0xf4, 0x0, 0x2, 0xfd, 0x0, 0x0, 0xbf,
    0x1, 0xff, 0xff, 0xc0, 0xff, 0xff, 0xe0, 0xbf,
    0xaa, 0xa4, 0x2f, 0xc0, 0x0, 0xf, 0xf0, 0x0,
    0x3, 0xff, 0xff, 0xd1, 0xff, 0xff, 0xf0, 0xbf,
    0xff, 0xfc, 0x0,

    /* U+0033 "3" */
    0xb, 0xff, 0xfd, 0x3, 0xff, 0xff, 0xc0, 0xff,
    0xff, 0xf0, 0x0, 0x3, 0xfc, 0x0, 0x0, 0xff,
    0x2, 0xff, 0xff, 0x80, 0xbf, 0xff, 0xd0, 0x2a,
    0xab, 0xfc, 0x0, 0x0, 0xbf, 0x0, 0x0, 0x3f,
    0xc3, 0xff, 0xff, 0xe1, 0xff, 0xff, 0xf4, 0xbf,
    0xff, 0xf8, 0x0,

    /* U+0034 "4" */
    0x3f, 0xc0, 0x7f, 0x4f, 0xf0, 0x1f, 0xd3, 0xf8,
    0xb, 0xf1, 0xfd, 0x3, 0xfc, 0x7f, 0x40, 0xfe,
    0x2f, 0xff, 0xff, 0x87, 0xff, 0xff, 0xd0, 0x6a,
    0xaf, 0xf0, 0x0, 0x3, 0xfc, 0x0, 0x0, 0xfe,
    0x0, 0x0, 0x3f, 0x80, 0x0, 0x1f, 0xd0, 0x0,
    0xb, 0xf0, 0x0,

    /* U+0035 "5" */
    0x3, 0xff, 0xff, 0xc1, 0xff, 0xff, 0xe0, 0xbf,
    0xff, 0xf4, 0x3f, 0xc0, 0x0, 0xf, 0xf0, 0x0,
    0x3, 0xff, 0xfe, 0x1, 0xff, 0xff, 0xd0, 0x6a,
    0xaf, 0xf8, 0x0, 0x1, 0xfd, 0x0, 0x0, 0xbf,
    0x3, 0xff, 0xff, 0xc1, 0xff, 0xff, 0xe0, 0xbf,
    0xff, 0xf0, 0x0,

    /* U+0036 "6" */
    0x3, 0xff, 0xff, 0x43, 0xff, 0xff, 0xc0, 0xff,
    0xff, 0xf0, 0x7f, 0x80, 0x0, 0x1f, 0xd0, 0x0,
    0xb, 0xff, 0xfe, 0x3, 0xff, 0xff, 0xd0, 0xff,
    0xaf, 0xf8, 0x3f, 0x81, 0xfd, 0x1f, 0xd0, 0xbf,
    0xb, 0xff, 0xff, 0xc1, 0xff, 0xff, 0xe0, 0x2f,
    0xff, 0xf0, 0x0,

    /* U+0037 "7" */
    0x3f, 0xff, 0xf9, 0xff, 0xff, 0xeb, 0xff, 0xff,
    0x40, 0x3, 0xfc, 0x0, 0x1f, 0xe0, 0x0, 0xff,
    0x0, 0x3, 0xfc, 0x0, 0x2f, 0xd0, 0x0, 0xff,
    0x0, 0xb, 0xf8, 0x0, 0x3f, 0xc0, 0x1, 0xfe,
    0x0, 0xf, 0xf0, 0x0,

    /* U+0038 "8" */
    0x2, 0xff, 0xff, 0x40, 0x7f, 0xff, 0xfc, 0xb,
    0xff, 0xff, 0xc0, 0xff, 0x3, 0xfc, 0xf, 0xf0,
    0x3f, 0xc0, 0xbf, 0xff, 0xf8, 0x1b, 0xff, 0xff,
    0x43, 0xfe, 0xab, 0xfc, 0x3f, 0x80, 0x2f, 0xc7,
    0xf4, 0x3, 0xfc, 0xbf, 0xff, 0xff, 0xc7, 0xff,
    0xff, 0xf8, 0x2f, 0xff, 0xfe, 0x0,

    /* U+0039 "9" */
    0x3, 0xff, 0xfe, 0x3, 0xff, 0xff, 0xd0, 0xff,
    0xff, 0xf4, 0x7f, 0x82, 0xfd, 0x1f, 0xd0, 0xbf,
    0xb, 0xfa, 0xbf, 0xc2, 0xff, 0xff, 0xe0, 0x3f,
    0xff, 0xf8, 0x0, 0x2, 0xfd, 0x0, 0x0, 0xbf,
    0x3, 0xff, 0xff, 0xc1, 0xff, 0xff, 0xe0, 0xbf,
    0xff, 0xf0, 0x0,

    /* U+0048 "H" */
    0x3, 0xf8, 0x0, 0x3f, 0x81, 0xfd, 0x0, 0x1f,
    0xd0, 0xbf, 0x0, 0xb, 0xf0, 0x3f, 0xc0, 0x2,
    0xfc, 0xf, 0xf0, 0x0, 0xff, 0x3, 0xff, 0xff,
    0xff, 0x81, 0xff, 0xff, 0xff, 0xd0, 0xbf, 0xff,
    0xff, 0xf4, 0x3f, 0x40, 0x2, 0xfc, 0xf, 0xf0,
    0x0, 0xff, 0x3, 0xf8, 0x0, 0x3f, 0x81, 0xfd,
    0x0, 0x1f, 0xe0, 0xbf, 0x0, 0x7, 0xf4, 0x0,

    /* U+004B "K" */
    0x3, 0xf8, 0x2, 0xfe, 0x1, 0xfd, 0x3, 0xfd,
    0x0, 0xbf, 0x7, 0xfd, 0x0, 0x3f, 0xcb, 0xfc,
    0x0, 0xf, 0xff, 0xf8, 0x0, 0x3, 0xff, 0xf8,
    0x0, 0x1, 0xff, 0xff, 0x0, 0x0, 0xbf, 0xff,
    0xf0, 0x0, 0x3f, 0xe3, 0xfe, 0x0, 0xf, 0xd0,
    0x3f, 0xc0, 0x3, 0xf8, 0xb, 0xfc, 0x1, 0xfd,
    0x0, 0xff, 0x40, 0xbf, 0x0, 0x1f, 0xf0, 0x0,

    /* U+004D "M" */
    0x3, 0xff, 0xf0, 0x7, 0xff, 0xf0, 0x1f, 0xff,
    0xc0, 0x3f, 0xff, 0xc0, 0xbe, 0xff, 0x1, 0xff,
    0xfe, 0x3, 0xfe, 0xfd, 0xb, 0xfb, 0xf8, 0xf,
    0xf3, 0xf4, 0x3f, 0xaf, 0xd0, 0x3f, 0xcf, 0xe2,
    0xfc, 0xff, 0x1, 0xfe, 0x3f, 0xcf, 0xe3, 0xfc,
    0xb, 0xf4, 0xbf, 0xbf, 0xf, 0xe0, 0x3f, 0xc1,
    0xff, 0xf8, 0x7f, 0x80, 0xff, 0x3, 0xff, 0xc2,
    0xfd, 0x3, 0xf8, 0xf, 0xfe, 0xf, 0xf0, 0x1f,
    0xe0, 0x2f, 0xf0, 0x3f, 0xc0, 0xbf, 0x40, 0x7f,
    0x40, 0xff, 0x0
};


/*---------------------
 *  GLYPH DESCRIPTION
 *--------------------*/

static const lv_font_fmt_txt_glyph_dsc_t glyph_dsc[] = {
    {.bitmap_index = 0, .adv_w = 0, .box_w = 0, .box_h = 0, .ofs_x = 0, .ofs_y = 0} /* id = 0 reserved */,
    {.bitmap_index = 0, .adv_w = 119, .box_w = 8, .box_h = 18, .ofs_x = 0, .ofs_y = -2},
    {.bitmap_index = 36, .adv_w = 220, .box_w = 14, .box_h = 13, .ofs_x = 0, .ofs_y = 0},
    {.bitmap_index = 82, .adv_w = 106, .box_w = 7, .box_h = 13, .ofs_x = 0, .ofs_y = 0},
    {.bitmap_index = 105, .adv_w = 206, .box_w = 13, .box_h = 13, .ofs_x = 0, .ofs_y = 0},
    {.bitmap_index = 148, .adv_w = 202, .box_w = 13, .box_h = 13, .ofs_x = 0, .ofs_y = 0},
    {.bitmap_index = 191, .adv_w = 207, .box_w = 13, .box_h = 13, .ofs_x = 0, .ofs_y = 0},
    {.bitmap_index = 234, .adv_w = 213, .box_w = 13, .box_h = 13, .ofs_x = 0, .ofs_y = 0},
    {.bitmap_index = 277, .adv_w = 206, .box_w = 13, .box_h = 13, .ofs_x = 0, .ofs_y = 0},
    {.bitmap_index = 320, .adv_w = 178, .box_w = 11, .box_h = 13, .ofs_x = 0, .ofs_y = 0},
    {.bitmap_index = 356, .adv_w = 219, .box_w = 14, .box_h = 13, .ofs_x = 0, .ofs_y = 0},
    {.bitmap_index = 402, .adv_w = 206, .box_w = 13, .box_h = 13, .ofs_x = 0, .ofs_y = 0},
    {.bitmap_index = 445, .adv_w = 274, .box_w = 17, .box_h = 13, .ofs_x = 0, .ofs_y = 0},
    {.bitmap_index = 501, .adv_w = 267, .box_w = 17, .box_h = 13, .ofs_x = 0, .ofs_y = 0},
    {.bitmap_index = 557, .adv_w = 361, .box_w = 23, .box_h = 13, .ofs_x = 0, .ofs_y = 0}
};

/*---------------------
 *  CHARACTER MAPPING
 *--------------------*/

static const uint8_t glyph_id_ofs_list_1[] = {
    0, 0, 0, 1, 0, 2
};

/*Collect the unicode lists and glyph_id offsets*/
static const lv_font_fmt_txt_cmap_t cmaps[] =
{
    {
        .range_start = 47, .range_length = 11, .glyph_id_start = 1,
        .unicode_list = NULL, .glyph_id_ofs_list = NULL, .list_length = 0, .type = LV_FONT_FMT_TXT_CMAP_FORMAT0_TINY
    },
    {
        .range_start = 72, .range_length = 6, .glyph_id_start = 12,
        .unicode_list = NULL, .glyph_id_ofs_list = glyph_id_ofs_list_1, .list_length = 6, .type = LV_FONT_FMT_TXT_CMAP_FORMAT0_FULL
    }
};

/*-----------------
 *    KERNING
 *----------------*/


/*Pair left and right glyphs for kerning*/
static const uint8_t kern_pair_glyph_ids[] =
{
    2, 3,
    2, 10,
    3, 3,
    4, 3,
    5, 3,
    6, 3,
    6, 7,
    7, 3,
    7, 10,
    7, 11,
    8, 3,
    9, 2,
    9, 3,
    9, 10,
    10, 2,
    10, 3,
    10, 9,
    11, 3,
    11, 6,
    13, 12,
    13, 13,
    13, 14
};

/* Kerning between the respective left and right glyphs
 * 4.4 format which needs to scaled with `kern_scale`*/
static const int8_t kern_pair_values[] =
{
    10, -10, 10, 10, 10, 10, -10, 10,
    -14, -14, 10, -10, 10, -24, 10, 10,
    10, 10, 7, -7, -10, -10
};

/*Collect the kern pair's data in one place*/
static const lv_font_fmt_txt_kern_pair_t kern_pairs =
{
    .glyph_ids = kern_pair_glyph_ids,
    .values = kern_pair_values,
    .pair_cnt = 22,
    .glyph_ids_size = 0
};

/*--------------------
 *  ALL CUSTOM DATA
 *--------------------*/

#if LV_VERSION_CHECK(8, 0, 0)
/*Store all the custom data of the font*/
static  lv_font_fmt_txt_glyph_cache_t cache;
static const lv_font_fmt_txt_dsc_t font_dsc = {
#else
static lv_font_fmt_txt_dsc_t font_dsc = {
#endif
    .glyph_bitmap = glyph_bitmap,
    .glyph_dsc = glyph_dsc,
    .cmaps = cmaps,
    .kern_dsc = &kern_pairs,
    .kern_scale = 16,
    .cmap_num = 2,
    .bpp = 2,
    .kern_classes = 0,
    .bitmap_format = 0,
#if LV_VERSION_CHECK(8, 0, 0)
    .cache = &cache
#endif
};


/*-----------------
 *  PUBLIC FONT
 *----------------*/

/*Initialize a public general font descriptor*/
#if LV_VERSION_CHECK(8, 0, 0)
const lv_font_t sport = {
#else
lv_font_t sport = {
#endif
    .get_glyph_dsc = lv_font_get_glyph_dsc_fmt_txt,    /*Function pointer to get glyph's data*/
    .get_glyph_bitmap = lv_font_get_bitmap_fmt_txt,    /*Function pointer to get glyph's bitmap*/
    .line_height = 18,          /*The maximum line height required by the font*/
    .base_line = 2,             /*Baseline measured from the bottom of the line*/
#if !(LVGL_VERSION_MAJOR == 6 && LVGL_VERSION_MINOR == 0)
    .subpx = LV_FONT_SUBPX_NONE,
#endif
#if LV_VERSION_CHECK(7, 4, 0) || LVGL_VERSION_MAJOR >= 8
    .underline_position = 0,
    .underline_thickness = 0,
#endif
    .dsc = &font_dsc           /*The custom font data. Will be accessed by `get_glyph_bitmap/dsc` */
};



#endif /*#if SPORT*/

