/*
 * LVGL_Interface.h
 *
 *  Created on: Dec 26, 2021
 *      Author: TOUFTOUFE
 */

#ifndef INC_LVGL_INTERFACE_H_
#define INC_LVGL_INTERFACE_H_


#include "main.h"
#include "dma.h"
#include "spi.h"
#include "gpio.h"
#include "lvgl.h"


void disp_driver_flush(lv_disp_drv_t * drv, const lv_area_t * area, lv_color_t * color_map);
void disp_driver_init(void);


#endif /* INC_LVGL_INTERFACE_H_ */
