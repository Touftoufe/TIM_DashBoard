/*
 *	user_can.h
 *
 *  Created on: Jul 12, 2021
 *  Sourced from: croyer
 *  Author: lepetitprince
 */

#ifndef INC_USER_CAN_H_
#define INC_USER_CAN_H_

// Placer ici les adresses respectives de chaque carte ectronique

#define BROADCAST_ADDR							0xFF
#define NOT_SPECIFIED_ADDR						0x0
#define DASHBOARD_ADDR							0x1
#define STEARING_WHEEL_ADDR						0x2
#define GATEWAY_ADDR							0x3
#define THERMAL_ENGINE_ADDR						0xFD
#define ELECTRICAL_MOTOR_ADDR					0xFE
#define BACK_LIGHT_ADDR							0x31
#define FRONT_LIGHT_ADDR						0x32
#define GLOBAL_LIGHT_ADDR						0x30
#define BLUETOOTH_ADDR							0xE1
#define XBEE_SD_ADDR							0xE0
#define POSITION_MONITORING_ADDR				0x40
#define SIMULATION_ADDR							0xD0

// Placer ici les identifiants standard des messages CAN

#define AT07_THERMAL_STARTER_CMD				0x402
#define AT07_ELEC_MOTOR_CMD						0x404
#define AT07_THERMAL_ENABLE_INJECT_CMD			0x400
#define AT07_THERMAL_CARTO_CFG					0x200
#define AT07_THERMAL_BOARD_STATUS				0x600
#define AT07_RUN_INFO_DATA						0x820
#define AT07_LIGHTS_CMD							0x420
#define AT07_LIGHTS_RESP						0x421
#define AT07_BLINKERS_CMD						0x422
#define AT07_BLINKERS_RESP						0x423
#define AT07_FL_LIGHT_CFG						0x222
#define AT07_FL_LIGHT_RESP						0x223
#define AT07_FR_LIGHT_CFG						0x220
#define AT07_FR_LIGHT_RESP						0x221
#define AT07_BL_LIGHT_CFG						0x224
#define AT07_BL_LIGHT_RESP						0x225
#define AT07_BR_LIGHT_CFG						0x226
#define AT07_BR_LIGHT_RESP						0x227
#define AT07_BLINK_TIME_CFG						0x228
#define AT07_BLINK_TIME_RESP					0x229
#define AT07_LIGHTS_STATUS_REQ					0x620
#define AT07_MSG_PILOT1_DATA					0x860
#define AT07_MSG_PILOT2_DATA					0x862
#define AT07_MSG_PILOT3_DATA					0x864
#define AT07_SPEED_DATA							0x806
#define AT07_BATTERY_DATA						0x840
#define AT07_POSITION_LAT_DATA					0x800
#define AT07_POSITION_LONG_DATA					0x802
#define AT07_POSITION_MODE_DATA					0x804
#define AT07_CMD_ELEC_MOTOR_FORWARD				0x460
#define AT07_CMD_ELEC_MOTOR_BACKWARD			0x462


// Placer ici les longueurs de data pour chaque message CAN.

#define AT07_THERMAL_ENABLE_INJECT_LENGTH		1
#define AT07_THERMAL_STARTER_LENGTH				1
#define AT07_THERMAL_CARTO_LENGTH				1
#define AT07_THERMAL_BOARD_LENGTH				1
#define AT07_RUN_INFO_LENGTH					8
#define AT07_LIGHTS_LENGTH						1
#define AT07_LIGHTS_LENGTH						1
#define AT07_BLINKERS_LENGTH					1
#define AT07_BLINKERS_LENGTH					1
#define AT07_FL_LIGHT_LENGTH					2
#define AT07_FL_LIGHT_LENGTH					2
#define AT07_FR_LIGHT_LENGTH					2
#define AT07_FR_LIGHT_LENGTH					2
#define AT07_BL_LIGHT_LENGTH					2
#define AT07_BL_LIGHT_LENGTH					2
#define AT07_BR_LIGHT_LENGTH					2
#define AT07_BR_LIGHT_LENGTH					2
#define AT07_BLINK_TIME_LENGTH					2
#define AT07_BLINK_TIME_LENGTH					2
#define AT07_LIGHTS_STATUS_LENGTH				0
#define AT07_MSG_PILOT1_LENGTH					8
#define AT07_MSG_PILOT2_LENGTH					8
#define AT07_MSG_PILOT3_LENGTH					8
#define AT07_SPEED_LENGTH						4
#define AT07_BATTERY_LENGTH						4
#define AT07_POSITION_LAT_LENGTH				4
#define AT07_POSITION_LONG_LENGTH				4
#define AT07_POSITION_MODE_LENGTH				1
#define AT07_ELEC_MOTOR_FORWARD_LENGTH			1
#define AT07_ELEC_MOTOR_BACKWARD_LENGTH			1



#endif /* INC_USER_CAN_H_ */
