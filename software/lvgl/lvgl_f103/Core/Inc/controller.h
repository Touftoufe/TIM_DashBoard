/*
 * controller.h
 *
 *  Created on: Jan 29, 2022
 *  Author: Aouci Sofiane / Jacquet Prince
 */

#ifndef INC_CONTROLLER_H_
#define INC_CONTROLLER_H_

#include <stdlib.h>
#include <stdio.h>
// MODEL





// VIEW

void home_screen(void);
void refresh_speed(uint16_t speed);
void refresh_light(uint16_t light);
void refresh_turning_signals(uint16_t tuning_signals); // 3 specific values
void refresh_command(uint16_t command);




#endif /* INC_CONTROLLER_H_ */
