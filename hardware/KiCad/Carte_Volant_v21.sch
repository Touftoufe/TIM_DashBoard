EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 8268 11693 portrait
encoding utf-8
Sheet 1 1
Title "Carte Volant ( +TdB)"
Date "2020-09-22"
Rev "V2.1"
Comp "TIM UPS-INSA"
Comment1 "De l'interface urlisisateurs avec un ensemble de boutons vers un can bus et l'eesuie glace."
Comment2 "Controle de TIM 07 - avec option pour TIM 08"
Comment3 "Ajout d'éléments de securité et de tests"
Comment4 ""
$EndDescr
Text GLabel 1000 1250 2    50   Input ~ 0
ADC_current_Selector
$Comp
L Interface_CAN_LIN:MCP2561-E-SN U3
U 1 1 5F44A7F3
P 2450 5950
F 0 "U3" H 2150 5600 50  0000 C CNN
F 1 "MCP2561-E-SN" H 2850 5600 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 2450 5450 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/25167A.pdf" H 2450 5950 50  0001 C CNN
	1    2450 5950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR08
U 1 1 5F44A80F
P 2450 6350
F 0 "#PWR08" H 2450 6100 50  0001 C CNN
F 1 "GND" H 2350 6350 50  0000 C CNN
F 2 "" H 2450 6350 50  0001 C CNN
F 3 "" H 2450 6350 50  0001 C CNN
	1    2450 6350
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 5F44A816
P 3150 5500
F 0 "R2" V 2943 5500 50  0000 C CNN
F 1 "10k" V 3034 5500 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 3080 5500 50  0001 C CNN
F 3 "~" H 3150 5500 50  0001 C CNN
	1    3150 5500
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R1
U 1 1 5F44A81C
P 3450 5500
F 0 "R1" V 3243 5500 50  0000 C CNN
F 1 "10k" V 3334 5500 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 3380 5500 50  0001 C CNN
F 3 "~" H 3450 5500 50  0001 C CNN
	1    3450 5500
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR07
U 1 1 5F44A822
P 3600 5500
F 0 "#PWR07" H 3600 5250 50  0001 C CNN
F 1 "GND" V 3605 5372 50  0000 R CNN
F 2 "" H 3600 5500 50  0001 C CNN
F 3 "" H 3600 5500 50  0001 C CNN
	1    3600 5500
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2450 5500 2450 5550
Connection ~ 3300 5500
$Comp
L Device:C C11
U 1 1 5F44A82B
P 2300 5500
F 0 "C11" V 2350 5600 50  0000 C CNN
F 1 "100n" V 2450 5500 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 2338 5350 50  0001 C CNN
F 3 "~" H 2300 5500 50  0001 C CNN
	1    2300 5500
	0    -1   -1   0   
$EndComp
Connection ~ 2450 5500
$Comp
L power:GND #PWR010
U 1 1 5F44A832
P 2150 5500
F 0 "#PWR010" H 2150 5250 50  0001 C CNN
F 1 "GND" V 2155 5372 50  0000 R CNN
F 2 "" H 2150 5500 50  0001 C CNN
F 3 "" H 2150 5500 50  0001 C CNN
	1    2150 5500
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR09
U 1 1 5F44A838
P 2450 5500
F 0 "#PWR09" H 2450 5350 50  0001 C CNN
F 1 "+5V" H 2550 5600 50  0000 C CNN
F 2 "" H 2450 5500 50  0001 C CNN
F 3 "" H 2450 5500 50  0001 C CNN
	1    2450 5500
	1    0    0    -1  
$EndComp
Wire Wire Line
	3300 5500 3300 5950
Text GLabel 1950 5750 0    50   Input ~ 0
CAN_Tx
Text GLabel 3000 950  0    50   Input ~ 0
CAN_Rx
Text GLabel 1950 6150 0    50   Input ~ 0
CAN_STBY
$Comp
L power:GND #PWR05
U 1 1 5F44A853
P 6500 6300
F 0 "#PWR05" H 6500 6050 50  0001 C CNN
F 1 "GND" V 6505 6172 50  0000 R CNN
F 2 "" H 6500 6300 50  0001 C CNN
F 3 "" H 6500 6300 50  0001 C CNN
	1    6500 6300
	-1   0    0    -1  
$EndComp
Connection ~ 6500 5950
Wire Wire Line
	6500 5950 6500 6300
Connection ~ 6300 5950
Wire Wire Line
	6500 5950 6500 5650
Wire Wire Line
	6300 5950 6500 5950
Wire Wire Line
	6300 5950 6100 5950
Wire Wire Line
	6300 5650 6300 5950
Wire Wire Line
	6100 5650 6100 5950
$Comp
L power:GND #PWR01
U 1 1 5F44A803
P 5800 4850
F 0 "#PWR01" H 5800 4600 50  0001 C CNN
F 1 "GND" H 5650 4800 50  0000 C CNN
F 2 "" H 5800 4850 50  0001 C CNN
F 3 "" H 5800 4850 50  0001 C CNN
	1    5800 4850
	0    1    -1   0   
$EndComp
Text GLabel 1950 5850 0    50   Output ~ 0
CAN_Rx
Text GLabel 3000 1150 0    50   Output ~ 0
CAN_Tx
NoConn ~ 6400 5650
NoConn ~ 6200 5650
$Comp
L power:+12V #PWR06
U 1 1 5F46E985
P 5850 6050
F 0 "#PWR06" H 5850 5900 50  0001 C CNN
F 1 "+12V" V 5865 6178 50  0000 L CNN
F 2 "" H 5850 6050 50  0001 C CNN
F 3 "" H 5850 6050 50  0001 C CNN
	1    5850 6050
	0    -1   1    0   
$EndComp
$Comp
L Regulator_Switching:TSR_1-2450 U1
U 1 1 5F46F293
P 3300 7150
F 0 "U1" H 3650 7400 50  0000 L CNN
F 1 "TSR_1-2450" H 3050 7400 50  0000 L CNN
F 2 "Converter_DCDC:Converter_DCDC_TRACO_TSR-1_THT" H 3300 7000 50  0001 L CIN
F 3 "http://www.tracopower.com/products/tsr1.pdf" H 3300 7150 50  0001 C CNN
	1    3300 7150
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR02
U 1 1 5F486FBB
P 2750 7050
F 0 "#PWR02" H 2750 6900 50  0001 C CNN
F 1 "+12V" V 2765 7178 50  0000 L CNN
F 2 "" H 2750 7050 50  0001 C CNN
F 3 "" H 2750 7050 50  0001 C CNN
	1    2750 7050
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR04
U 1 1 5F487851
P 3900 7050
F 0 "#PWR04" H 3900 6900 50  0001 C CNN
F 1 "+5V" V 3850 7000 50  0000 C CNN
F 2 "" H 3900 7050 50  0001 C CNN
F 3 "" H 3900 7050 50  0001 C CNN
	1    3900 7050
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR03
U 1 1 5F488120
P 3300 7450
F 0 "#PWR03" H 3300 7200 50  0001 C CNN
F 1 "GND" H 3500 7450 50  0000 R CNN
F 2 "" H 3300 7450 50  0001 C CNN
F 3 "" H 3300 7450 50  0001 C CNN
	1    3300 7450
	1    0    0    -1  
$EndComp
Wire Wire Line
	2900 7050 2750 7050
Wire Wire Line
	3300 7450 3300 7350
Text GLabel 1000 1150 2    50   Input ~ 0
Marche_AVNT-ARRIER
Text GLabel 1000 950  2    50   Input ~ 0
POWER_ON-OFF
$Comp
L Connector_Generic:Conn_01x24 ConnToBareScreen1
U 1 1 5F4B657B
P 6150 9400
F 0 "ConnToBareScreen1" V 6367 9346 50  0000 C CNN
F 1 "FFC_PFC_Conn_01x24_0.5MM" V 6276 9346 50  0000 C CNN
F 2 "Connector_FFC-FPC:Hirose_FH12-24S-0.5SH_1x24-1MP_P0.50mm_Horizontal" H 6150 9400 50  0001 C CNN
F 3 "https://www.waveshare.com/w/upload/2/2a/2.7inch_e-Paper_HAT_Schematic.pdf" H 6150 9400 50  0001 C CNN
	1    6150 9400
	0    -1   1    0   
$EndComp
Text GLabel 5050 9200 1    50   Input ~ 0
HLT_CTL
Text GLabel 5150 9200 1    50   Input ~ 0
GDR
Text GLabel 5250 9200 1    50   Input ~ 0
RESE
Text GLabel 5350 9200 1    50   Input ~ 0
VGL
Text GLabel 5450 9200 1    50   Input ~ 0
VGH
Text GLabel 5550 9200 1    50   Input ~ 0
TSCL
Text GLabel 5650 9200 1    50   Input ~ 0
TSDA
Text GLabel 5750 9200 1    50   Input ~ 0
BS
Text GLabel 5850 9200 1    50   Input ~ 0
BUSY
Text GLabel 5950 9200 1    50   Input ~ 0
RST
Text GLabel 6050 9200 1    50   Input ~ 0
D_C
Text GLabel 6150 9200 1    50   Input ~ 0
CS
Text GLabel 6250 9200 1    50   Input ~ 0
SCLK
Text GLabel 6350 9200 1    50   Input ~ 0
SDI
Text GLabel 6750 9200 1    50   Input ~ 0
VDD
Text GLabel 6850 9200 1    50   Input ~ 0
VPP
Text GLabel 6950 9200 1    50   Input ~ 0
VSH
Text GLabel 7050 9200 1    50   Input ~ 0
PREVGH
Text GLabel 7150 9200 1    50   Input ~ 0
VSL
Text GLabel 7250 9200 1    50   Input ~ 0
PREVGL
Text GLabel 7350 9200 1    50   Input ~ 0
VCOM
$Comp
L Device:C C4
U 1 1 5F4C1F58
P 1100 9700
F 0 "C4" V 848 9700 50  0000 C CNN
F 1 "4.7u" V 939 9700 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 1138 9550 50  0001 C CNN
F 3 "~" H 1100 9700 50  0001 C CNN
	1    1100 9700
	0    1    1    0   
$EndComp
$Comp
L Device:L_Core_Ferrite L1
U 1 1 5F4C4531
P 1500 9700
F 0 "L1" V 1650 9600 50  0000 C CNN
F 1 "L_Core_Ferrite" V 1550 9300 50  0000 C CNN
F 2 "Inductor_SMD:L_1206_3216Metric" H 1500 9700 50  0001 C CNN
F 3 "~" H 1500 9700 50  0001 C CNN
	1    1500 9700
	0    -1   -1   0   
$EndComp
$Comp
L Transistor_FET:2N7002E SI1308EDL-T1
U 1 1 5F4C89D3
P 2300 9900
F 0 "SI1308EDL-T1" H 2504 9854 50  0000 L CNN
F 1 "Si1304BDL" H 2504 9945 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-323_SC-70" H 2500 9825 50  0001 L CIN
F 3 "http://www.diodes.com/assets/Datasheets/ds30376.pdf" H 2300 9900 50  0001 L CNN
	1    2300 9900
	-1   0    0    -1  
$EndComp
$Comp
L Device:C C5
U 1 1 5F4CB56E
P 1400 10000
F 0 "C5" V 1148 10000 50  0000 C CNN
F 1 "4.7u" V 1239 10000 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 1438 9850 50  0001 C CNN
F 3 "~" H 1400 10000 50  0001 C CNN
	1    1400 10000
	0    1    1    0   
$EndComp
$Comp
L Diode:MBR0530 D3
U 1 1 5F4CBF10
P 1750 10150
F 0 "D3" V 1796 10070 50  0000 R CNN
F 1 "MBR0530" V 1705 10070 50  0000 R CNN
F 2 "Diode_SMD:D_SOD-123" H 1750 9975 50  0001 C CNN
F 3 "http://www.mccsemi.com/up_pdf/MBR0520~MBR0580(SOD123).pdf" H 1750 10150 50  0001 C CNN
	1    1750 10150
	0    -1   -1   0   
$EndComp
$Comp
L Diode:MBR0530 D2
U 1 1 5F4CC364
P 1050 10150
F 0 "D2" V 1004 10230 50  0000 L CNN
F 1 "MBR0530" V 1150 10150 50  0000 L CNN
F 2 "Diode_SMD:D_SOD-123" H 1050 9975 50  0001 C CNN
F 3 "http://www.mccsemi.com/up_pdf/MBR0520~MBR0580(SOD123).pdf" H 1050 10150 50  0001 C CNN
	1    1050 10150
	0    1    1    0   
$EndComp
$Comp
L Diode:MBR0530 D1
U 1 1 5F4CCCD9
P 800 10150
F 0 "D1" V 846 10070 50  0000 R CNN
F 1 "MBR0530" V 900 10350 50  0000 R CNN
F 2 "Diode_SMD:D_SOD-123" H 800 9975 50  0001 C CNN
F 3 "http://www.mccsemi.com/up_pdf/MBR0520~MBR0580(SOD123).pdf" H 800 10150 50  0001 C CNN
	1    800  10150
	0    -1   -1   0   
$EndComp
Wire Wire Line
	800  10000 1050 10000
Connection ~ 1050 10000
Wire Wire Line
	1050 10000 1250 10000
Wire Wire Line
	1550 10000 1750 10000
Wire Wire Line
	1750 10000 1750 9700
Connection ~ 1750 10000
Wire Wire Line
	1350 9700 1300 9700
$Comp
L Device:R R4
U 1 1 5F4D39AC
P 2500 10350
F 0 "R4" H 2430 10304 50  0000 R CNN
F 1 "10k" H 2430 10395 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 2430 10350 50  0001 C CNN
F 3 "~" H 2500 10350 50  0001 C CNN
	1    2500 10350
	1    0    0    -1  
$EndComp
$Comp
L Device:R R3
U 1 1 5F4D40CE
P 2200 10350
F 0 "R3" H 2130 10304 50  0000 R CNN
F 1 "47r" H 2130 10395 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 2130 10350 50  0001 C CNN
F 3 "~" H 2200 10350 50  0001 C CNN
	1    2200 10350
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0102
U 1 1 5F4D4D2E
P 1300 9700
F 0 "#PWR0102" H 1300 9550 50  0001 C CNN
F 1 "+3.3V" H 1315 9873 50  0000 C CNN
F 2 "" H 1300 9700 50  0001 C CNN
F 3 "" H 1300 9700 50  0001 C CNN
	1    1300 9700
	1    0    0    -1  
$EndComp
Connection ~ 1300 9700
Wire Wire Line
	1300 9700 1250 9700
$Comp
L power:GND #PWR0103
U 1 1 5F4D65C1
P 950 9700
AR Path="/5F4D65C1" Ref="#PWR0103"  Part="1" 
AR Path="/5F201C96/5F4D65C1" Ref="#PWR?"  Part="1" 
F 0 "#PWR0103" H 950 9450 50  0001 C CNN
F 1 "GND" H 955 9527 50  0000 C CNN
F 2 "" H 950 9700 50  0001 C CNN
F 3 "" H 950 9700 50  0001 C CNN
	1    950  9700
	0    1    1    0   
$EndComp
Wire Wire Line
	2200 10200 2200 10100
Wire Wire Line
	2500 10200 2500 9900
$Comp
L power:GND #PWR0104
U 1 1 5F4D8DFF
P 2350 10600
AR Path="/5F4D8DFF" Ref="#PWR0104"  Part="1" 
AR Path="/5F201C96/5F4D8DFF" Ref="#PWR?"  Part="1" 
F 0 "#PWR0104" H 2350 10350 50  0001 C CNN
F 1 "GND" H 2355 10427 50  0000 C CNN
F 2 "" H 2350 10600 50  0001 C CNN
F 3 "" H 2350 10600 50  0001 C CNN
	1    2350 10600
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 10500 2500 10600
Wire Wire Line
	2500 10600 2350 10600
Wire Wire Line
	2200 10600 2200 10500
Connection ~ 2350 10600
Wire Wire Line
	2350 10600 2200 10600
$Comp
L power:GND #PWR0105
U 1 1 5F4DAF0E
P 800 10300
AR Path="/5F4DAF0E" Ref="#PWR0105"  Part="1" 
AR Path="/5F201C96/5F4DAF0E" Ref="#PWR?"  Part="1" 
F 0 "#PWR0105" H 800 10050 50  0001 C CNN
F 1 "GND" H 805 10127 50  0000 C CNN
F 2 "" H 800 10300 50  0001 C CNN
F 3 "" H 800 10300 50  0001 C CNN
	1    800  10300
	1    0    0    -1  
$EndComp
Text GLabel 1050 10300 3    50   Input ~ 0
PREVGL
Text GLabel 1750 10300 3    50   Input ~ 0
PREVGH
Text GLabel 2500 10100 2    50   Input ~ 0
GDR
Text GLabel 2200 10150 2    50   Input ~ 0
RESE
Wire Wire Line
	1650 9700 1750 9700
Connection ~ 1750 9700
Wire Wire Line
	1750 9700 2200 9700
$Comp
L Device:C C6
U 1 1 5F4E627D
P 6450 8650
F 0 "C6" H 6565 8696 50  0000 L CNN
F 1 "104" H 6300 8750 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 6488 8500 50  0001 C CNN
F 3 "~" H 6450 8650 50  0001 C CNN
	1    6450 8650
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0106
U 1 1 5F4E67B0
P 6550 8800
F 0 "#PWR0106" H 6550 8650 50  0001 C CNN
F 1 "+3.3V" H 6500 8900 50  0000 C CNN
F 2 "" H 6550 8800 50  0001 C CNN
F 3 "" H 6550 8800 50  0001 C CNN
	1    6550 8800
	1    0    0    -1  
$EndComp
Wire Wire Line
	6550 8900 6450 8900
Wire Wire Line
	6450 8900 6450 8800
Connection ~ 6450 8900
Wire Wire Line
	6550 8800 6550 8900
Connection ~ 6550 8900
Wire Wire Line
	6550 8900 6550 9200
$Comp
L Device:C C2
U 1 1 5F4F24C3
P 5350 8650
F 0 "C2" H 5465 8696 50  0000 L CNN
F 1 "C" H 5465 8605 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 5388 8500 50  0001 C CNN
F 3 "~" H 5350 8650 50  0001 C CNN
	1    5350 8650
	1    0    0    -1  
$EndComp
$Comp
L Device:C C3
U 1 1 5F4F38F2
P 5450 8650
F 0 "C3" H 5565 8696 50  0000 L CNN
F 1 "105" H 5565 8605 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 5488 8500 50  0001 C CNN
F 3 "~" H 5450 8650 50  0001 C CNN
	1    5450 8650
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 9200 5450 8800
Wire Wire Line
	5350 9200 5350 8800
Connection ~ 7050 8500
$Comp
L power:GND #PWR0113
U 1 1 5F4FB309
P 7050 8500
AR Path="/5F4FB309" Ref="#PWR0113"  Part="1" 
AR Path="/5F201C96/5F4FB309" Ref="#PWR?"  Part="1" 
F 0 "#PWR0113" H 7050 8250 50  0001 C CNN
F 1 "GND" H 7055 8327 50  0000 C CNN
F 2 "" H 7050 8500 50  0001 C CNN
F 3 "" H 7050 8500 50  0001 C CNN
	1    7050 8500
	-1   0    0    1   
$EndComp
$Comp
L power:+3.3V #PWR0115
U 1 1 5F4FED75
P 3850 9400
F 0 "#PWR0115" H 3850 9250 50  0001 C CNN
F 1 "+3.3V" H 3865 9573 50  0000 C CNN
F 2 "" H 3850 9400 50  0001 C CNN
F 3 "" H 3850 9400 50  0001 C CNN
	1    3850 9400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0116
U 1 1 5F4FF328
P 2850 10700
AR Path="/5F4FF328" Ref="#PWR0116"  Part="1" 
AR Path="/5F201C96/5F4FF328" Ref="#PWR?"  Part="1" 
F 0 "#PWR0116" H 2850 10450 50  0001 C CNN
F 1 "GND" H 2855 10527 50  0000 C CNN
F 2 "" H 2850 10700 50  0001 C CNN
F 3 "" H 2850 10700 50  0001 C CNN
	1    2850 10700
	-1   0    0    1   
$EndComp
Text GLabel 3650 9250 1    50   Input ~ 0
BS
$Comp
L Jumper:SolderJumper_3_Open JP_BS1
U 1 1 5F500F55
P 3650 9400
F 0 "JP_BS1" H 3650 9513 50  0000 C CNN
F 1 "SolderJumper_3_Open" H 3650 9604 50  0000 C CNN
F 2 "Jumper:SolderJumper-3_P1.3mm_Open_Pad1.0x1.5mm" H 3650 9400 50  0001 C CNN
F 3 "~" H 3650 9400 50  0001 C CNN
	1    3650 9400
	-1   0    0    1   
$EndComp
Text GLabel 4400 9200 1    50   Input ~ 0
CS
Text GLabel 4300 9200 1    50   Input ~ 0
D_C
Text GLabel 4500 9200 1    50   Input ~ 0
SCLK
Text GLabel 4600 9200 1    50   Input ~ 0
SDI
Text GLabel 4100 9200 1    50   Input ~ 0
BUSY
Text GLabel 4200 9200 1    50   Input ~ 0
RST
$Comp
L Connector_Generic:Conn_01x08 ConnToScreenHat1
U 1 1 5F50F9C9
P 4500 9400
F 0 "ConnToScreenHat1" V 4750 9350 50  0000 L CNN
F 1 "Conn_01x08" V 4650 9250 50  0000 L CNN
F 2 "Connector_Molex:Molex_PicoBlade_53261-0871_1x08-1MP_P1.25mm_Horizontal" H 4500 9400 50  0001 C CNN
F 3 "~" H 4500 9400 50  0001 C CNN
	1    4500 9400
	0    1    1    0   
$EndComp
$Comp
L power:+3.3V #PWR0117
U 1 1 5F5175A2
P 4800 9200
F 0 "#PWR0117" H 4800 9050 50  0001 C CNN
F 1 "+3.3V" H 4815 9373 50  0000 C CNN
F 2 "" H 4800 9200 50  0001 C CNN
F 3 "" H 4800 9200 50  0001 C CNN
	1    4800 9200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0118
U 1 1 5F517823
P 4700 9200
AR Path="/5F517823" Ref="#PWR0118"  Part="1" 
AR Path="/5F201C96/5F517823" Ref="#PWR?"  Part="1" 
F 0 "#PWR0118" H 4700 8950 50  0001 C CNN
F 1 "GND" H 4705 9027 50  0000 C CNN
F 2 "" H 4700 9200 50  0001 C CNN
F 3 "" H 4700 9200 50  0001 C CNN
	1    4700 9200
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0119
U 1 1 5F51F15A
P 1850 8900
F 0 "#PWR0119" H 1850 8650 50  0001 C CNN
F 1 "GND" H 1700 8850 50  0000 C CNN
F 2 "" H 1850 8900 50  0001 C CNN
F 3 "" H 1850 8900 50  0001 C CNN
	1    1850 8900
	0    1    -1   0   
$EndComp
$Comp
L power:+3.3V #PWR0120
U 1 1 5F526E79
P 1850 8700
F 0 "#PWR0120" H 1850 8550 50  0001 C CNN
F 1 "+3.3V" V 1865 8828 50  0000 L CNN
F 2 "" H 1850 8700 50  0001 C CNN
F 3 "" H 1850 8700 50  0001 C CNN
	1    1850 8700
	0    -1   -1   0   
$EndComp
$Comp
L Transistor_FET:2N7002K Q2
U 1 1 5F541B3A
P 1300 8350
F 0 "Q2" V 1650 8200 50  0000 L CNN
F 1 "FDN337N" V 1550 8000 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 1500 8275 50  0001 L CIN
F 3 "https://www.diodes.com/assets/Datasheets/ds30896.pdf" H 1300 8350 50  0001 L CNN
	1    1300 8350
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0121
U 1 1 5F544145
P 950 8450
AR Path="/5F544145" Ref="#PWR0121"  Part="1" 
AR Path="/5F201C96/5F544145" Ref="#PWR?"  Part="1" 
F 0 "#PWR0121" H 950 8200 50  0001 C CNN
F 1 "GND" H 955 8277 50  0000 C CNN
F 2 "" H 950 8450 50  0001 C CNN
F 3 "" H 950 8450 50  0001 C CNN
	1    950  8450
	0    1    1    0   
$EndComp
$Comp
L Device:R R7
U 1 1 5F544871
P 1500 8250
F 0 "R7" H 1450 8250 50  0000 R CNN
F 1 "10k" H 1700 8250 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 1430 8250 50  0001 C CNN
F 3 "~" H 1500 8250 50  0001 C CNN
	1    1500 8250
	1    0    0    -1  
$EndComp
$Comp
L Device:D D4
U 1 1 5F5455D6
P 1500 7950
F 0 "D4" V 1454 8030 50  0000 L CNN
F 1 "D" V 1545 8030 50  0000 L CNN
F 2 "Diode_SMD:D_1206_3216Metric" H 1500 7950 50  0001 C CNN
F 3 "~" H 1500 7950 50  0001 C CNN
	1    1500 7950
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR0122
U 1 1 5F5467A2
P 1500 7800
F 0 "#PWR0122" H 1500 7650 50  0001 C CNN
F 1 "+5V" V 1450 7800 50  0000 C CNN
F 2 "" H 1500 7800 50  0001 C CNN
F 3 "" H 1500 7800 50  0001 C CNN
	1    1500 7800
	1    0    0    -1  
$EndComp
$Comp
L Device:R R6
U 1 1 5F54A80E
P 1300 7950
F 0 "R6" V 1200 8000 50  0000 C CNN
F 1 "10" V 1400 7950 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 1230 7950 50  0001 C CNN
F 3 "~" H 1300 7950 50  0001 C CNN
	1    1300 7950
	-1   0    0    1   
$EndComp
$Comp
L Device:R R5
U 1 1 5F54AD0C
P 1150 8150
F 0 "R5" H 1080 8104 50  0000 R CNN
F 1 "10k" V 1250 8300 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 1080 8150 50  0001 C CNN
F 3 "~" H 1150 8150 50  0001 C CNN
	1    1150 8150
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1100 8450 1000 8450
Wire Wire Line
	1000 8150 1000 8450
Connection ~ 1000 8450
Wire Wire Line
	1000 8450 950  8450
Wire Wire Line
	1300 8150 1300 8100
Connection ~ 1300 8150
$Comp
L Connector_Generic:Conn_01x03 J7
U 1 1 5F5517F4
P 2050 8150
F 0 "J7" H 2050 7950 50  0000 C CNN
F 1 "Conn_01x03" V 2150 8150 50  0000 C CNN
F 2 "Connector_Molex:Molex_Micro-Fit_3.0_43650-0300_1x03_P3.00mm_Horizontal" H 2050 8150 50  0001 C CNN
F 3 "~" H 2050 8150 50  0001 C CNN
	1    2050 8150
	1    0    0    -1  
$EndComp
Wire Wire Line
	1500 8450 1850 8450
Wire Wire Line
	1850 8450 1850 8250
Connection ~ 1500 8450
Wire Wire Line
	1500 8450 1500 8400
Wire Wire Line
	1850 8150 1750 8150
Wire Wire Line
	1750 8150 1750 7800
Wire Wire Line
	1750 7800 1500 7800
Connection ~ 1500 7800
Text GLabel 1850 8050 1    50   Input ~ 0
PWM_wiper
Text GLabel 5850 6150 0    50   Input ~ 0
POWER_ON-OFF
Text GLabel 1000 1050 2    50   Input ~ 0
-POWER_ON-OFF
Wire Wire Line
	5850 6150 5850 6050
Text GLabel 5900 5800 0    50   Input ~ 0
-POWER_ON-OFF
Text GLabel 6250 1050 2    50   Input ~ 0
menu_ok
$Comp
L power:+3.3V #PWR0124
U 1 1 5F586689
P 6250 950
F 0 "#PWR0124" H 6250 800 50  0001 C CNN
F 1 "+3.3V" V 6265 1078 50  0000 L CNN
F 2 "" H 6250 950 50  0001 C CNN
F 3 "" H 6250 950 50  0001 C CNN
	1    6250 950 
	0    1    1    0   
$EndComp
Text Notes 1450 7550 0    50   ~ 0
wiper\n
Text Notes 3000 6850 0    50   ~ 0
ALIMENTATION\n
$Comp
L Device:Jumper_NO_Small Alim_12v2
U 1 1 5F5873D3
P 5900 5950
F 0 "Alim_12v2" V 5854 5998 50  0000 L CNN
F 1 "Jumper_NO_Small" V 6250 5600 50  0000 L CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_Pad1.0x1.5mm" H 5900 5950 50  0001 C CNN
F 3 "~" H 5900 5950 50  0001 C CNN
	1    5900 5950
	0    1    1    0   
$EndComp
NoConn ~ 5650 9200
NoConn ~ 5550 9200
NoConn ~ 5050 9200
$Comp
L Carte_Volant_v21-rescue:RJ45_CANBUS_copy-TIM_Connectors_V5 J1
U 1 1 5F574E3F
P 6350 5200
F 0 "J1" H 5912 5396 60  0000 R CNN
F 1 "RJ45_CANBUS_copy" H 5912 5290 60  0000 R CNN
F 2 "Connector_RJ:RJ45_Molex_0855135013_Vertical" H 7400 5850 60  0000 R CNN
F 3 "https://www.te.com/usa-en/product-5558344-1.html?source=header-match" V 7800 6100 60  0000 R CNN
F 4 "RJ45" H 6800 5800 50  0001 C CNN "Package"
F 5 "5558344-1" H 6900 5900 50  0001 C CNN "MPN"
F 6 "TE Connectivity" H 6700 5700 50  0000 R CNN "Manufacturer"
	1    6350 5200
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR0114
U 1 1 5F584716
P 5400 8500
F 0 "#PWR0114" H 5400 8250 50  0001 C CNN
F 1 "GND" H 5405 8327 50  0000 C CNN
F 2 "" H 5400 8500 50  0001 C CNN
F 3 "" H 5400 8500 50  0001 C CNN
	1    5400 8500
	-1   0    0    1   
$EndComp
Wire Wire Line
	5350 8500 5400 8500
Connection ~ 5400 8500
Wire Wire Line
	5400 8500 5450 8500
Wire Wire Line
	6650 8500 6450 8500
Connection ~ 6650 8500
Connection ~ 6750 8500
Wire Wire Line
	6750 8500 6650 8500
Wire Wire Line
	6750 8500 6850 8500
Wire Wire Line
	7250 8500 7350 8500
Connection ~ 7250 8500
Connection ~ 7150 8500
Wire Wire Line
	7150 8500 7250 8500
Wire Wire Line
	7050 8500 7150 8500
Connection ~ 6950 8500
Wire Wire Line
	6950 8500 7050 8500
Wire Wire Line
	6850 8500 6950 8500
Connection ~ 6850 8500
Wire Wire Line
	6450 8900 6450 9200
Wire Wire Line
	6650 8500 6650 9200
Wire Wire Line
	6750 9200 6750 8800
$Comp
L Device:C C7
U 1 1 5F4EBD7C
P 6750 8650
F 0 "C7" H 6865 8696 50  0000 L CNN
F 1 "105" H 6865 8605 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 6788 8500 50  0001 C CNN
F 3 "~" H 6750 8650 50  0001 C CNN
	1    6750 8650
	1    0    0    -1  
$EndComp
Wire Wire Line
	6850 9200 6850 8800
Wire Wire Line
	6950 9200 6950 8800
Wire Wire Line
	7050 9200 7050 8800
Wire Wire Line
	7150 9200 7150 8800
Wire Wire Line
	7250 9200 7250 8800
Wire Wire Line
	7350 8800 7350 9200
$Comp
L Device:C C8
U 1 1 5F4E5FEC
P 6850 8650
F 0 "C8" H 6965 8696 50  0000 L CNN
F 1 "105" H 6965 8605 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 6888 8500 50  0001 C CNN
F 3 "~" H 6850 8650 50  0001 C CNN
	1    6850 8650
	1    0    0    -1  
$EndComp
$Comp
L Device:C C9
U 1 1 5F4E5DFD
P 6950 8650
F 0 "C9" H 7065 8696 50  0000 L CNN
F 1 "105" H 7065 8605 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 6988 8500 50  0001 C CNN
F 3 "~" H 6950 8650 50  0001 C CNN
	1    6950 8650
	1    0    0    -1  
$EndComp
$Comp
L Device:C C10
U 1 1 5F4E5BF9
P 7050 8650
F 0 "C10" H 7165 8696 50  0000 L CNN
F 1 "105" H 7165 8605 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 7088 8500 50  0001 C CNN
F 3 "~" H 7050 8650 50  0001 C CNN
	1    7050 8650
	1    0    0    -1  
$EndComp
$Comp
L Device:C C12
U 1 1 5F4E5A7D
P 7150 8650
F 0 "C12" H 7265 8696 50  0000 L CNN
F 1 "105" H 7265 8605 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 7188 8500 50  0001 C CNN
F 3 "~" H 7150 8650 50  0001 C CNN
	1    7150 8650
	1    0    0    -1  
$EndComp
$Comp
L Device:C C13
U 1 1 5F4E586D
P 7250 8650
F 0 "C13" H 7365 8696 50  0000 L CNN
F 1 "105" H 7365 8605 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 7288 8500 50  0001 C CNN
F 3 "~" H 7250 8650 50  0001 C CNN
	1    7250 8650
	1    0    0    -1  
$EndComp
$Comp
L Device:C C14
U 1 1 5F4E4B89
P 7350 8650
F 0 "C14" H 7465 8696 50  0000 L CNN
F 1 "105" H 7465 8605 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 7388 8500 50  0001 C CNN
F 3 "~" H 7350 8650 50  0001 C CNN
	1    7350 8650
	1    0    0    -1  
$EndComp
Text GLabel 3000 1050 0    50   Input ~ 0
PA8
Text GLabel 1000 4850 2    50   Input ~ 0
5VUSB
Text GLabel 1000 4750 2    50   Input ~ 0
PC8
Text GLabel 6250 3050 2    50   Input ~ 0
PC8
Text GLabel 1000 4650 2    50   Input ~ 0
PB14
Text GLabel 1000 4550 2    50   Input ~ 0
PB12
Text GLabel 6250 2550 2    50   Input ~ 0
PB12
Text GLabel 1000 4450 2    50   Input ~ 0
PB11
Text GLabel 6250 2350 2    50   Input ~ 0
PB11
Text GLabel 1000 4350 2    50   Input ~ 0
PB10
Text GLabel 6250 2250 2    50   Input ~ 0
PB10
Text GLabel 1000 4250 2    50   Input ~ 0
PA4
Text GLabel 6250 1950 2    50   Input ~ 0
PA4
Text GLabel 6250 1550 2    50   Input ~ 0
PA2
Text GLabel 1000 4150 2    50   Input ~ 0
PA2
Text GLabel 1000 4050 2    50   Input ~ 0
PA0
Text GLabel 6250 1250 2    50   Input ~ 0
PA0
Text GLabel 1000 3250 2    50   Input ~ 0
VBAT
Text GLabel 3000 3150 0    50   Input ~ 0
VBAT
Text GLabel 1000 3150 2    50   Input ~ 0
PA7
Text GLabel 3000 3050 0    50   Input ~ 0
PA7
Text GLabel 3000 2650 0    50   Input ~ 0
PA5
Text GLabel 1000 3050 2    50   Input ~ 0
PA5
Text GLabel 1000 2850 2    50   Input ~ 0
PB7
Text GLabel 1000 2950 2    50   Input ~ 0
PA6
Text GLabel 3000 2350 0    50   Input ~ 0
PB7
Text GLabel 3000 2250 0    50   Input ~ 0
PA6
Text GLabel 3000 2150 0    50   Input ~ 0
PB6
Text GLabel 1000 2750 2    50   Input ~ 0
PB6
Text GLabel 1000 2650 2    50   Input ~ 0
PB5
Text GLabel 3000 2050 0    50   Input ~ 0
PB5
Text GLabel 1000 3350 2    50   Input ~ 0
PA8
$Comp
L Connector_Generic:Conn_01x40 J3
U 1 1 5F4A27C8
P 800 2850
F 0 "J3" H 718 4967 50  0000 C CNN
F 1 "Conn_01x40" H 718 4876 50  0000 C CNN
F 2 "Connector_IDC:IDC-Header_2x20_P2.54mm_Vertical" H 800 2850 50  0001 C CNN
F 3 "~" H 800 2850 50  0001 C CNN
	1    800  2850
	-1   0    0    -1  
$EndComp
$Comp
L power:+5V #PWR011
U 1 1 5F53B688
P 1000 3450
AR Path="/5F53B688" Ref="#PWR011"  Part="1" 
AR Path="/5F201C96/5F53B688" Ref="#PWR?"  Part="1" 
F 0 "#PWR011" H 1000 3300 50  0001 C CNN
F 1 "+5V" H 1015 3623 50  0000 C CNN
F 2 "" H 1000 3450 50  0001 C CNN
F 3 "" H 1000 3450 50  0001 C CNN
	1    1000 3450
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR012
U 1 1 5F53B050
P 1000 3550
AR Path="/5F53B050" Ref="#PWR012"  Part="1" 
AR Path="/5F201C96/5F53B050" Ref="#PWR?"  Part="1" 
F 0 "#PWR012" H 1000 3400 50  0001 C CNN
F 1 "+5V" H 1015 3723 50  0000 C CNN
F 2 "" H 1000 3550 50  0001 C CNN
F 3 "" H 1000 3550 50  0001 C CNN
	1    1000 3550
	0    1    1    0   
$EndComp
$Comp
L power:+3.3V #PWR015
U 1 1 5F53AD89
P 1000 3850
F 0 "#PWR015" H 1000 3700 50  0001 C CNN
F 1 "+3.3V" V 1015 3978 50  0000 L CNN
F 2 "" H 1000 3850 50  0001 C CNN
F 3 "" H 1000 3850 50  0001 C CNN
	1    1000 3850
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR013
U 1 1 5F53ABBD
P 1000 3650
AR Path="/5F53ABBD" Ref="#PWR013"  Part="1" 
AR Path="/5F201C96/5F53ABBD" Ref="#PWR?"  Part="1" 
F 0 "#PWR013" H 1000 3400 50  0001 C CNN
F 1 "GND" H 1005 3477 50  0000 C CNN
F 2 "" H 1000 3650 50  0001 C CNN
F 3 "" H 1000 3650 50  0001 C CNN
	1    1000 3650
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR014
U 1 1 5F53A61E
P 1000 3750
AR Path="/5F53A61E" Ref="#PWR014"  Part="1" 
AR Path="/5F201C96/5F53A61E" Ref="#PWR?"  Part="1" 
F 0 "#PWR014" H 1000 3500 50  0001 C CNN
F 1 "GND" H 1005 3577 50  0000 C CNN
F 2 "" H 1000 3750 50  0001 C CNN
F 3 "" H 1000 3750 50  0001 C CNN
	1    1000 3750
	0    -1   -1   0   
$EndComp
$Comp
L power:+3.3V #PWR016
U 1 1 5F539678
P 1000 3950
F 0 "#PWR016" H 1000 3800 50  0001 C CNN
F 1 "+3.3V" V 1015 4078 50  0000 L CNN
F 2 "" H 1000 3950 50  0001 C CNN
F 3 "" H 1000 3950 50  0001 C CNN
	1    1000 3950
	0    1    1    0   
$EndComp
$Comp
L power:+3.3V #PWR017
U 1 1 5F518027
P 6250 1350
F 0 "#PWR017" H 6250 1200 50  0001 C CNN
F 1 "+3.3V" V 6265 1478 50  0000 L CNN
F 2 "" H 6250 1350 50  0001 C CNN
F 3 "" H 6250 1350 50  0001 C CNN
	1    6250 1350
	0    1    1    0   
$EndComp
Text GLabel 6250 2050 2    50   Input ~ 0
RST
Text GLabel 6250 2150 2    50   Input ~ 0
BUSY
Text GLabel 6250 2750 2    50   Input ~ 0
SDI
Text GLabel 6250 2450 2    50   Input ~ 0
SCLK
Text GLabel 6250 2850 2    50   Input ~ 0
D_C
Text GLabel 6250 2950 2    50   Input ~ 0
CS
Text GLabel 3000 1550 0    50   Input ~ 0
Marche_AVNT-ARRIER
Text GLabel 3000 1750 0    50   Input ~ 0
accelerateur
Text GLabel 3000 2550 0    50   Input ~ 0
ENC_SpeedSelector_CCW
Text GLabel 3000 1950 0    50   Input ~ 0
ENC_SpeedSelector_ok
Text GLabel 3000 2450 0    50   Input ~ 0
ENC_SpeedSelector_CW
Text GLabel 6250 1650 2    50   Input ~ 0
menu_up
Text GLabel 3000 3250 0    50   Input ~ 0
TURN_Sgnl_LEFT
Text GLabel 3000 2950 0    50   Input ~ 0
TURN_Sgnl_RIGHT
Text GLabel 3000 2850 0    50   Input ~ 0
LIGHTS_Back
Text GLabel 3000 2750 0    50   Input ~ 0
LIGHTS_Front
Text GLabel 3000 1850 0    50   Input ~ 0
BRAKE
Text GLabel 3000 3450 0    50   Input ~ 0
wiper_speed
Text GLabel 1300 7800 1    50   Input ~ 0
power_wiper
$Comp
L power:+3.3V #PWR0101
U 1 1 5F4D4BFC
P 3000 1350
F 0 "#PWR0101" H 3000 1200 50  0001 C CNN
F 1 "+3.3V" V 3015 1478 50  0000 L CNN
F 2 "" H 3000 1350 50  0001 C CNN
F 3 "" H 3000 1350 50  0001 C CNN
	1    3000 1350
	0    -1   -1   0   
$EndComp
Text GLabel 3000 1650 0    50   Input ~ 0
ADC_current_Selector
Text GLabel 3000 1250 0    50   Input ~ 0
CAN_STBY
Text GLabel 6800 3250 2    50   Input ~ 0
power_wiper
Text GLabel 1000 1350 2    50   Input ~ 0
accelerateur
Text GLabel 1000 1750 2    50   Input ~ 0
ENC_SpeedSelector_CCW
Text GLabel 1000 1550 2    50   Input ~ 0
ENC_SpeedSelector_ok
Text GLabel 1000 1650 2    50   Input ~ 0
ENC_SpeedSelector_CW
Text GLabel 1000 2450 2    50   Input ~ 0
menu_down
Text GLabel 1000 2350 2    50   Input ~ 0
menu_up
Text GLabel 1000 2250 2    50   Input ~ 0
menu_ok
Text GLabel 1000 2150 2    50   Input ~ 0
TURN_Sgnl_LEFT
Text GLabel 1000 2050 2    50   Input ~ 0
TURN_Sgnl_RIGHT
Text GLabel 7150 1850 2    50   Input ~ 0
PWM_wiper
Text GLabel 1000 1950 2    50   Input ~ 0
LIGHTS_Back
Text GLabel 1000 1850 2    50   Input ~ 0
LIGHTS_Front
Text GLabel 1000 1450 2    50   Input ~ 0
BRAKE
Text GLabel 1000 2550 2    50   Input ~ 0
wiper_speed
Text GLabel 3000 3350 0    50   Input ~ 0
ST_RST
$Comp
L power:GND #PWR0111
U 1 1 5F35F79B
P 6250 3350
AR Path="/5F35F79B" Ref="#PWR0111"  Part="1" 
AR Path="/5F201C96/5F35F79B" Ref="#PWR?"  Part="1" 
F 0 "#PWR0111" H 6250 3100 50  0001 C CNN
F 1 "GND" H 6255 3177 50  0000 C CNN
F 2 "" H 6250 3350 50  0001 C CNN
F 3 "" H 6250 3350 50  0001 C CNN
	1    6250 3350
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0110
U 1 1 5F35F135
P 6250 1450
AR Path="/5F35F135" Ref="#PWR0110"  Part="1" 
AR Path="/5F201C96/5F35F135" Ref="#PWR?"  Part="1" 
F 0 "#PWR0110" H 6250 1200 50  0001 C CNN
F 1 "GND" H 6255 1277 50  0000 C CNN
F 2 "" H 6250 1450 50  0001 C CNN
F 3 "" H 6250 1450 50  0001 C CNN
	1    6250 1450
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0109
U 1 1 5F35DE91
P 6250 1150
AR Path="/5F35DE91" Ref="#PWR0109"  Part="1" 
AR Path="/5F201C96/5F35DE91" Ref="#PWR?"  Part="1" 
F 0 "#PWR0109" H 6250 900 50  0001 C CNN
F 1 "GND" H 6255 977 50  0000 C CNN
F 2 "" H 6250 1150 50  0001 C CNN
F 3 "" H 6250 1150 50  0001 C CNN
	1    6250 1150
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0108
U 1 1 5F35D481
P 3000 1450
AR Path="/5F35D481" Ref="#PWR0108"  Part="1" 
AR Path="/5F201C96/5F35D481" Ref="#PWR?"  Part="1" 
F 0 "#PWR0108" H 3000 1200 50  0001 C CNN
F 1 "GND" H 3005 1277 50  0000 C CNN
F 2 "" H 3000 1450 50  0001 C CNN
F 3 "" H 3000 1450 50  0001 C CNN
	1    3000 1450
	0    1    1    0   
$EndComp
Wire Wire Line
	6400 3450 6250 3450
$Comp
L power:+5V #PWR0107
U 1 1 5F358C4E
P 6400 3450
AR Path="/5F358C4E" Ref="#PWR0107"  Part="1" 
AR Path="/5F201C96/5F358C4E" Ref="#PWR?"  Part="1" 
F 0 "#PWR0107" H 6400 3300 50  0001 C CNN
F 1 "+5V" H 6415 3623 50  0000 C CNN
F 2 "" H 6400 3450 50  0001 C CNN
F 3 "" H 6400 3450 50  0001 C CNN
	1    6400 3450
	0    1    1    0   
$EndComp
$Comp
L TIM_Microcontrollers_V5:STM32H103-OlimexBoard U?
U 1 1 5F33B67C
P 4650 2200
AR Path="/5F2017A0/5F33B67C" Ref="U?"  Part="1" 
AR Path="/5F33B67C" Ref="U2"  Part="1" 
F 0 "U2" H 4625 3765 50  0000 C CNN
F 1 "STM32H103-OlimexBoard" H 4625 3674 50  0000 C CNN
F 2 "TIM_Microcontrollers_V5:STM32H103-Olimex_SMD" H 4700 2100 50  0001 C CNN
F 3 "" H 4700 2100 50  0001 C CNN
F 4 "Spécifique" H 4750 2250 50  0001 C CNN "Package"
F 5 "STM32-H103" H 4850 2350 50  0001 C CNN "RefManufacturer"
F 6 "2308262" H 4950 2450 50  0001 C CNN "RefDistributor"
	1    4650 2200
	1    0    0    -1  
$EndComp
Text GLabel 6250 2650 2    50   Input ~ 0
PB14
Text GLabel 6250 3150 2    50   Input ~ 0
5VUSB
Text GLabel 6250 1750 2    50   Input ~ 0
menu_down
Wire Wire Line
	5900 6050 5850 6050
Connection ~ 5850 6050
$Comp
L Connector_Generic:Conn_01x03 J2
U 1 1 5F6D6D17
P 2050 8800
F 0 "J2" V 2014 8612 50  0000 R CNN
F 1 "Conn_01x03" V 2150 9000 50  0000 R CNN
F 2 "Connector_Molex:Molex_Micro-Fit_3.0_43650-0300_1x03_P3.00mm_Horizontal" H 2050 8800 50  0001 C CNN
F 3 "~" H 2050 8800 50  0001 C CNN
	1    2050 8800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR018
U 1 1 5F6D809A
P 1850 8800
F 0 "#PWR018" H 1850 8550 50  0001 C CNN
F 1 "GND" H 1700 8750 50  0000 C CNN
F 2 "" H 1850 8800 50  0001 C CNN
F 3 "" H 1850 8800 50  0001 C CNN
	1    1850 8800
	0    1    -1   0   
$EndComp
$Comp
L Device:Jumper_NO_Small Alim_12v1
U 1 1 5F6D926B
P 3800 7050
F 0 "Alim_12v1" V 3754 7098 50  0000 L CNN
F 1 "Jumper_NO_Small" V 3845 7098 50  0000 L CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_Pad1.0x1.5mm" H 3800 7050 50  0001 C CNN
F 3 "~" H 3800 7050 50  0001 C CNN
	1    3800 7050
	1    0    0    -1  
$EndComp
Text GLabel 2950 5850 2    50   Input ~ 0
CANH
Text GLabel 2950 6050 2    50   Input ~ 0
CANL
Text GLabel 6700 5650 3    50   Input ~ 0
CANH
Text GLabel 6600 5650 3    50   Input ~ 0
CANL
Wire Wire Line
	5900 5800 5900 5850
Wire Wire Line
	6000 5650 6000 5850
Wire Wire Line
	6000 5850 5900 5850
Connection ~ 5900 5850
Wire Notes Line
	5150 5700 5950 5700
Wire Notes Line
	5950 5700 5950 6250
Wire Notes Line
	5950 6250 5150 6250
Wire Notes Line
	5150 6250 5150 5700
Wire Wire Line
	2950 5950 3300 5950
Wire Wire Line
	2450 5500 3000 5500
$Comp
L Connector:TestPoint PWM1
U 1 1 5F71C988
P 6850 1850
F 0 "PWM1" H 6908 1968 50  0000 L CNN
F 1 "TestPoint" H 6908 1877 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_1.5x1.5mm" H 7050 1850 50  0001 C CNN
F 3 "~" H 7050 1850 50  0001 C CNN
	1    6850 1850
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint BUSY1
U 1 1 5F7209B1
P 4100 8900
F 0 "BUSY1" H 4158 9018 50  0000 L CNN
F 1 "TestPoint" H 4158 8927 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_1.5x1.5mm" H 4300 8900 50  0001 C CNN
F 3 "~" H 4300 8900 50  0001 C CNN
	1    4100 8900
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint RST1
U 1 1 5F7214AE
P 4200 8900
F 0 "RST1" H 4258 9018 50  0000 L CNN
F 1 "TestPoint" H 4258 8927 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_1.5x1.5mm" H 4400 8900 50  0001 C CNN
F 3 "~" H 4400 8900 50  0001 C CNN
	1    4200 8900
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint DC1
U 1 1 5F721697
P 4300 8900
F 0 "DC1" H 4358 9018 50  0000 L CNN
F 1 "TestPoint" H 4358 8927 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_1.5x1.5mm" H 4500 8900 50  0001 C CNN
F 3 "~" H 4500 8900 50  0001 C CNN
	1    4300 8900
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint CS1
U 1 1 5F7217B7
P 4400 8900
F 0 "CS1" H 4458 9018 50  0000 L CNN
F 1 "TestPoint" H 4458 8927 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_1.5x1.5mm" H 4600 8900 50  0001 C CNN
F 3 "~" H 4600 8900 50  0001 C CNN
	1    4400 8900
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint SCLK1
U 1 1 5F7219DA
P 4500 8900
F 0 "SCLK1" H 4558 9018 50  0000 L CNN
F 1 "TestPoint" H 4558 8927 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_1.5x1.5mm" H 4700 8900 50  0001 C CNN
F 3 "~" H 4700 8900 50  0001 C CNN
	1    4500 8900
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint SDI1
U 1 1 5F721B8D
P 4600 8900
F 0 "SDI1" H 4658 9018 50  0000 L CNN
F 1 "TestPoint" H 4658 8927 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_1.5x1.5mm" H 4800 8900 50  0001 C CNN
F 3 "~" H 4800 8900 50  0001 C CNN
	1    4600 8900
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint -1
U 1 1 5F721CFE
P 4700 8900
F 0 "-1" H 4758 9018 50  0000 L CNN
F 1 "TestPoint" H 4758 8927 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_1.5x1.5mm" H 4900 8900 50  0001 C CNN
F 3 "~" H 4900 8900 50  0001 C CNN
	1    4700 8900
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint +3
U 1 1 5F721DBF
P 4800 8900
F 0 "+3" H 4858 9018 50  0000 L CNN
F 1 "TestPoint" H 4858 8927 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_1.5x1.5mm" H 5000 8900 50  0001 C CNN
F 3 "~" H 5000 8900 50  0001 C CNN
	1    4800 8900
	1    0    0    -1  
$EndComp
Wire Wire Line
	4800 8900 4800 9200
Connection ~ 4800 9200
Wire Wire Line
	4700 9200 4700 8900
Connection ~ 4700 9200
Wire Wire Line
	4600 9200 4600 8900
Wire Wire Line
	4500 8900 4500 9200
Wire Wire Line
	4400 9200 4400 8900
Wire Wire Line
	4300 8900 4300 9200
Wire Wire Line
	4200 8900 4200 9200
Wire Wire Line
	4100 8900 4100 9200
NoConn ~ 3000 3350
Wire Wire Line
	6250 3250 6800 3250
Wire Wire Line
	7150 1850 6850 1850
Wire Wire Line
	6250 1850 6850 1850
Connection ~ 6850 1850
$Comp
L Mechanical:MountingHole H1
U 1 1 5F6E4441
P 9850 5050
F 0 "H1" H 9950 5096 50  0000 L CNN
F 1 "MountingHole" H 9950 5005 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.5mm" H 9850 5050 50  0001 C CNN
F 3 "~" H 9850 5050 50  0001 C CNN
	1    9850 5050
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H2
U 1 1 5F6E4C34
P 9850 5300
F 0 "H2" H 9950 5346 50  0000 L CNN
F 1 "MountingHole" H 9950 5255 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.5mm" H 9850 5300 50  0001 C CNN
F 3 "~" H 9850 5300 50  0001 C CNN
	1    9850 5300
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H3
U 1 1 5F6E4E41
P 9850 5550
F 0 "H3" H 9950 5596 50  0000 L CNN
F 1 "MountingHole" H 9950 5505 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.5mm" H 9850 5550 50  0001 C CNN
F 3 "~" H 9850 5550 50  0001 C CNN
	1    9850 5550
	1    0    0    -1  
$EndComp
Text Notes 2150 6600 0    50   ~ 0
Transceiver CAN
$EndSCHEMATC
