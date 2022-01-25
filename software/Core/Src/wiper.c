/*
 * wiper.c
 *
 *  Created on: Sep 24, 2021
 *  Author: lepetitprince
 *  --- We assume the configurations are made with HAL functions auto-generated using CubeMX
 */



#include "wiper.h"

extern TIM_HandleTypeDef htim2; //needed for specific period of pwm to control the servo motor
extern TIM_HandleTypeDef htim4; // control by wiper.c to change wiper speed

uint8_t wiper_direction = 1;

void wiper_start(wiper_speed the_wiper_speed){


	//turn timer 2 and 4 on
	//turn timer pwm on

	//HAL_TIM_Base_Start_IT(&htim2);
    HAL_TIM_PWM_Start(&htim2, TIM_CHANNEL_4);
    HAL_TIM_Base_Start_IT(&htim4);


	//configure htim4 period using wiper_speed
    switch (the_wiper_speed) {
		case wiper_speed_1:
			htim4.Init.Period=10000-1;
			HAL_TIM_Base_Init(&htim4);
			break;
		case wiper_speed_2:
			htim4.Init.Period=20000-1;
			HAL_TIM_Base_Init(&htim4);
			break;
		case wiper_speed_3:
			htim4.Init.Period=30000-1;
			HAL_TIM_Base_Init(&htim4);
			break;
		default:
			htim4.Init.Period=1000-1;
			HAL_TIM_Base_Init(&htim4);
			break;
	}

	//switch wiper_power on
    HAL_GPIO_WritePin(wiper_power_GPIO_Port, wiper_power_Pin, GPIO_PIN_SET);



}


void wiper_stop(void){
	//switch wiper_power off
    HAL_GPIO_WritePin(wiper_power_GPIO_Port, wiper_power_Pin, GPIO_PIN_RESET);


	//turn timer 2 and 4 off

}


void HAL_TIM_PeriodElapsedCallback(TIM_HandleTypeDef *htim)
{

		if (htim == &htim4) {


			switch (wiper_direction) {
				case 1:
					TIM2->CCR4=200;
					wiper_direction=0;
					break;
				case 2:
					TIM2->CCR4=100;
					wiper_direction=1;
					break;
				default:
					TIM2->CCR4=100;
					wiper_direction=1;
					break;
				}





		}

 	 }
