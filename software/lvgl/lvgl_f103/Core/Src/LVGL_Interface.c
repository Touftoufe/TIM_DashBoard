/*
 * LVGL_Interface.c
 *
 *  Created on: Dec 26, 2021
 *      Author: TOUFTOUFE
 */


/**
 * @file disp_driver.c
 */

#include "stdlib.h"
#include "LVGL_Interface.h"
#include "ili9341.h"
#include "ili9341_gfx.h"

ili9341_t *_lcd = NULL;

ili9341_t *display(void)
{
  return _lcd;
}


void disp_driver_init(void)
{
	_lcd = ili9341_new(&hspi1, LCD_RST_GPIO_Port, LCD_RST_Pin, SPI_CS_GPIO_Port, SPI_CS_Pin,
			  LCD_DC_GPIO_Port, LCD_DC_Pin, isoLandscape, NULL, 0, NULL, 0, itsNotSupported, itnNormalized);

//	lv_color_t *disp_buf1 = (lv_color_t *) malloc(_lcd->screen_size.width * 60 * sizeof(lv_color_t));
//	lv_color_t *disp_buf2 = (lv_color_t *) malloc(_lcd->screen_size.width * 60 * sizeof(lv_color_t));
	static lv_disp_drv_t disp_drv;
	static lv_color_t disp_buf1[320*10];
	static lv_disp_draw_buf_t buf;
	lv_disp_draw_buf_init(&buf, disp_buf1, NULL, _lcd->screen_size.width * 10);

	lv_disp_drv_init(&disp_drv);
	disp_drv.draw_buf = &buf;
	disp_drv.flush_cb = disp_driver_flush;
	disp_drv.hor_res = _lcd->screen_size.width;
	disp_drv.ver_res = _lcd->screen_size.height;
	lv_disp_drv_register(&disp_drv);
//	ili9341_fill_screen(_lcd, ILI9341_BLUE);
	HAL_Delay(100);
}

void disp_driver_flush(lv_disp_drv_t * drv, const lv_area_t * area, lv_color_t * color_map)
{
	ili9341_buff(_lcd, (uint16_t *) color_map, area->x1, area->y1, area->x2 - area->x1 + 1, area->y2 - area->y1 + 1);
	/*if(lv_disp_flush_is_last(drv)) */lv_disp_flush_ready(drv);
}
