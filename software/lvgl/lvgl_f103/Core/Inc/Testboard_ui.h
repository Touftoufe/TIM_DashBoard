#ifndef TESTBOARD_UI_H
#define TESTBOARD_UI_H

#ifdef __cplusplus
extern "C" {
#endif

#include "lvgl.h"

extern lv_obj_t * Screen1;
extern lv_obj_t * Object1;
extern lv_obj_t * Image2;
extern lv_obj_t * Image3;
extern lv_obj_t * Image4;
extern lv_obj_t * Label3;
extern lv_obj_t * Label4;
extern lv_obj_t * Label5;

void BuildPages(void);
#ifdef __cplusplus
} /*extern "C"*/
#endif

#endif
