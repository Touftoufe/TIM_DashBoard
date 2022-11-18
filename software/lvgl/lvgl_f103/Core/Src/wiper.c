/*
 * wiper.c
 *
 *  Created on: Sep 24, 2021
 *  Author: Jacquet Prince
 *  Description : 	Wiper related function
 *
 */

#include "wiper.h"

extern TIM_HandleTypeDef htim2; //needed for specific period of pwm to control the servo motor
extern TIM_HandleTypeDef htim4; // control by wiper.c to change wiper speed

uint8_t wiper_direction = 1;

void wiper_start(wiper_speed the_wiper_speed) {

	//turn timer 2 and 4 on
	//turn timer pwm on

	//HAL_TIM_Base_Start_IT(&htim2);
	HAL_TIM_PWM_Start_IT(&htim2, TIM_CHANNEL_4);
	HAL_TIM_Base_Start_IT(&htim4);

	//configure htim4 period using wiper_speed
	switch (the_wiper_speed) {
	case wiper_speed_0:
		wiper_stop();
		break;
	case wiper_speed_1:
		htim4.Init.Period = 10000 - 1;
		HAL_TIM_Base_Init(&htim4);
		break;
	case wiper_speed_2:
		htim4.Init.Period = 20000 - 1;
		HAL_TIM_Base_Init(&htim4);
		break;
	case wiper_speed_3:
		htim4.Init.Period = 30000 - 1;
		HAL_TIM_Base_Init(&htim4);
		break;
	default:
		htim4.Init.Period = 1000 - 1;
		HAL_TIM_Base_Init(&htim4);
		break;
	}

	//switch WiperPower on
	//HAL_GPIO_WritePin(WiperPower_GPIO_Port, WiperPower_Pin, GPIO_PIN_SET);

}

void wiper_stop(void) {
	//switch WiperPower off
	//HAL_GPIO_WritePin(WiperPower_GPIO_Port, WiperPower_Pin, GPIO_PIN_RESET);

	//turn timer 2 and 4 off
	//HAL_TIM_Base_Start_IT(&htim2);
	HAL_TIM_Base_Stop(&htim2);
	HAL_TIM_Base_Stop(&htim4);

}

//void HAL_TIM_PeriodElapsedCallback(TIM_HandleTypeDef *htim)
//{}
