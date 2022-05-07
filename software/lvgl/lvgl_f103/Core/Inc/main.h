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
#define HeadLight_Pin GPIO_PIN_1
#define HeadLight_GPIO_Port GPIOC
#define HeadLight_EXTI_IRQn EXTI1_IRQn
#define timer_pwm_Pin GPIO_PIN_3
#define timer_pwm_GPIO_Port GPIOA
#define CurrentSelector_Pin GPIO_PIN_4
#define CurrentSelector_GPIO_Port GPIOA
#define SPI_CS_Pin GPIO_PIN_5
#define SPI_CS_GPIO_Port GPIOC
#define LCD_RST_Pin GPIO_PIN_0
#define LCD_RST_GPIO_Port GPIOB
#define LCD_DC_Pin GPIO_PIN_10
#define LCD_DC_GPIO_Port GPIOB
#define WiperStateB_Pin GPIO_PIN_12
#define WiperStateB_GPIO_Port GPIOB
#define WiperStateB_EXTI_IRQn EXTI15_10_IRQn
#define WiperStateA_Pin GPIO_PIN_14
#define WiperStateA_GPIO_Port GPIOB
#define WiperStateA_EXTI_IRQn EXTI15_10_IRQn
#define WiperPower_Pin GPIO_PIN_9
#define WiperPower_GPIO_Port GPIOC
#define CAN_STBY_Pin GPIO_PIN_9
#define CAN_STBY_GPIO_Port GPIOA
#define LED_Pin GPIO_PIN_12
#define LED_GPIO_Port GPIOC
#define Accelerator_Pin GPIO_PIN_2
#define Accelerator_GPIO_Port GPIOD
#define Accelerator_EXTI_IRQn EXTI2_IRQn
#define Right_TurnSignal_Pin GPIO_PIN_5
#define Right_TurnSignal_GPIO_Port GPIOB
#define Right_TurnSignal_EXTI_IRQn EXTI9_5_IRQn
#define Left_TurnSignal_Pin GPIO_PIN_6
#define Left_TurnSignal_GPIO_Port GPIOB
#define Left_TurnSignal_EXTI_IRQn EXTI9_5_IRQn
/* USER CODE BEGIN Private defines */

/* USER CODE END Private defines */

#ifdef __cplusplus
}
#endif

#endif /* __MAIN_H */
