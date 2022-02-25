/*
 * model.c
 *
 *  Created on: Jan 29, 2022
 *  Author: Aouci Sofiane / Jacquet Prince
 *  Description : 	All the hardware specific actions and interruptions are grouped and executed in this file.
 *  				After initialization by main.c, model.c take control.
 */

// Include
//MVC
#include "model.h"
#include "controller.h"
#include "view.h"

//Hardware
#include "main.h"
#include "adc.h"
#include "can.h"
#include "dma.h"
#include "tim.h"
#include "gpio.h"

//Application
#include "user_can.h"
#include "user_can_functs.h"
#include "wiper.h"



// defines

#define abs(a) (((a) > 0) ? (a) : -(a))

//variables


/* External variables --------------------------------------------------------*/
extern DMA_HandleTypeDef hdma_adc1;
extern ADC_HandleTypeDef hadc1;
extern CAN_HandleTypeDef hcan;
extern DMA_HandleTypeDef hdma_memtomem_dma1_channel2;
extern TIM_HandleTypeDef htim1;
extern TIM_HandleTypeDef htim2;
extern TIM_HandleTypeDef htim3;
extern TIM_HandleTypeDef htim4;
/* USER CODE BEGIN EV */
extern volatile int16_t ADC_Values[3];
extern uint8_t TxMotorCMD;
extern volatile uint8_t enable_motor_CMD;
extern uint16_t TxMotorFRW;

extern uint8_t wiper_direction;
CAN_RxHeaderTypeDef pCAN_RxHeader;

// model : control GPIO (interrupts)

void HAL_GPIO_EXTI_Callback(uint16_t GPIO_Pin){ // on interruption on a pin (ex : BUT_Pin or GPIO_PIN_0 or ((uint16_t)0x0001) )
	if (GPIO_Pin && BUT_Pin)
	{
			if (HAL_GPIO_ReadPin(BUT_GPIO_Port, BUT_Pin)==GPIO_PIN_RESET){
					enable_motor_CMD = 1;

			} else if (HAL_GPIO_ReadPin(BUT_GPIO_Port, BUT_Pin)==GPIO_PIN_SET) {
					enable_motor_CMD = 0;
					TxMotorCMD=0;
					CAN_send_message(AT07_ELEC_MOTOR_CMD,1,&TxMotorCMD);

			}
	}
	//To continue to compare with other pin on the same EXTI use :
	/*
	 * if (GPIO_Pin && GPIO_PIN_1)
	 * { }
	 */

}
// model : control GPIO (write/read)

// model : control wiper

// model : receive CAN messages


void HAL_CAN_RxFifo0MsgPendingCallback(CAN_HandleTypeDef *hcan){
	extern uint8_t message[8];
	extern uint8_t RxData[8];
	HAL_CAN_GetRxMessage(hcan, CAN_RX_FIFO0, &pCAN_RxHeader, RxData);


	//light response
	if ((pCAN_RxHeader.ExtId) == 0x4210031){
		message[0]= (RxData[0]==1) ? 0 : 1;
	}
	//speed

	/*
	 * if ((pCAN_RxHeader.ExtId) == 0x4210031){
	 *		message[0]= (RxData[0]==1) ? 0 : 1;}
	 */
}




// model : send CAN messages

// model : ADC / DMA input

void HAL_ADC_ConvHalfCpltCallback(ADC_HandleTypeDef* hadc)
{
	if (abs(ADC_Values[0]-ADC_Values[1]) > 200)
	{
		//change the equation into a table
		TxMotorFRW=  (((uint16_t)(ADC_Values[0]*12/4096)-1)*2000);
		CAN_send_message(AT07_CMD_ELEC_MOTOR_FORWARD,2,(uint8_t  *)&TxMotorFRW);
	}
	//change this into a simple variable affectation
	HAL_DMA_Start_IT(&hdma_memtomem_dma1_channel2, (uint32_t )ADC_Values, (uint32_t )(ADC_Values+1), 1);

}

// model : timer period triggered actions
void HAL_TIM_PeriodElapsedCallback(TIM_HandleTypeDef *htim){
	if (htim->Instance==TIM3){
		HAL_GPIO_TogglePin(LED_GPIO_Port, LED_Pin);
		HAL_ADC_Start_DMA(&hadc1, (uint32_t *)ADC_Values, 1);
	}
	if (htim->Instance == TIM4) {
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
	if (htim->Instance == TIM1) {
		if( enable_motor_CMD ){
				  TxMotorCMD=1;
				  CAN_send_message(AT07_ELEC_MOTOR_CMD,1,&TxMotorCMD);
			  }
	}
}



