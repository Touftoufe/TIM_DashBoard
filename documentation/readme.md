# Setup

## Boards and tools use for the soft dev :
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
 - `candump` : display, filter and log CAN data to files
 - `cansend` : send a single frame
 - etc, see [can-utils github repo](https://github.com/linux-can/can-utils) for more options 



## STMCubeIDE setup to program the OLIMEX STM32F103RBT6

- path : /TIM_DashBoard
- located at : /home/lepetitprince/Seafile/Organisation/TIM/Projet TIM/__Volant/TIM_DashBoard/software