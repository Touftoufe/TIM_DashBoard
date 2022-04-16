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
#include "user_can.h"
#include "user_can_functs.h"
#include "wiper.h"

// defines

#define abs(a) (((a) > 0) ? (a) : -(a))

#define ADC_MAX 4096

#define ADC_REF_12 ADC_MAX
#define ADC_REF_11 (ADC_REF_12/2)
#define ADC_REF_10 3250
#define ADC_REF_9 (ADC_REF_10/2)
#define ADC_REF_8 2550
#define ADC_REF_7 (ADC_REF_8/2)
#define ADC_REF_6 1950
#define ADC_REF_5 (ADC_REF_6/2)
#define ADC_REF_4 1330
#define ADC_REF_3 (ADC_REF_4/2)
#define ADC_REF_2 680
#define ADC_REF_1 (ADC_REF_2/2)
#define ADC_REF_0 0

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
volatile uint8_t enable_motor_CMD = 0;
uint8_t TxMotorCMD;
wiper_speed SpeedOfWiper = wiper_speed_0;
uint16_t TxMotorFRW;

extern uint8_t wiper_direction;
CAN_RxHeaderTypeDef pCAN_RxHeader;

// model : control GPIO (interrupts)

void HAL_GPIO_EXTI_Callback(uint16_t GPIO_Pin) {
	// on interruption on a pin (ex : BUT_Pin or GPIO_PIN_0 or ((uint16_t)0x0001) )

	if (GPIO_Pin == BUT_Pin) {
		if (HAL_GPIO_ReadPin(BUT_GPIO_Port, BUT_Pin) == GPIO_PIN_RESET) {
			TxMotorCMD = 1;
			enable_motor_CMD = 1;
			refresh_speed(15);
			//CAN_send_message(AT07_ELEC_MOTOR_CMD, 1, &TxMotorCMD);

		} else {
			TxMotorCMD = 0;
			enable_motor_CMD = 0;
			CAN_send_message(AT07_ELEC_MOTOR_CMD, 1, &TxMotorCMD);

		}
	}

	if (GPIO_Pin == Accelerator_Pin) {
		if (HAL_GPIO_ReadPin(Accelerator_GPIO_Port, Accelerator_Pin)
				== GPIO_PIN_RESET) {
			enable_motor_CMD = 1;

		} else {
			enable_motor_CMD = 0;
			TxMotorCMD = 0;
			CAN_send_message(AT07_ELEC_MOTOR_CMD, 1, &TxMotorCMD);
		}
	}

	if (GPIO_Pin == HeadLight_Pin) {
		uint8_t LightCMD[1] = { 0 };
		if (HAL_GPIO_ReadPin(HeadLight_GPIO_Port, HeadLight_Pin)
				== GPIO_PIN_RESET) {
			refresh_light(1U);
			LightCMD[0] = 1;
			CAN_send_message(AT07_LIGHTS_CMD, AT07_BR_LIGHT_LENGTH, LightCMD);

		} else {
			refresh_light(0U);
			CAN_send_message(AT07_LIGHTS_CMD, AT07_BR_LIGHT_LENGTH, LightCMD);

		}
	}

	if ((GPIO_Pin == WiperStateA_Pin) || (GPIO_Pin == WiperStateB_Pin)) {

		uint8_t AStateActivated = (HAL_GPIO_ReadPin(WiperStateA_GPIO_Port,
		WiperStateA_Pin) == GPIO_PIN_RESET) ? 1 : 0;

		uint8_t BStateActivated = (HAL_GPIO_ReadPin(WiperStateB_GPIO_Port,
		WiperStateB_Pin) == GPIO_PIN_RESET) ? 1 : 0;

		if (AStateActivated == 1 && BStateActivated == 0) { //wiper off
			wiper_stop();
		} else if (AStateActivated == 1 && BStateActivated == 1) { //wiper half speed
			wiper_start(wiper_speed_1);
		} else if (AStateActivated == 0 && BStateActivated == 1) { //wiper full speed
			wiper_start(wiper_speed_3);
		} else { //wiper off
			wiper_stop();
		}
	}

	if ((GPIO_Pin && Left_TurnSignal_Pin)
			|| (GPIO_Pin && Right_TurnSignal_Pin)) {
		uint16_t turning_signal = 0;

		uint8_t RightPressed = (HAL_GPIO_ReadPin(Right_TurnSignal_GPIO_Port,
		Right_TurnSignal_Pin) == GPIO_PIN_RESET) ? 1 : 0;

		uint8_t LeftPressed = (HAL_GPIO_ReadPin(Left_TurnSignal_GPIO_Port,
		Left_TurnSignal_Pin) == GPIO_PIN_RESET) ? 1 : 0;

		if (RightPressed == 1 && LeftPressed == 1) {
			turning_signal = 8;
		} else if ((RightPressed == 1 && LeftPressed == 0)) {
			turning_signal = 2;
		} else if ((RightPressed == 0 && LeftPressed == 1)) {
			turning_signal = 4;
		}

		refresh_turning_signals(turning_signal);
	}
	//To continue to compare with other pin on the same EXTI use :

	/* if (GPIO_Pin && GPIO_Pin) {
	 * 		if (HAL_GPIO_ReadPin(GPIO_Port, GPIO_Pin)==GPIO_PIN_RESET){
	 *
	 *		}
	 *		else if (HAL_GPIO_ReadPin(GPIO_Port, GPIO_Pin)==GPIO_PIN_SET) {
	 *
	 *		}
	 * }
	 */

}
// model : control GPIO (write/read)

// model : control wiper

// model : receive CAN messages

void HAL_CAN_RxFifo0MsgPendingCallback(CAN_HandleTypeDef *hcan) {
	extern uint8_t message[8];
	uint8_t RxData[8] = {0};
	HAL_CAN_GetRxMessage(hcan, CAN_RX_FIFO0, &pCAN_RxHeader, RxData);

	//light response
	if ((pCAN_RxHeader.ExtId) == 0x4210031) {
		message[0] = (RxData[0] == 1) ? 0 : 1;
	}
	//speed
	if ((pCAN_RxHeader.ExtId) == 0x8060140) {
		int ShowedSpeed = (RxData[3] + (RxData[2] << 8))/10; //to be checked : in what form do we receive the speed
		while (ShowedSpeed >= 100) { // turn to two digit
			ShowedSpeed /= 10;
		}
		refresh_speed(ShowedSpeed);
	}

	/*
	 * if ((pCAN_RxHeader.ExtId) == 0x4210031){
	 *		message[0]= (RxData[0]==1) ? 0 : 1;}
	 */
}

// model : send CAN messages

// model : ADC input
uint16_t AdcToCurrentcmd(uint16_t ADC_Value) {
	if (ADC_Value <= ADC_REF_1) {
		return 0;
	} else if (ADC_Value <= ADC_REF_2 && ADC_Value > ADC_REF_1) {
		return 1;
	} else if (ADC_Value <= ADC_REF_3 && ADC_Value > ADC_REF_2) {
		return 2;
	} else if (ADC_Value <= ADC_REF_4 && ADC_Value > ADC_REF_3) {
		return 3;
	} else if (ADC_Value <= ADC_REF_5 && ADC_Value > ADC_REF_4) {
		return 4;
	} else if (ADC_Value <= ADC_REF_6 && ADC_Value > ADC_REF_5) {
		return 5;
	} else if (ADC_Value <= ADC_REF_7 && ADC_Value > ADC_REF_6) {
		return 6;
	} else if (ADC_Value <= ADC_REF_8 && ADC_Value > ADC_REF_7) {
		return 7;
	} else if (ADC_Value <= ADC_REF_9 && ADC_Value > ADC_REF_8) {
		return 8;
	} else if (ADC_Value <= ADC_REF_10 && ADC_Value > ADC_REF_9) {
		return 9;
	} else if (ADC_Value <= ADC_REF_11 && ADC_Value > ADC_REF_10) {
		return 10;
	} else if (ADC_Value <= ADC_REF_12 && ADC_Value > ADC_REF_11) {
		return 10;
	} else {
		return 0;
	}
}

void HAL_ADC_ConvHalfCpltCallback(ADC_HandleTypeDef *hadc) {
	if (abs(ADC_Values[1]-ADC_Values[0]) > 200) {
		//change the equation into a table
		uint16_t currentCommand = AdcToCurrentcmd(ADC_Values[0]);

		TxMotorFRW = currentCommand;
		refresh_command(currentCommand);

		CAN_send_message(AT07_CMD_ELEC_MOTOR_FORWARD, 2,
				(uint8_t*) &TxMotorFRW);
	}
//change this into a simple variable affectation
//HAL_DMA_Start_IT(&hdma_memtomem_dma1_channel2, (uint32_t) ADC_Values,
//		(uint32_t) (ADC_Values + 1), 1);
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

