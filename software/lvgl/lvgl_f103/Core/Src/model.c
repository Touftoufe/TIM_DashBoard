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
//#include "view.h"

//Hardware
#include "main.h"
#include "adc.h"
#include "can.h"
#include "dma.h"
#include "tim.h"
#include "gpio.h"

//Application
#include "user_can.h"  //definitions
#include "user_can_functs.h" //custom function
#include "wiper.h"

//Macro
#define abs(a) (((a) > 0) ? (a) : -(a))

//Defines
//The reference values are to be redefined
#define ADC_MAX 4096
#define ADC_REF_12
#define ADC_REF_11
#define ADC_REF_10
#define ADC_REF_9
#define ADC_REF_8
#define ADC_REF_7
#define ADC_REF_6 4096
#define ADC_REF_5 2900
#define ADC_REF_4 2250
#define ADC_REF_3 1640
#define ADC_REF_2 1005
#define ADC_REF_1 510
#define ADC_REF_0 170

//variables

/* External variables --------------------------------------------------------*/
extern DMA_HandleTypeDef hdma_adc1;
extern ADC_HandleTypeDef hadc1;
extern CAN_HandleTypeDef hcan;
extern TIM_HandleTypeDef htim1;
extern TIM_HandleTypeDef htim2;
extern TIM_HandleTypeDef htim3;
extern TIM_HandleTypeDef htim4;
//to be deleted ?? 

/* USER CODE BEGIN EV */

static uint8_t TxMotorCMD;
int16_t ADC_Values[2] = { 0 };
volatile uint8_t enable_motor_CMD = 0;
wiper_speed SpeedOfWiper = wiper_speed_0;

extern uint8_t wiper_direction; //define in wiper.c & used in timer control in model.c

//headlight related variable to somewhat debounce the command
uint8_t headlight_status = 0;
uint32_t prev_time_in =  0;
uint32_t next_time_in =  0;

// model : control GPIO (interrupts)

void HAL_GPIO_EXTI_Callback(uint16_t GPIO_Pin) {
	// on interruption on a pin (ex : BUT_Pin or GPIO_PIN_0 or ((uint16_t)0x0001) )

	if (GPIO_Pin == Accelerator_Pin) {

		if (HAL_GPIO_ReadPin(Accelerator_GPIO_Port, Accelerator_Pin)
				== GPIO_PIN_RESET) {
			TxMotorCMD = 1;
			enable_motor_CMD = 1;

		} else {
			enable_motor_CMD = 0;
			TxMotorCMD = 0;
			CAN_send_message(AT07_ELEC_MOTOR_CMD, 1, &TxMotorCMD);
			CAN_send_message(AT07_ELEC_MOTOR_CMD, 1, &TxMotorCMD);
		}
	}

	if (GPIO_Pin == HeadLight_Pin) {

		next_time_in = TIM1->CNT;
		if(abs(next_time_in - prev_time_in) >= 7000){
			prev_time_in = next_time_in;


			headlight_status = 1^headlight_status;
			refresh_light(headlight_status);
			CAN_send_message( (AT07_LIGHTS_CMD) , AT07_LIGHTS_LENGTH, &headlight_status);

		}

	}

	if ((GPIO_Pin == Left_TurnSignal_Pin)
			|| (GPIO_Pin == Right_TurnSignal_Pin)) {

		uint8_t turning_signal = 0;

		uint8_t RightPressed = HAL_GPIO_ReadPin(Right_TurnSignal_GPIO_Port,
		Right_TurnSignal_Pin) == GPIO_PIN_RESET ;

		uint8_t LeftPressed = HAL_GPIO_ReadPin(Left_TurnSignal_GPIO_Port,
		Left_TurnSignal_Pin) == GPIO_PIN_RESET ;

		if ((RightPressed == 1 && LeftPressed == 0)) {
			turning_signal = 2;
			CAN_send_message(AT07_BLINKERS_CMD, AT07_BLINKERS_LENGTH,&turning_signal);
		} else if ((RightPressed == 0 && LeftPressed == 1)) {
			turning_signal = 4;
			CAN_send_message(AT07_BLINKERS_CMD, AT07_BLINKERS_LENGTH,&LeftPressed);
		} else {
			turning_signal = 0;
			CAN_send_message(AT07_BLINKERS_CMD, AT07_BLINKERS_LENGTH,&turning_signal);
		}

		refresh_turning_signals(turning_signal);
	}

	if ((GPIO_Pin == WiperStateA_Pin) || (GPIO_Pin == WiperStateB_Pin)) {
		//uint16_t wiper_state = 0;

		uint8_t WiperStateAPressed = HAL_GPIO_ReadPin(WiperStateA_GPIO_Port,
		WiperStateA_Pin) == GPIO_PIN_RESET;

		uint8_t WiperStateBPressed = HAL_GPIO_ReadPin(WiperStateB_GPIO_Port,
		WiperStateB_Pin) == GPIO_PIN_RESET;

		if ((WiperStateAPressed == 1 && WiperStateBPressed == 0)) {
			wiper_start(wiper_speed_1);
		} else if ((WiperStateAPressed == 0 && WiperStateBPressed == 1)) {
			wiper_start(wiper_speed_3);
		} else {
			wiper_stop();
		}
	}//update function to set speed on wiper.h/c
}

// model : receive CAN messages
void HAL_CAN_RxFifo0MsgPendingCallback(CAN_HandleTypeDef *hcan) {

	uint8_t RxData[8] = { 0 };
	CAN_RxHeaderTypeDef pCAN_RxHeader;  

	HAL_CAN_GetRxMessage(hcan, CAN_RX_FIFO0, &pCAN_RxHeader, RxData);

	//speed
	if ((pCAN_RxHeader.ExtId) == 0x8060140) { //r eplace by define value 
		int ShowedSpeed = (RxData[3] + (RxData[2] << 8)) / 10;
		refresh_speed(ShowedSpeed);
	}
}

// model : ADC input
uint16_t AdcToCurrentcmd(uint16_t ADC_Value) {
	if (ADC_Value <= ADC_REF_0) {
		return 0;
	} else if (ADC_Value <= ADC_REF_1 && ADC_Value > ADC_REF_0) {
		return 1;
	} else if (ADC_Value <= ADC_REF_2 && ADC_Value > ADC_REF_1) {
		return 2;
	} else if (ADC_Value <= ADC_REF_3 && ADC_Value > ADC_REF_2) {
		return 3;
	} else if (ADC_Value <= ADC_REF_4 && ADC_Value > ADC_REF_3) {
		return 4;
	} else if (ADC_Value <= ADC_REF_5 && ADC_Value > ADC_REF_4) {
		return 5;
	} else if (ADC_Value <= ADC_REF_6 && ADC_Value > ADC_REF_5) {
		return 6;
	} /*else if (ADC_Value <= ADC_REF_8 && ADC_Value > ADC_REF_7) {
	 return 7;
	 } else if (ADC_Value <= ADC_REF_9 && ADC_Value > ADC_REF_8) {
	 return 8;
	 } else if (ADC_Value <= ADC_REF_10 && ADC_Value > ADC_REF_9) {
	 return 9;
	 } else if (ADC_Value <= ADC_REF_11 && ADC_Value > ADC_REF_10) {
	 return 9;
	 } else if (ADC_Value <= ADC_REF_12 && ADC_Value > ADC_REF_11) {
	 return 9;
	 }*/else {
		return 0;
	}
}

void HAL_ADC_ConvHalfCpltCallback(ADC_HandleTypeDef *hadc) {
	if (abs(ADC_Values[1]-ADC_Values[0]) > 200) {

		uint16_t currentCommand = AdcToCurrentcmd(ADC_Values[0]);

		uint8_t TxMotorFRW[2] = { ((currentCommand * 2000) >> 8) & 0xFF,
				(currentCommand * 2000) & 0xFF };
		refresh_command(currentCommand);
		CAN_send_message(AT07_CMD_ELEC_MOTOR_FORWARD,
		AT07_ELEC_MOTOR_FORWARD_LENGTH, TxMotorFRW);
	}

	ADC_Values[1] = ADC_Values[0];

}

// model : timer period triggered actions
void HAL_TIM_PeriodElapsedCallback(TIM_HandleTypeDef *htim) {
	if (htim->Instance == TIM3) {
		HAL_GPIO_TogglePin(LED_GPIO_Port, LED_Pin);
		HAL_ADC_Start_DMA(&hadc1, (uint32_t*) ADC_Values, 1);
	}
	if (htim->Instance == TIM4) {
		switch (wiper_direction) {
		case 1:
			TIM2->CCR4 = 200;
			wiper_direction = 0;
			break;
		case 2:
			TIM2->CCR4 = 100;
			wiper_direction = 1;
			break;
		default:
			TIM2->CCR4 = 100;
			wiper_direction = 1;
			break;
		}

	}
	if (htim->Instance == TIM1) {
		if (enable_motor_CMD) {
			CAN_send_message(AT07_ELEC_MOTOR_CMD, 1, &TxMotorCMD);
		}
	}
}

// model : CAN module

// model : control wiper

// model : control GPIO (write/read)

//=====================================> migrating wiper code to model to be tried ????

