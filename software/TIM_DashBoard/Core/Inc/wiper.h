/*
 * wiper.h
 *
 *  Created on: Sep 24, 2021
 *  Author: lepetitprince
 */

#ifndef SRC_WIPER_H_
#define SRC_WIPER_H_

#include "tim.h"



typedef enum {
	wiper_speed_1 = 1,
	wiper_speed_2 = 2,
	wiper_speed_3 = 3
}wiper_speed;

void wiper_init(void);
void wiper_start(wiper_speed);
void wiper_stop(void);



#endif /* SRC_WIPER_H_ */
