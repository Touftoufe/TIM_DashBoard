/*
 *	user_can_functs.c
 *
 *  Created on: Oct 22, 2021
 *  Author: lepetitprince
 */


/* Includes ------------------------------------------------------------------*/
#include "user_can_functs.h"

uint8_t RxData[8]= {0,0,0,0,0,0,0,0};
uint8_t CAN_Data[8];

uint32_t RxFifo = 1;
uint32_t pCAN_TxMailbox;

CAN_RxHeaderTypeDef pCAN_RxHeader;

// --CAN

void CAN_send_message(uint16_t adresse,uint8_t dlc,uint8_t  *message){
	CAN_TxHeaderTypeDef pCAN_Header;
	pCAN_Header.DLC   = dlc; // 1 DLC is 8bits
	pCAN_Header.StdId = adresse;
	pCAN_Header.ExtId = adresse<<16;
	pCAN_Header.IDE   = CAN_ID_EXT;
	pCAN_Header.RTR	  = CAN_RTR_DATA;
	pCAN_Header.TransmitGlobalTime = DISABLE;

	HAL_CAN_AddTxMessage(&hcan, &pCAN_Header, message, &pCAN_TxMailbox);

}

void CAN_receive_init(void){
	CAN_FilterTypeDef  sFilterConfig;

	sFilterConfig.FilterBank = 0;
	sFilterConfig.FilterMode = CAN_FILTERMODE_IDMASK;
	sFilterConfig.FilterScale = CAN_FILTERSCALE_32BIT;
	sFilterConfig.FilterIdHigh = /*((0x04210031  << 5)  | (0x04210031  >> (32 - 5))) & 0xFFFF;*/(0x04210031 >> 13);
	sFilterConfig.FilterIdLow = (0x04210031 & 0X1FFF) << 3;//(0x04210031 >> (11 - 3)) & 0xFFF8;//(0x04210031 >> 13);
	sFilterConfig.FilterMaskIdHigh = 0xFFFF;//(((uint16_t)0x0FFFffFF  << 5)  | (0x04210031  >> (32 - 5))) & 0xFFFF;
	sFilterConfig.FilterMaskIdLow =0x0000;// 0xFFF8;//(0x0FFFFFFF >> (11 - 3)) & 0xFFF8;
	sFilterConfig.FilterFIFOAssignment = CAN_FILTER_FIFO0;
	sFilterConfig.FilterActivation = ENABLE;

	sFilterConfig.SlaveStartFilterBank = 0;

	HAL_CAN_ConfigFilter(&hcan, &sFilterConfig);      // Configure le filtre comme ci-dessus
	HAL_CAN_ActivateNotification(&hcan, CAN_IT_RX_FIFO0_MSG_PENDING); // Active le mode interruption


	HAL_CAN_Start(&hcan);
	HAL_GPIO_WritePin(CAN_STBY_GPIO_Port, CAN_STBY_Pin, GPIO_PIN_RESET);

}


void CAN_close_can(void){
	HAL_GPIO_WritePin(CAN_STBY_GPIO_Port, CAN_STBY_Pin, GPIO_PIN_SET);
}


void HAL_CAN_RxFifo0MsgPendingCallback(CAN_HandleTypeDef *hcan){
	extern uint8_t message[8];
	extern uint8_t RxData[8];
	HAL_CAN_GetRxMessage(hcan, CAN_RX_FIFO0, &pCAN_RxHeader, RxData);

	if ((pCAN_RxHeader.ExtId) == 0x4210031){
		message[0]= (RxData[0]==1) ? 0 : 1;
	}
}




