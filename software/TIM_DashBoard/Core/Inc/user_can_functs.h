/*
 * user_can_functs.h
 *
 *  Created on: Oct 22, 2021
 *      Author: lepetitprince
 */

#ifndef INC_USER_CAN_FUNCTS_H_
#define INC_USER_CAN_FUNCTS_H_

#include "can.h"
#include "user_can.h"




void CAN_send_message(uint16_t adresse,uint8_t dlc, uint8_t *message);

void CAN_receive_init(void);

void CAN_close_can(void);

#endif /* INC_USER_CAN_FUNCTS_H_ */
