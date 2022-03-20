/*
 * view.h
 *
 *  Created on: Mar 20, 2022
 *      Author: Sofiane
 */

#ifndef INC_VIEW_H_
#define INC_VIEW_H_

#include "lvgl.h"

typedef enum {
	NONE = 0,
	LEFT,
	RIGHT,
	BOTH
}view_TL;

void view_init();
void view_setSpeed(int speed);
void view_toggle_TL(view_TL direction);
void view_setCMD(int cmd);
void view_setLight(int turn_on);




#endif /* INC_VIEW_H_ */
