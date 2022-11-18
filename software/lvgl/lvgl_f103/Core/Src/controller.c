/*
 * controller.c
 *
 *  Created on: Jan 29, 2022
 *  Author: Aouci Sofiane / Jacquet Prince
 */
#include "controller.h"
#include "view.h"

void home_screen(void) {
	view_init();
}
void refresh_speed(uint16_t speed) {
	view_setSpeed(speed);
}
void refresh_light(uint16_t light) {
	view_setLight(light);
}
void refresh_turning_signals(uint16_t turning_signals) { // 3 specific values
	view_TL TL_Cmd;

	switch (turning_signals) {
	case 0:
		TL_Cmd = NONE;
		break;
	case 2:
		TL_Cmd = RIGHT;
		break;
	case 4:
		TL_Cmd = LEFT;
		break;
	case 8:
		TL_Cmd = BOTH;
		break;
	default:
		TL_Cmd = NONE;
	}

	view_toggle_TL(TL_Cmd);

}//this function shall receive state of button to turn signal
void refresh_command(uint16_t command){
	//current command for the motor
	view_setCMD(command);
};

