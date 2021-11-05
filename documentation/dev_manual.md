# Setup


## Requierements

**Software**
*for hardware devlopement* :
-   kicad -v 5.1.10
-
*for software devlopement* : (packages / system / software used)
-   stm32cubeide -v 1.6.1
    build: 9958_20210326_1446 (UTC)
    OS: Linux, v.5.10.42-1-MANJARO, x86_64 / gtk 3.24.29
    Java version: 11.0.9.1
-

**Hardware**
*Tools* :
-   Microchip CAN BUS Analyser

*Components used* :
-   [See Hardware documentation](../../hardware/doc/bom.md)

## Boards and tools use as setup for the soft dev :
 - speed board + headlight board + CAN Hub board + DashBoard Dev board
 - can Bus Analyzer (microchip) + power supply + ST link V2 + Manjaro Linux

## Can Transmission on manjaro linux

### Setup the CAN network interface
    process previously describe by Torkel : [can on raspi](https://gitlab.com/TIM-Elec/tim07-can-raspberrypi)

 - `$ lsmod` show list of the module  `mcba_usb` et  `can_dev` 
 - `$ ls /sys/class/net/` should show `can0`

 - `$ ip link set can0 type can help` is used to get help to configure the network interface 
 - `$ ip -details link show can0` let us see the status of the interface
 - `sample-point`,`restart-ms`, are options just like `details`, they are respectively used to modify the sample point of the CAN signal and to restart after a Bus Off error 

**Different configuration examples** :

- *Loopback mode* :
    - `$ sudo ip link set can0 up type can bitrate 10000 loopback on` :
    Loopback mode on with a 1000 bitrate

- *Changing mode* : 
    - `$ sudo ip link set can0 down` :
    To change mode from the interface should first go down 

- *Normal mode* :
    - `$ sudo ip link set can0 up type can bitrate 250000` :
    *The bitrate use one TIM 7 is 250000*
    
**THE CONFIGURATION DONE LIKE THAT ARE NOT PERMANENTS**

### Install and use CAN tools

   **Install** can-utils using your favorite method. 

 - from Aur with `yay can-utils`
 - with sources files from github at  [can-utils github repo](https://github.com/linux-can/can-utils)

    **Usage**
 - `candump` : display, filter and log CAN data to files (`candump  can0`)
 - `cansend` : send a single frame (`cansend  can0  04200000#01` to light up the headlight)
 - etc, see [can-utils github repo](https://github.com/linux-can/can-utils) for more options 

## Pinion
 is a tool to generate a "Nice-looking interactive diagrams for KiCAD PCBs"

 The page to learn how to use Pinion is [here](https://yaqwsx.github.io/Pinion/)
 - to generate a new diagram or a template one, the scripts in `/scripts` may be used
 - to configure or modify hte necessary parameters edit the `yaml_carte_volant_v21.yml` file in the pinion folder `/pinion_diagram`
 - to view the diagram you can execute `pinion serve -b --directory <diagram directory>` (<diagram directory> is `/pinion_diagram`)
 
## STMCubeIDE setup to program the OLIMEX STM32F103RBT6

- path : /TIM_DashBoard
- located at : /home/lepetitprince/Seafile/Organisation/TIM/Projet TIM/__Volant/TIM_DashBoard/software    
- reference manual for the mcu : https://www.st.com/resource/en/reference_manual/rm0008-stm32f101xx-stm32f102xx-stm32f103xx-stm32f105xx-and-stm32f107xx-advanced-armbased-32bit-mcus-stmicroelectronics.pdf

### CUBE MX configurations 

STM32CubeMX is ST initialization code generator for STM32 projects.
An TIM_DashBoard.ioc is the configuration file read by CubeMX to generate necessary drivers and headers. 
-- Generate peripheral initialization as a pair of .c/.h files per peripheral
-- Firmware package name and version : STM32Cube FW_F1 V1.8.4

LED             PC12                GPIO_Output
CAN Rx/Tx       PA11/PA12 
wiper_power     PC9                 GPIO_Output
wiper_pwm       PA3                 TIM_CH4 PWM
CAN_STBY        PA9                 GPIO_Output
SWDIO           PA13                DEBUG
SWCLK           PA14                DEBUG
TRACESWO        PB3                 DEBUG


#### CAN
##### Hardware Configurations
**parameter settings**
May use this calculator to reconfigure for other frequencies : http://www.bittiming.can-wiki.info/
ST Microelectronics bxCAN
Configurations for clock at : 72MHz (36 MHz in APB1)
*bit timings parameters*
Prescaler                   9
Time Quantum                250 ns
Time Quanta bit seg 1       13 times
Time Quanta bit seg 2       2 times
Time for 1 bit              4000 ns
Baud rate                   250000 bit/s
*bit timings parameters*
all                         disable
*Advanced params*
operating mode              normal
**NVIC settings**
Enable interrupts on CAN RX1 and CAN RX0

##### Software Configurations
well explained CAN filter inner working : https://schulz-m.github.io/2017/03/23/stm32-can-id-filter/
The filter Mask configuration is indispensable to receive CAN messages.
The filter function in reverse.
The filter 0x0 let every CAN message through, while 0xFFFF FFFF  check every bit of the CAN title. 

Example of a filter configuration

```C
 CAN_FilterTypeDef  sFilterConfig;

    sFilterConfig.FilterBank = 0;
    sFilterConfig.FilterMode = CAN_FILTERMODE_IDMASK;
    sFilterConfig.FilterScale = CAN_FILTERSCALE_32BIT;
    sFilterConfig.FilterIdHigh = 0x0;
    sFilterConfig.FilterIdLow = 0x0;
    sFilterConfig.FilterMaskIdHigh = 0x0;
    sFilterConfig.FilterMaskIdLow = 0x0;
    sFilterConfig.FilterFIFOAssignment = CAN_FILTER_FIFO0;
    sFilterConfig.FilterActivation = ENABLE;

    sFilterConfig.SlaveStartFilterBank = 0;




    HAL_CAN_ConfigFilter(&hcan, &sFilterConfig);      
    HAL_CAN_ActivateNotification(&hcan, CAN_IT_RX_FIFO0_MSG_PENDING); // Activate the interrupt mode


    HAL_CAN_Start(&hcan); 
 ```

On interruption the function `void HAL_CAN_RxFifo0MsgPendingCallback(CAN_HandleTypeDef *hcan){}` is called.
To send CAN message we use `HAL_CAN_AddTxMessage(&hcan, &pCAN_Header, CAN_Data, &pCAN_TxMailbox);`


#### WIPER
To control the wiper (a s90 Servo motor) we command the power (for power consumptions purposes), a timer for the pwm (for position control) and another timer for speed control.
The power control is simple GPIO output.
The pwm for the wiper should be a a period of 20ms (50Hz) and a duty cycle of 5% to 11% (1 to 2ms).
we configure the pwm using this information.
The minimum time to go from 0° to 90° is : `?`

### The code architecture

