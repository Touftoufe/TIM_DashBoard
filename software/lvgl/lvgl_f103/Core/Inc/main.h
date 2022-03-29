/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * @file           : main.h
  * @brief          : Header for main.c file.
  *                   This file contains the common defines of the application.
  ******************************************************************************
  * @attention
  *
  * Copyright (c) 2022 STMicroelectronics.
  * All rights reserved.
  *
  * This software is licensed under terms that can be found in the LICENSE file
  * in the root directory of this software component.
  * If no LICENSE file comes with this software, it is provided AS-IS.
  *
  ******************************************************************************
  */
/* USER CODE END Header */

/* Define to prevent recursive inclusion -------------------------------------*/
#ifndef __MAIN_H
#define __MAIN_H

#ifdef __cplusplus
extern "C" {
#endif

/* Includes ------------------------------------------------------------------*/
#include "stm32f1xx_hal.h"

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */

/* USER CODE END Includes */

/* Exported types ------------------------------------------------------------*/
/* USER CODE BEGIN ET */

/* USER CODE END ET */

/* Exported constants --------------------------------------------------------*/
/* USER CODE BEGIN EC */

/* USER CODE END EC */

/* Exported macro ------------------------------------------------------------*/
/* USER CODE BEGIN EM */

/* USER CODE END EM */

/* Exported functions prototypes ---------------------------------------------*/
void Error_Handler(void);

/* USER CODE BEGIN EFP */

/* USER CODE END EFP */

/* Private defines -----------------------------------------------------------*/
#define Left_TurnSignal_Pin GPIO_PIN_13
#define Left_TurnSignal_GPIO_Port GPIOC
#define BackLight_Pin GPIO_PIN_1
#define BackLight_GPIO_Port GPIOC
#define MenuOk_Pin GPIO_PIN_2
#define MenuOk_GPIO_Port GPIOC
#define MenuVertical_Pin GPIO_PIN_3
#define MenuVertical_GPIO_Port GPIOC
#define BUT_Pin GPIO_PIN_0
#define BUT_GPIO_Port GPIOA
#define BUT_EXTI_IRQn EXTI0_IRQn
#define MenuVerticalA1_Pin GPIO_PIN_1
#define MenuVerticalA1_GPIO_Port GPIOA
#define timer_pwm_Pin GPIO_PIN_3
#define timer_pwm_GPIO_Port GPIOA
#define CurrentSelector_Pin GPIO_PIN_4
#define CurrentSelector_GPIO_Port GPIOA
#define LCD_DC_Pin GPIO_PIN_4
#define LCD_DC_GPIO_Port GPIOC
#define SPI_CS_Pin GPIO_PIN_5
#define SPI_CS_GPIO_Port GPIOC
#define LCD_RST_Pin GPIO_PIN_0
#define LCD_RST_GPIO_Port GPIOB
#define WiperSpeed_Pin GPIO_PIN_12
#define WiperSpeed_GPIO_Port GPIOB
#define WiperPower_Pin GPIO_PIN_9
#define WiperPower_GPIO_Port GPIOC
#define Right_TurnSignal_Pin GPIO_PIN_8
#define Right_TurnSignal_GPIO_Port GPIOA
#define CAN_STBY_Pin GPIO_PIN_9
#define CAN_STBY_GPIO_Port GPIOA
#define ForwardReverse_Pin GPIO_PIN_10
#define ForwardReverse_GPIO_Port GPIOA
#define Accelerator_Pin GPIO_PIN_11
#define Accelerator_GPIO_Port GPIOC
#define LED_Pin GPIO_PIN_12
#define LED_GPIO_Port GPIOC
/* USER CODE BEGIN Private defines */

/* USER CODE END Private defines */

#ifdef __cplusplus
}
#endif

#endif /* __MAIN_H */
