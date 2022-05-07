/*
 * view.c
 *
 *  Created on: Mar 20, 2022
 *      Author: Sofiane
 */

#include "view.h"

LV_IMG_DECLARE(light);
LV_IMG_DECLARE(TL);
LV_IMG_DECLARE(circle90);
LV_FONT_DECLARE(f_speed_2);
LV_FONT_DECLARE(sport);
LV_FONT_DECLARE(font_cmd);

lv_obj_t *Screen1;
lv_obj_t *screen_bg;
lv_obj_t *img_circle_TL;
lv_obj_t *img_circle_TR;
lv_obj_t *img_circle_BL;
lv_obj_t *img_circle_BR;
lv_obj_t *img_light;
lv_obj_t *img_right_turn;
lv_obj_t *img_left_turn;
lv_obj_t *Label_speed;
lv_obj_t *Label_km_h;
lv_obj_t *Label_cmd;

lv_timer_t *toggle_lights_icons_timer;

void BuildPages();
void set_TLs(lv_timer_t *timer);
void reset_icons(lv_timer_t *timer);

void view_setSpeed(int speed) {
	char speed_string[3];
	lv_snprintf(speed_string, sizeof(speed_string), "%d", speed);
	lv_label_set_text(Label_speed, speed_string);
}

void view_setLight(int turn_on) {
	if (turn_on) {
		lv_obj_clear_flag(img_light, LV_OBJ_FLAG_HIDDEN);
	} else {
		lv_obj_add_flag(img_light, LV_OBJ_FLAG_HIDDEN);
	}
}

void view_toggle_TL(view_TL direction) {
	toggle_lights_icons_timer->user_data = (void*) direction;
	if (direction == NONE) {
		lv_timer_pause(toggle_lights_icons_timer);
		set_TLs(toggle_lights_icons_timer);
	} else {
		lv_timer_resume(toggle_lights_icons_timer);
	}
}

void view_setCMD(int cmd) {
	char cmd_string[3];
	lv_snprintf(cmd_string, sizeof(cmd_string), "%d", cmd);
	lv_label_set_text(Label_cmd, cmd_string);
}

void view_init() {
	BuildPages();
	lv_scr_load(Screen1);
}

void BuildPages() {
	Screen1 = lv_obj_create(NULL);

	screen_bg = lv_obj_create(Screen1);
	lv_obj_set_size(screen_bg, 320, 240);
	lv_obj_align(screen_bg, LV_ALIGN_CENTER, 0, 0);

	static lv_style_t style_screen_bg;
	lv_style_init(&style_screen_bg);
	lv_style_set_bg_color(&style_screen_bg, lv_color_hex(2580));
	lv_style_set_bg_opa(&style_screen_bg, 255);
	lv_obj_add_style(screen_bg, &style_screen_bg, 0);

	img_circle_BR = lv_img_create(Screen1);
	lv_img_set_src(img_circle_BR, &circle90);
	lv_img_set_angle(img_circle_BR, 450);
	lv_obj_align(img_circle_BR, LV_ALIGN_CENTER, 64, 64);

	img_circle_TR = lv_img_create(Screen1);
	lv_img_set_src(img_circle_TR, &circle90);
	lv_img_set_angle(img_circle_TR, -450);
	lv_obj_align(img_circle_TR, LV_ALIGN_CENTER, 64, -64);

	img_circle_TL = lv_img_create(Screen1);
	lv_img_set_src(img_circle_TL, &circle90);
	lv_img_set_angle(img_circle_TL, -450 - 900);
	lv_obj_align(img_circle_TL, LV_ALIGN_CENTER, -64, -64);

	img_circle_BL = lv_img_create(Screen1);
	lv_img_set_src(img_circle_BL, &circle90);
	lv_img_set_angle(img_circle_BL, 900 + 450);
	lv_obj_align(img_circle_BL, LV_ALIGN_CENTER, -64, 64);

	img_light = lv_img_create(Screen1);
	lv_img_set_src(img_light, &light);
	lv_obj_align(img_light, LV_ALIGN_TOP_MID, 0, 40);

	img_right_turn = lv_img_create(Screen1);
	lv_img_set_src(img_right_turn, &TL);
	lv_obj_align(img_right_turn, LV_ALIGN_RIGHT_MID, -15, 0);

	img_left_turn = lv_img_create(Screen1);
	lv_img_set_src(img_left_turn, &TL);
	lv_img_set_angle(img_left_turn, 1800);
	lv_obj_align(img_left_turn, LV_ALIGN_LEFT_MID, 15, 0);

	Label_speed = lv_label_create(Screen1);
	lv_label_set_long_mode(Label_speed, LV_LABEL_LONG_WRAP);
	lv_label_set_text(Label_speed, "0");
	lv_obj_align(Label_speed, LV_ALIGN_CENTER, 0, -5);

	static lv_style_t style_Label_speed;
	lv_style_init(&style_Label_speed);
	lv_style_set_text_color(&style_Label_speed,
			lv_color_hex(129 * 256 * 256 + 172 * 256 + 255));
	lv_style_set_text_opa(&style_Label_speed, 255);
	lv_style_set_text_font(&style_Label_speed, &f_speed_2);
	lv_obj_add_style(Label_speed, &style_Label_speed, 0);

	Label_km_h = lv_label_create(Screen1);
	lv_label_set_long_mode(Label_km_h, LV_LABEL_LONG_WRAP);
	lv_label_set_text(Label_km_h, "KM/H");
	lv_obj_align(Label_km_h, LV_ALIGN_CENTER, 0, 35);

	static lv_style_t style_Label_km_h;
	lv_style_init(&style_Label_km_h);
	lv_style_set_text_color(&style_Label_km_h,
			lv_color_hex(129 * 256 * 256 + 172 * 256 + 255));
	lv_style_set_text_opa(&style_Label_km_h, 255);
	lv_style_set_text_font(&style_Label_km_h, &sport);
	lv_obj_add_style(Label_km_h, &style_Label_km_h, 0);

	Label_cmd = lv_label_create(Screen1);
	lv_label_set_long_mode(Label_cmd, LV_LABEL_LONG_WRAP);
	lv_label_set_text(Label_cmd, "0");
	lv_obj_align(Label_cmd, LV_ALIGN_BOTTOM_MID, 0, -30);

	static lv_style_t style_Label_cmd;
	lv_style_init(&style_Label_cmd);
	lv_style_set_text_color(&style_Label_cmd,
			lv_color_hex(129 * 256 * 256 + 172 * 256 + 255));
	lv_style_set_text_opa(&style_Label_cmd, 255);
	lv_style_set_text_font(&style_Label_cmd, &font_cmd);
	lv_obj_add_style(Label_cmd, &style_Label_cmd, 0);

	toggle_lights_icons_timer = lv_timer_create(reset_icons, 2000, NULL);
}

void reset_icons(lv_timer_t *timer) {
	lv_timer_pause(toggle_lights_icons_timer);
	lv_timer_set_cb(toggle_lights_icons_timer, set_TLs);
	lv_timer_set_period(toggle_lights_icons_timer, 500);
	lv_obj_add_flag(img_light, LV_OBJ_FLAG_HIDDEN);
	lv_obj_add_flag(img_right_turn, LV_OBJ_FLAG_HIDDEN);
	lv_obj_add_flag(img_left_turn, LV_OBJ_FLAG_HIDDEN);
}

void set_TLs(lv_timer_t *timer) {
	static int on = 1;
	view_TL TL = (view_TL) (timer->user_data);
	lv_obj_add_flag(img_left_turn, LV_OBJ_FLAG_HIDDEN);
	lv_obj_add_flag(img_right_turn, LV_OBJ_FLAG_HIDDEN);

	if (TL == LEFT || TL == BOTH) {
		if (on) {
			lv_obj_clear_flag(img_left_turn, LV_OBJ_FLAG_HIDDEN);
		} else {
			lv_obj_add_flag(img_left_turn, LV_OBJ_FLAG_HIDDEN);
		}
	}
	if (TL == RIGHT || TL == BOTH) {
		if (on) {
			lv_obj_clear_flag(img_right_turn, LV_OBJ_FLAG_HIDDEN);
		} else {
			lv_obj_add_flag(img_right_turn, LV_OBJ_FLAG_HIDDEN);
		}
	}
	on = !on;
}
