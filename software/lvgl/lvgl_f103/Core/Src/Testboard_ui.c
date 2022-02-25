#include "Testboard_ui.h"

///////////////////// VARIABLES ////////////////////
lv_obj_t * Screen1;
lv_obj_t * Object1;
lv_obj_t * Image2;
lv_obj_t * Image3;
lv_obj_t * Image4;
lv_obj_t * Label3;
lv_obj_t * Label4;
lv_obj_t * Label5;
char Speed[3];

///////////////////// IMAGES ////////////////////
LV_IMG_DECLARE(light);
LV_IMG_DECLARE(TL);
LV_FONT_DECLARE(f_speed_2);
LV_FONT_DECLARE(sport);
///////////////////// FUNCTIONS ////////////////////

///////////////////// ANIMATIONS ////////////////////

///////////////////// FUNCTIONS2 ////////////////////
void getSpeed(lv_timer_t * timer)
{
    static uint8_t v = 0;
    lv_snprintf(timer->user_data, sizeof(timer->user_data), "%d", v);
    lv_label_set_text(Label3, timer->user_data);
    
    //if(v<10) lv_obj_align(Label3, LV_ALIGN_CENTER, 0, 0);
    v = ++v % 100;
}
///////////////////// SCREENS ////////////////////
void BuildPages(void)
{
    Screen1 = lv_obj_create(NULL);

    Object1 = lv_obj_create(Screen1);
    lv_obj_set_size(Object1, 320, 240);  // force: 0
    lv_obj_align(Object1, LV_ALIGN_CENTER, 0, 0); // force: 320

    static lv_style_t style_Object1;
    lv_style_init(&style_Object1);
    lv_style_set_bg_color(&style_Object1, lv_color_hex(2580));
    lv_style_set_bg_opa(&style_Object1, 255);
    lv_obj_add_style(Object1, &style_Object1, 0);  

    Image2 = lv_img_create(Screen1);
    lv_img_set_src(Image2, &light);
    //lv_obj_set_size(Image2, 226, 217);
    lv_obj_align(Image2, LV_ALIGN_TOP_MID, 0, 20);

    Image3 = lv_img_create(Screen1);
    lv_img_set_src(Image3, &TL);
    //lv_obj_set_size(Image2, 226, 217);
    lv_obj_align(Image3, LV_ALIGN_RIGHT_MID, -20, 0);

    Image4 = lv_img_create(Screen1);
    lv_img_set_src(Image4, &TL);
    lv_img_set_angle(Image4, 1800);
    //lv_obj_set_size(Image2, 226, 217);
    lv_obj_align(Image4, LV_ALIGN_LEFT_MID, 20, 0);

    Label3 = lv_label_create(Screen1);
    lv_label_set_long_mode(Label3, LV_LABEL_LONG_WRAP);
    strcpy(Speed, "0");
    lv_label_set_text(Label3, Speed);
    lv_obj_align(Label3, LV_ALIGN_CENTER, 0, 0); // force: 55

    static lv_style_t style_Label3;
    lv_style_init(&style_Label3);
    lv_style_set_text_color(&style_Label3, lv_color_hex(129 * 256 * 256 + 172 * 256 + 255));
    lv_style_set_text_opa(&style_Label3, 255);
    lv_style_set_text_font(&style_Label3, &f_speed_2);
    lv_obj_add_style(Label3, &style_Label3, 0);  

    Label4 = lv_label_create(Screen1);
    lv_label_set_long_mode(Label4, LV_LABEL_LONG_WRAP);
    lv_label_set_text(Label4, "KM/H");
    lv_obj_align(Label4, LV_ALIGN_CENTER, 30, 35); // force: 55

    static lv_style_t style_Label4;
    lv_style_init(&style_Label4);
    lv_style_set_text_color(&style_Label4, lv_color_hex(129 * 256 * 256 + 172 * 256 + 255));
    lv_style_set_text_opa(&style_Label4, 255);
    lv_style_set_text_font(&style_Label4, &sport);
    lv_obj_add_style(Label4, &style_Label4, 0);

    Label5 = lv_label_create(Screen1);
    lv_label_set_long_mode(Label5, LV_LABEL_LONG_WRAP);
    lv_label_set_text(Label5, "4");
    lv_obj_align(Label5, LV_ALIGN_BOTTOM_MID, 0, -10); // force: 55

    static lv_style_t style_Label5;
    lv_style_init(&style_Label5);
    lv_style_set_text_color(&style_Label5, lv_color_hex(129 * 256 * 256 + 172 * 256 + 255));
    lv_style_set_text_opa(&style_Label5, 255);
    lv_style_set_text_font(&style_Label5, &sport);
    lv_obj_add_style(Label5, &style_Label5, 0);

    lv_timer_t * getSpeed_timer = lv_timer_create(getSpeed, 100, Speed);


}
/*
void eperimental()
{
    lv_meter_scale_t * scale;
    lv_meter_indicator_t *indic;

    
}*/
