EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "TIM_DashBoard"
Date "2021-06-12"
Rev "V2.2"
Comp "TIM UPS-INSA"
Comment1 "De l'interface utilisateur avec un ensemble de boutons vers un CAN bus et l'essuie glace."
Comment2 "Controle de TIM 07 - avec option pour TIM 08"
Comment3 "Mise en page + modification emplacment connecteur "
Comment4 ""
$EndDescr
Text GLabel 800  4100 2    50   Input ~ 0
ADC_current_Selector
$Comp
L Interface_CAN_LIN:MCP2561-E-SN U3
U 1 1 5F44A7F3
P 2250 2800
F 0 "U3" H 1950 2450 50  0000 C CNN
F 1 "MCP2561-E-SN" H 2650 2450 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 2250 2300 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/25167A.pdf" H 2250 2800 50  0001 C CNN
	1    2250 2800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR08
U 1 1 5F44A80F
P 2250 3200
F 0 "#PWR08" H 2250 2950 50  0001 C CNN
F 1 "GND" H 2150 3200 50  0000 C CNB
F 2 "" H 2250 3200 50  0001 C CNN
F 3 "" H 2250 3200 50  0001 C CNN
	1    2250 3200
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 5F44A816
P 2950 2350
F 0 "R2" V 2743 2350 50  0000 C CNN
F 1 "10k" V 2834 2350 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 2880 2350 50  0001 C CNN
F 3 "~" H 2950 2350 50  0001 C CNN
	1    2950 2350
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R1
U 1 1 5F44A81C
P 3250 2350
F 0 "R1" V 3043 2350 50  0000 C CNN
F 1 "10k" V 3134 2350 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 3180 2350 50  0001 C CNN
F 3 "~" H 3250 2350 50  0001 C CNN
	1    3250 2350
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR07
U 1 1 5F44A822
P 3400 2350
F 0 "#PWR07" H 3400 2100 50  0001 C CNN
F 1 "GND" V 3405 2222 50  0000 R CNB
F 2 "" H 3400 2350 50  0001 C CNN
F 3 "" H 3400 2350 50  0001 C CNN
	1    3400 2350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2250 2350 2250 2400
Connection ~ 3100 2350
$Comp
L Device:C C11
U 1 1 5F44A82B
P 2100 2350
F 0 "C11" V 2150 2450 50  0000 C CNN
F 1 "100n" V 2250 2350 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 2138 2200 50  0001 C CNN
F 3 "~" H 2100 2350 50  0001 C CNN
	1    2100 2350
	0    -1   -1   0   
$EndComp
Connection ~ 2250 2350
$Comp
L power:GND #PWR010
U 1 1 5F44A832
P 1950 2350
F 0 "#PWR010" H 1950 2100 50  0001 C CNN
F 1 "GND" V 1955 2222 50  0000 R CNB
F 2 "" H 1950 2350 50  0001 C CNN
F 3 "" H 1950 2350 50  0001 C CNN
	1    1950 2350
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR09
U 1 1 5F44A838
P 2250 2350
F 0 "#PWR09" H 2250 2200 50  0001 C CNN
F 1 "+5V" H 2350 2450 50  0000 C CNB
F 2 "" H 2250 2350 50  0001 C CNN
F 3 "" H 2250 2350 50  0001 C CNN
	1    2250 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	3100 2350 3100 2800
Text GLabel 1750 2600 0    50   Input ~ 0
CAN_Tx
Text GLabel 2850 4100 0    50   Input ~ 0
CAN_Rx
Text GLabel 1750 3000 0    50   Input ~ 0
CAN_STBY
$Comp
L power:GND #PWR05
U 1 1 5F44A853
P 2550 1700
F 0 "#PWR05" H 2550 1450 50  0001 C CNN
F 1 "GND" H 2600 1550 50  0000 R CNB
F 2 "" H 2550 1700 50  0001 C CNN
F 3 "" H 2550 1700 50  0001 C CNN
	1    2550 1700
	-1   0    0    -1  
$EndComp
Connection ~ 2550 1650
Wire Wire Line
	2550 1650 2550 1700
Connection ~ 2350 1650
Wire Wire Line
	2550 1650 2550 1550
Wire Wire Line
	2350 1650 2550 1650
Wire Wire Line
	2350 1650 2150 1650
Wire Wire Line
	2350 1550 2350 1650
Wire Wire Line
	2150 1550 2150 1650
$Comp
L power:GND #PWR01
U 1 1 5F44A803
P 1850 800
F 0 "#PWR01" H 1850 550 50  0001 C CNN
F 1 "GND" H 1850 600 50  0000 C CNB
F 2 "" H 1850 800 50  0001 C CNN
F 3 "" H 1850 800 50  0001 C CNN
	1    1850 800 
	-1   0    0    -1  
$EndComp
Text GLabel 1750 2700 0    50   Output ~ 0
CAN_Rx
Text GLabel 2850 4300 0    50   Output ~ 0
CAN_Tx
NoConn ~ 2450 1550
NoConn ~ 2250 1550
$Comp
L power:+12V #PWR06
U 1 1 5F46E985
P 1800 1650
F 0 "#PWR06" H 1800 1500 50  0001 C CNN
F 1 "+12V" V 1815 1778 50  0000 L CNB
F 2 "" H 1800 1650 50  0001 C CNN
F 3 "" H 1800 1650 50  0001 C CNN
	1    1800 1650
	-1   0    0    -1  
$EndComp
$Comp
L Regulator_Switching:TSR_1-2450 U1
U 1 1 5F46F293
P 5650 1250
F 0 "U1" H 6000 1500 50  0000 L CNN
F 1 "TSR_1-2450" H 5400 1500 50  0000 L CNN
F 2 "Converter_DCDC:Converter_DCDC_TRACO_TSR-1_THT" H 5650 1100 50  0001 L CIN
F 3 "http://www.tracopower.com/products/tsr1.pdf" H 5650 1250 50  0001 C CNN
	1    5650 1250
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR04
U 1 1 5F487851
P 6450 1050
F 0 "#PWR04" H 6450 900 50  0001 C CNN
F 1 "+5V" H 6300 1200 50  0000 C CNB
F 2 "" H 6450 1050 50  0001 C CNN
F 3 "" H 6450 1050 50  0001 C CNN
	1    6450 1050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR03
U 1 1 5F488120
P 5650 1550
F 0 "#PWR03" H 5650 1300 50  0001 C CNN
F 1 "GND" H 5850 1550 50  0000 R CNB
F 2 "" H 5650 1550 50  0001 C CNN
F 3 "" H 5650 1550 50  0001 C CNN
	1    5650 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	5650 1550 5650 1450
Text GLabel 800  4000 2    50   Input ~ 0
Marche_AVNT-ARRIER
$Comp
L Connector_Generic:Conn_01x24 ConnToBareScreen1
U 1 1 5F4B657B
P 10950 1900
F 0 "ConnToBareScreen1" V 11167 1846 50  0000 C CNN
F 1 "FFC_PFC_Conn_01x24_0.5MM" V 11076 1846 50  0000 C CNN
F 2 "Connector_FFC-FPC:Hirose_FH12-24S-0.5SH_1x24-1MP_P0.50mm_Horizontal" H 10950 1900 50  0001 C CNN
F 3 "https://www.waveshare.com/w/upload/2/2a/2.7inch_e-Paper_HAT_Schematic.pdf" H 10950 1900 50  0001 C CNN
	1    10950 1900
	1    0    0    1   
$EndComp
Text GLabel 10750 3000 0    50   Input ~ 0
HLT_CTL
Text GLabel 10750 2900 0    50   Input ~ 0
GDR
Text GLabel 10750 2800 0    50   Input ~ 0
RESE
Text GLabel 10700 2650 0    50   Input ~ 0
VGL
Text GLabel 10700 2550 0    50   Input ~ 0
VGH
Text GLabel 10050 2350 0    50   Input ~ 0
TSCL
Text GLabel 10050 2250 0    50   Input ~ 0
TSDA
Text GLabel 10750 2300 0    50   Input ~ 0
BS
Text GLabel 10750 2200 0    50   Input ~ 0
BUSY
Text GLabel 10750 2100 0    50   Input ~ 0
RST
Text GLabel 10750 2000 0    50   Input ~ 0
D_C
Text GLabel 10750 1900 0    50   Input ~ 0
CS
Text GLabel 10750 1800 0    50   Input ~ 0
SCLK
Text GLabel 10750 1700 0    50   Input ~ 0
SDI
Text GLabel 10700 1250 0    50   Input ~ 0
VDD
Text GLabel 10700 1150 0    50   Input ~ 0
VPP
Text GLabel 10700 1050 0    50   Input ~ 0
VSH
Text GLabel 10700 950  0    50   Input ~ 0
PREVGH
Text GLabel 10700 850  0    50   Input ~ 0
VSL
Text GLabel 10700 750  0    50   Input ~ 0
PREVGL
Text GLabel 10700 650  0    50   Input ~ 0
VCOM
$Comp
L Device:C C4
U 1 1 5F4C1F58
P 7300 2350
F 0 "C4" H 7450 2350 50  0000 C CNN
F 1 "4.7u" H 7450 2250 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 7338 2200 50  0001 C CNN
F 3 "~" H 7300 2350 50  0001 C CNN
	1    7300 2350
	-1   0    0    1   
$EndComp
$Comp
L Device:L_Core_Ferrite L1
U 1 1 5F4C4531
P 7750 2150
F 0 "L1" V 7850 2350 50  0000 C CNN
F 1 "L_Core_Ferrite" V 7850 1750 50  0000 C CNN
F 2 "Inductor_SMD:L_1206_3216Metric" H 7750 2150 50  0001 C CNN
F 3 "~" H 7750 2150 50  0001 C CNN
	1    7750 2150
	0    -1   -1   0   
$EndComp
$Comp
L Transistor_FET:2N7002E SI1308EDL-T1
U 1 1 5F4C89D3
P 8550 2400
F 0 "SI1308EDL-T1" V 8900 2050 50  0000 L CNN
F 1 "Si1304BDL" V 8800 2200 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-323_SC-70" H 8750 2325 50  0001 L CIN
F 3 "http://www.diodes.com/assets/Datasheets/ds30376.pdf" H 8550 2400 50  0001 L CNN
	1    8550 2400
	0    -1   1    0   
$EndComp
$Comp
L Device:C C5
U 1 1 5F4CB56E
P 7850 2800
F 0 "C5" V 7598 2800 50  0000 C CNN
F 1 "4.7u" V 7689 2800 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 7888 2650 50  0001 C CNN
F 3 "~" H 7850 2800 50  0001 C CNN
	1    7850 2800
	0    1    1    0   
$EndComp
$Comp
L Diode:MBR0530 D3
U 1 1 5F4CBF10
P 8200 2950
F 0 "D3" V 8246 2870 50  0000 R CNN
F 1 "MBR0530" V 8155 2870 50  0000 R CNN
F 2 "Diode_SMD:D_SOD-123" H 8200 2775 50  0001 C CNN
F 3 "http://www.mccsemi.com/up_pdf/MBR0520~MBR0580(SOD123).pdf" H 8200 2950 50  0001 C CNN
	1    8200 2950
	0    -1   -1   0   
$EndComp
$Comp
L Diode:MBR0530 D2
U 1 1 5F4CC364
P 7500 2950
F 0 "D2" V 7454 3030 50  0000 L CNN
F 1 "MBR0530" V 7600 3000 50  0000 L CNN
F 2 "Diode_SMD:D_SOD-123" H 7500 2775 50  0001 C CNN
F 3 "http://www.mccsemi.com/up_pdf/MBR0520~MBR0580(SOD123).pdf" H 7500 2950 50  0001 C CNN
	1    7500 2950
	0    1    1    0   
$EndComp
$Comp
L Diode:MBR0530 D1
U 1 1 5F4CCCD9
P 6950 2950
F 0 "D1" V 6996 2870 50  0000 R CNN
F 1 "MBR0530" V 6950 3350 50  0000 R CNN
F 2 "Diode_SMD:D_SOD-123" H 6950 2775 50  0001 C CNN
F 3 "http://www.mccsemi.com/up_pdf/MBR0520~MBR0580(SOD123).pdf" H 6950 2950 50  0001 C CNN
	1    6950 2950
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6950 2800 7500 2800
Connection ~ 7500 2800
Wire Wire Line
	7500 2800 7700 2800
Wire Wire Line
	8000 2800 8200 2800
Wire Wire Line
	8200 2800 8200 2500
Connection ~ 8200 2800
$Comp
L Device:R R4
U 1 1 5F4D39AC
P 9150 2200
F 0 "R4" V 9050 2150 50  0000 R CNN
F 1 "10k" V 9050 2350 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 9080 2200 50  0001 C CNN
F 3 "~" H 9150 2200 50  0001 C CNN
	1    9150 2200
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R3
U 1 1 5F4D40CE
P 9150 2500
F 0 "R3" V 9050 2450 50  0000 R CNN
F 1 "47r" V 9050 2650 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 9080 2500 50  0001 C CNN
F 3 "~" H 9150 2500 50  0001 C CNN
	1    9150 2500
	0    -1   -1   0   
$EndComp
$Comp
L power:+3.3V #PWR0102
U 1 1 5F4D4D2E
P 7300 2150
F 0 "#PWR0102" H 7300 2000 50  0001 C CNN
F 1 "+3.3V" H 7150 2250 50  0000 C CNB
F 2 "" H 7300 2150 50  0001 C CNN
F 3 "" H 7300 2150 50  0001 C CNN
	1    7300 2150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0103
U 1 1 5F4D65C1
P 7300 2550
AR Path="/5F4D65C1" Ref="#PWR0103"  Part="1" 
AR Path="/5F201C96/5F4D65C1" Ref="#PWR?"  Part="1" 
F 0 "#PWR0103" H 7300 2300 50  0001 C CNN
F 1 "GND" H 7305 2377 50  0000 C CNB
F 2 "" H 7300 2550 50  0001 C CNN
F 3 "" H 7300 2550 50  0001 C CNN
	1    7300 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	9000 2500 8750 2500
Wire Wire Line
	9000 2200 8550 2200
$Comp
L power:GND #PWR0104
U 1 1 5F4D8DFF
P 9550 2550
AR Path="/5F4D8DFF" Ref="#PWR0104"  Part="1" 
AR Path="/5F201C96/5F4D8DFF" Ref="#PWR?"  Part="1" 
F 0 "#PWR0104" H 9550 2300 50  0001 C CNN
F 1 "GND" H 9555 2377 50  0000 C CNB
F 2 "" H 9550 2550 50  0001 C CNN
F 3 "" H 9550 2550 50  0001 C CNN
	1    9550 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	9300 2200 9400 2200
Wire Wire Line
	9400 2500 9300 2500
$Comp
L power:GND #PWR0105
U 1 1 5F4DAF0E
P 6950 3100
AR Path="/5F4DAF0E" Ref="#PWR0105"  Part="1" 
AR Path="/5F201C96/5F4DAF0E" Ref="#PWR?"  Part="1" 
F 0 "#PWR0105" H 6950 2850 50  0001 C CNN
F 1 "GND" H 6955 2927 50  0000 C CNB
F 2 "" H 6950 3100 50  0001 C CNN
F 3 "" H 6950 3100 50  0001 C CNN
	1    6950 3100
	1    0    0    -1  
$EndComp
Text GLabel 7450 3200 0    50   Input ~ 0
PREVGL
Text GLabel 8150 3200 0    50   Input ~ 0
PREVGH
Connection ~ 8200 2500
Wire Wire Line
	8200 2500 8350 2500
$Comp
L Device:C C6
U 1 1 5F4E627D
P 10200 1600
F 0 "C6" V 10200 1850 50  0000 L CNN
F 1 "104" V 10200 2050 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 10238 1450 50  0001 C CNN
F 3 "~" H 10200 1600 50  0001 C CNN
	1    10200 1600
	0    -1   -1   0   
$EndComp
$Comp
L power:+3.3V #PWR0106
U 1 1 5F4E67B0
P 10350 1500
F 0 "#PWR0106" H 10350 1350 50  0001 C CNN
F 1 "+3.3V" H 10500 1550 50  0000 C CNB
F 2 "" H 10350 1500 50  0001 C CNN
F 3 "" H 10350 1500 50  0001 C CNN
	1    10350 1500
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 5F4F24C3
P 10200 2700
F 0 "C2" V 10200 2950 50  0000 L CNN
F 1 "105" V 10200 3100 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 10238 2550 50  0001 C CNN
F 3 "~" H 10200 2700 50  0001 C CNN
	1    10200 2700
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C3
U 1 1 5F4F38F2
P 10200 2600
F 0 "C3" V 10200 2850 50  0000 L CNN
F 1 "105" V 10200 3000 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 10238 2450 50  0001 C CNN
F 3 "~" H 10200 2600 50  0001 C CNN
	1    10200 2600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	10750 2600 10350 2600
Wire Wire Line
	10750 2700 10350 2700
Connection ~ 10050 1000
$Comp
L power:GND #PWR0113
U 1 1 5F4FB309
P 10050 1750
AR Path="/5F4FB309" Ref="#PWR0113"  Part="1" 
AR Path="/5F201C96/5F4FB309" Ref="#PWR?"  Part="1" 
F 0 "#PWR0113" H 10050 1500 50  0001 C CNN
F 1 "GND" H 10050 1550 50  0000 C CNB
F 2 "" H 10050 1750 50  0001 C CNN
F 3 "" H 10050 1750 50  0001 C CNN
	1    10050 1750
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0115
U 1 1 5F4FED75
P 8400 750
F 0 "#PWR0115" H 8400 600 50  0001 C CNN
F 1 "+3.3V" H 8415 923 50  0000 C CNB
F 2 "" H 8400 750 50  0001 C CNN
F 3 "" H 8400 750 50  0001 C CNN
	1    8400 750 
	-1   0    0    -1  
$EndComp
Text GLabel 8650 650  2    50   Input ~ 0
BS
$Comp
L Jumper:SolderJumper_3_Open JP_BS1
U 1 1 5F500F55
P 8600 900
F 0 "JP_BS1" H 8600 1013 50  0000 C CNN
F 1 "SolderJumper_3_Open" H 8400 1100 50  0000 C CNN
F 2 "Jumper:SolderJumper-3_P1.3mm_Open_Pad1.0x1.5mm" H 8600 900 50  0001 C CNN
F 3 "~" H 8600 900 50  0001 C CNN
	1    8600 900 
	1    0    0    1   
$EndComp
Text GLabel 10550 6050 0    50   Input ~ 0
CS
Text GLabel 10550 6150 0    50   Input ~ 0
D_C
Text GLabel 10550 5950 0    50   Input ~ 0
SCLK
Text GLabel 10550 5800 0    50   Input ~ 0
SDI
Text GLabel 10550 6350 0    50   Input ~ 0
BUSY
Text GLabel 10550 6250 0    50   Input ~ 0
RST
$Comp
L Connector_Generic:Conn_01x08 ConnToScreenHat1
U 1 1 5F50F9C9
P 10900 6000
F 0 "ConnToScreenHat1" V 11050 5650 50  0000 L CNN
F 1 "Conn_01x08" V 11150 5800 50  0000 L CNN
F 2 "Connector_Molex:Molex_PicoBlade_53261-0871_1x08-1MP_P1.25mm_Horizontal" H 10900 6000 50  0001 C CNN
F 3 "~" H 10900 6000 50  0001 C CNN
	1    10900 6000
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0117
U 1 1 5F5175A2
P 10650 5550
F 0 "#PWR0117" H 10650 5400 50  0001 C CNN
F 1 "+3.3V" H 10800 5600 50  0000 C CNB
F 2 "" H 10650 5550 50  0001 C CNN
F 3 "" H 10650 5550 50  0001 C CNN
	1    10650 5550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0118
U 1 1 5F517823
P 10300 5750
AR Path="/5F517823" Ref="#PWR0118"  Part="1" 
AR Path="/5F201C96/5F517823" Ref="#PWR?"  Part="1" 
F 0 "#PWR0118" H 10300 5500 50  0001 C CNN
F 1 "GND" H 10200 5750 50  0000 C CNB
F 2 "" H 10300 5750 50  0001 C CNN
F 3 "" H 10300 5750 50  0001 C CNN
	1    10300 5750
	1    0    0    -1  
$EndComp
$Comp
L Transistor_FET:2N7002K Q2
U 1 1 5F541B3A
P 9350 4300
F 0 "Q2" V 9550 4150 50  0000 L CNN
F 1 "FDN337N" V 9550 4400 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 9550 4225 50  0001 L CIN
F 3 "https://www.diodes.com/assets/Datasheets/ds30896.pdf" H 9350 4300 50  0001 L CNN
	1    9350 4300
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0121
U 1 1 5F544145
P 8950 4450
AR Path="/5F544145" Ref="#PWR0121"  Part="1" 
AR Path="/5F201C96/5F544145" Ref="#PWR?"  Part="1" 
F 0 "#PWR0121" H 8950 4200 50  0001 C CNN
F 1 "GND" H 8800 4350 50  0000 C CNB
F 2 "" H 8950 4450 50  0001 C CNN
F 3 "" H 8950 4450 50  0001 C CNN
	1    8950 4450
	1    0    0    -1  
$EndComp
$Comp
L Device:R R7
U 1 1 5F544871
P 9950 4200
F 0 "R7" H 9900 4200 50  0000 R CNN
F 1 "10k" H 10150 4200 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 9880 4200 50  0001 C CNN
F 3 "~" H 9950 4200 50  0001 C CNN
	1    9950 4200
	1    0    0    -1  
$EndComp
$Comp
L Device:D D4
U 1 1 5F5455D6
P 9950 3850
F 0 "D4" V 9904 3930 50  0000 L CNN
F 1 "D" V 9995 3930 50  0000 L CNN
F 2 "Diode_SMD:D_1206_3216Metric" H 9950 3850 50  0001 C CNN
F 3 "~" H 9950 3850 50  0001 C CNN
	1    9950 3850
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR0122
U 1 1 5F5467A2
P 9950 3650
F 0 "#PWR0122" H 9950 3500 50  0001 C CNN
F 1 "+5V" H 9800 3650 50  0000 C CNB
F 2 "" H 9950 3650 50  0001 C CNN
F 3 "" H 9950 3650 50  0001 C CNN
	1    9950 3650
	1    0    0    -1  
$EndComp
$Comp
L Device:R R6
U 1 1 5F54A80E
P 9350 3850
F 0 "R6" V 9250 3900 50  0000 C CNN
F 1 "10" V 9450 3850 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 9280 3850 50  0001 C CNN
F 3 "~" H 9350 3850 50  0001 C CNN
	1    9350 3850
	-1   0    0    1   
$EndComp
$Comp
L Device:R R5
U 1 1 5F54AD0C
P 9150 4050
F 0 "R5" V 9050 4150 50  0000 R CNN
F 1 "10k" V 9250 4200 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 9080 4050 50  0001 C CNN
F 3 "~" H 9150 4050 50  0001 C CNN
	1    9150 4050
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9350 4100 9350 4050
$Comp
L Connector_Generic:Conn_01x03 J7
U 1 1 5F5517F4
P 10950 4100
F 0 "J7" H 10950 3900 50  0000 C CNN
F 1 "Conn_01x03" V 11050 4100 50  0000 C CNN
F 2 "Connector_Molex:Molex_Micro-Fit_3.0_43650-0300_1x03_P3.00mm_Horizontal" H 10950 4100 50  0001 C CNN
F 3 "~" H 10950 4100 50  0001 C CNN
	1    10950 4100
	1    0    0    -1  
$EndComp
Connection ~ 9950 3700
Text GLabel 10750 4000 0    50   Input ~ 0
PWM_wiper
Text GLabel 5000 1050 0    50   Input ~ 0
POWER_SWITCH
Text GLabel 6100 4200 2    50   Input ~ 0
menu_ok
Text Notes 10400 3600 0    118  Italic 24
WIPER\n
Text Notes 550  1800 0    157  Italic 31
POWER
$Comp
L Device:Jumper_NO_Small Alim_12V1
U 1 1 5F5873D3
P 4200 1150
F 0 "Alim_12V1" H 3750 1300 50  0000 L CNN
F 1 "Jumper_NO_Small" H 3500 1400 50  0000 L CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_Pad1.0x1.5mm" H 4200 1150 50  0001 C CNN
F 3 "~" H 4200 1150 50  0001 C CNN
	1    4200 1150
	1    0    0    1   
$EndComp
NoConn ~ 10750 3000
$Comp
L Carte_Volant_v21-rescue:RJ45_CANBUS_copy-TIM_Connectors_V5 J1
U 1 1 5F574E3F
P 2400 1100
F 0 "J1" H 1962 1296 60  0000 R CNN
F 1 "RJ45_CANBUS" H 1962 1190 60  0000 R CNN
F 2 "Connector_RJ:RJ45_Molex_0855135013_Vertical" H 3100 1800 60  0001 R CNN
F 3 "" H 3800 150 60  0001 R CNN
F 4 "RJ45" H 2850 1700 50  0001 C CNN "Package"
F 5 "5558344-1" H 2950 1800 50  0001 C CNN "MPN"
F 6 "TE Connectivity" H 2750 1600 50  0000 R CNN "Manufacturer"
	1    2400 1100
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR0114
U 1 1 5F584716
P 10050 2800
F 0 "#PWR0114" H 10050 2550 50  0001 C CNN
F 1 "GND" H 10050 2650 50  0000 C CNB
F 2 "" H 10050 2800 50  0001 C CNN
F 3 "" H 10050 2800 50  0001 C CNN
	1    10050 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	10050 1400 10050 1600
Connection ~ 10050 1400
Connection ~ 10050 1300
Wire Wire Line
	10050 1300 10050 1400
Wire Wire Line
	10050 1300 10050 1200
Wire Wire Line
	10050 800  10050 700 
Connection ~ 10050 800 
Connection ~ 10050 900 
Wire Wire Line
	10050 900  10050 800 
Wire Wire Line
	10050 1000 10050 900 
Connection ~ 10050 1100
Wire Wire Line
	10050 1100 10050 1000
Wire Wire Line
	10050 1200 10050 1100
Connection ~ 10050 1200
Wire Wire Line
	10050 1400 10750 1400
Wire Wire Line
	10750 1300 10350 1300
$Comp
L Device:C C7
U 1 1 5F4EBD7C
P 10200 1300
F 0 "C7" V 10200 1550 50  0000 L CNN
F 1 "105" V 10200 1750 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 10238 1150 50  0001 C CNN
F 3 "~" H 10200 1300 50  0001 C CNN
	1    10200 1300
	0    -1   -1   0   
$EndComp
Wire Wire Line
	10750 1200 10350 1200
Wire Wire Line
	10750 1100 10350 1100
Wire Wire Line
	10750 1000 10350 1000
Wire Wire Line
	10750 900  10350 900 
Wire Wire Line
	10750 800  10350 800 
Wire Wire Line
	10350 700  10750 700 
$Comp
L Device:C C8
U 1 1 5F4E5FEC
P 10200 1200
F 0 "C8" V 10200 1450 50  0000 L CNN
F 1 "105" V 10200 1650 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 10238 1050 50  0001 C CNN
F 3 "~" H 10200 1200 50  0001 C CNN
	1    10200 1200
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C9
U 1 1 5F4E5DFD
P 10200 1100
F 0 "C9" V 10200 1350 50  0000 L CNN
F 1 "105" V 10200 1550 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 10238 950 50  0001 C CNN
F 3 "~" H 10200 1100 50  0001 C CNN
	1    10200 1100
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C10
U 1 1 5F4E5BF9
P 10200 1000
F 0 "C10" V 10200 1250 50  0000 L CNN
F 1 "105" V 10200 1450 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 10238 850 50  0001 C CNN
F 3 "~" H 10200 1000 50  0001 C CNN
	1    10200 1000
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C12
U 1 1 5F4E5A7D
P 10200 900
F 0 "C12" V 10200 1150 50  0000 L CNN
F 1 "105" V 10200 1350 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 10238 750 50  0001 C CNN
F 3 "~" H 10200 900 50  0001 C CNN
	1    10200 900 
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C13
U 1 1 5F4E586D
P 10200 800
F 0 "C13" V 10200 1050 50  0000 L CNN
F 1 "105" V 10200 1250 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 10238 650 50  0001 C CNN
F 3 "~" H 10200 800 50  0001 C CNN
	1    10200 800 
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C14
U 1 1 5F4E4B89
P 10200 700
F 0 "C14" V 10200 950 50  0000 L CNN
F 1 "105" V 10200 1150 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 10238 550 50  0001 C CNN
F 3 "~" H 10200 700 50  0001 C CNN
	1    10200 700 
	0    -1   -1   0   
$EndComp
Text GLabel 2850 4200 0    50   Input ~ 0
PA8
Text GLabel 800  7700 2    50   Input ~ 0
5VUSB
Text GLabel 800  7600 2    50   Input ~ 0
PC8
Text GLabel 6100 6200 2    50   Input ~ 0
PC8
Text GLabel 800  7500 2    50   Input ~ 0
PB14
Text GLabel 800  7400 2    50   Input ~ 0
PB12
Text GLabel 6100 5700 2    50   Input ~ 0
PB12
Text GLabel 800  7300 2    50   Input ~ 0
PB11
Text GLabel 6100 5500 2    50   Input ~ 0
PB11
Text GLabel 800  7200 2    50   Input ~ 0
PB10
Text GLabel 6100 5400 2    50   Input ~ 0
PB10
Text GLabel 800  7100 2    50   Input ~ 0
PA4
Text GLabel 6100 5100 2    50   Input ~ 0
PA4
Text GLabel 6100 4700 2    50   Input ~ 0
PA2
Text GLabel 800  7000 2    50   Input ~ 0
PA2
Text GLabel 800  6900 2    50   Input ~ 0
PA0
Text GLabel 6100 4400 2    50   Input ~ 0
PA0
Text GLabel 800  6100 2    50   Input ~ 0
VBAT
Text GLabel 2850 6300 0    50   Input ~ 0
VBAT
Text GLabel 800  6000 2    50   Input ~ 0
PA7
Text GLabel 2850 6200 0    50   Input ~ 0
PA7
Text GLabel 2850 5800 0    50   Input ~ 0
PA5
Text GLabel 800  5900 2    50   Input ~ 0
PA5
Text GLabel 800  5700 2    50   Input ~ 0
PB7
Text GLabel 800  5800 2    50   Input ~ 0
PA6
Text GLabel 2850 5500 0    50   Input ~ 0
PB7
Text GLabel 2850 5400 0    50   Input ~ 0
PA6
Text GLabel 2850 5300 0    50   Input ~ 0
PB6
Text GLabel 800  5600 2    50   Input ~ 0
PB6
Text GLabel 800  5500 2    50   Input ~ 0
PB5
Text GLabel 2850 5200 0    50   Input ~ 0
PB5
Text GLabel 800  6200 2    50   Input ~ 0
PA8
$Comp
L Connector_Generic:Conn_01x40 J3
U 1 1 5F4A27C8
P 600 5700
F 0 "J3" H 518 7817 50  0000 C CNN
F 1 "Conn_01x40" H 518 7726 50  0000 C CNN
F 2 "Connector_IDC:IDC-Header_2x20_P2.54mm_Vertical" H 600 5700 50  0001 C CNN
F 3 "~" H 600 5700 50  0001 C CNN
	1    600  5700
	-1   0    0    -1  
$EndComp
$Comp
L power:+5V #PWR011
U 1 1 5F53B688
P 1100 6300
AR Path="/5F53B688" Ref="#PWR011"  Part="1" 
AR Path="/5F201C96/5F53B688" Ref="#PWR?"  Part="1" 
F 0 "#PWR011" H 1100 6150 50  0001 C CNN
F 1 "+5V" H 1200 6400 50  0000 C CNB
F 2 "" H 1100 6300 50  0001 C CNN
F 3 "" H 1100 6300 50  0001 C CNN
	1    1100 6300
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR017
U 1 1 5F518027
P 6500 4500
F 0 "#PWR017" H 6500 4350 50  0001 C CNN
F 1 "+3.3V" H 6550 4500 50  0000 L CNB
F 2 "" H 6500 4500 50  0001 C CNN
F 3 "" H 6500 4500 50  0001 C CNN
	1    6500 4500
	1    0    0    -1  
$EndComp
Text GLabel 6100 5200 2    50   Input ~ 0
RST
Text GLabel 6100 5300 2    50   Input ~ 0
BUSY
Text GLabel 6100 5900 2    50   Input ~ 0
SDI
Text GLabel 6100 5600 2    50   Input ~ 0
SCLK
Text GLabel 6100 6000 2    50   Input ~ 0
D_C
Text GLabel 6100 6100 2    50   Input ~ 0
CS
Text GLabel 2850 4700 0    50   Input ~ 0
Marche_AVNT-ARRIER
Text GLabel 2850 4900 0    50   Input ~ 0
accelerateur
Text GLabel 2850 5700 0    50   Input ~ 0
ENC_SpeedSelector_CCW
Text GLabel 2850 5100 0    50   Input ~ 0
ENC_SpeedSelector_ok
Text GLabel 2850 5600 0    50   Input ~ 0
ENC_SpeedSelector_CW
Text GLabel 6100 4800 2    50   Input ~ 0
menu_up
Text GLabel 2850 6400 0    50   Input ~ 0
TURN_Sgnl_LEFT
Text GLabel 2850 6100 0    50   Input ~ 0
TURN_Sgnl_RIGHT
Text GLabel 2850 6000 0    50   Input ~ 0
LIGHTS_Back
Text GLabel 2850 5900 0    50   Input ~ 0
LIGHTS_Front
Text GLabel 2850 5000 0    50   Input ~ 0
BRAKE
Text GLabel 2850 6600 0    50   Input ~ 0
wiper_speed
Text GLabel 9250 3650 0    50   Input ~ 0
power_wiper
Text GLabel 2850 4800 0    50   Input ~ 0
ADC_current_Selector
Text GLabel 2850 4400 0    50   Input ~ 0
CAN_STBY
Text GLabel 6650 6400 2    50   Input ~ 0
power_wiper
Text GLabel 800  4200 2    50   Input ~ 0
accelerateur
Text GLabel 800  4600 2    50   Input ~ 0
ENC_SpeedSelector_CCW
Text GLabel 800  4400 2    50   Input ~ 0
ENC_SpeedSelector_ok
Text GLabel 800  4500 2    50   Input ~ 0
ENC_SpeedSelector_CW
Text GLabel 800  5300 2    50   Input ~ 0
menu_down
Text GLabel 800  5200 2    50   Input ~ 0
menu_up
Text GLabel 800  5100 2    50   Input ~ 0
menu_ok
Text GLabel 800  5000 2    50   Input ~ 0
TURN_Sgnl_LEFT
Text GLabel 800  4900 2    50   Input ~ 0
TURN_Sgnl_RIGHT
Text GLabel 7000 5000 2    50   Input ~ 0
PWM_wiper
Text GLabel 800  4800 2    50   Input ~ 0
LIGHTS_Back
Text GLabel 800  4700 2    50   Input ~ 0
LIGHTS_Front
Text GLabel 800  4300 2    50   Input ~ 0
BRAKE
Text GLabel 800  5400 2    50   Input ~ 0
wiper_speed
Text GLabel 2850 6500 0    50   Input ~ 0
ST_RST
$Comp
L power:GND #PWR0111
U 1 1 5F35F79B
P 6100 6500
AR Path="/5F35F79B" Ref="#PWR0111"  Part="1" 
AR Path="/5F201C96/5F35F79B" Ref="#PWR?"  Part="1" 
F 0 "#PWR0111" H 6100 6250 50  0001 C CNN
F 1 "GND" H 6105 6327 50  0000 C CNB
F 2 "" H 6100 6500 50  0001 C CNN
F 3 "" H 6100 6500 50  0001 C CNN
	1    6100 6500
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0110
U 1 1 5F35F135
P 6500 4600
AR Path="/5F35F135" Ref="#PWR0110"  Part="1" 
AR Path="/5F201C96/5F35F135" Ref="#PWR?"  Part="1" 
F 0 "#PWR0110" H 6500 4350 50  0001 C CNN
F 1 "GND" H 6650 4550 50  0000 C CNB
F 2 "" H 6500 4600 50  0001 C CNN
F 3 "" H 6500 4600 50  0001 C CNN
	1    6500 4600
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0107
U 1 1 5F358C4E
P 6450 6750
AR Path="/5F358C4E" Ref="#PWR0107"  Part="1" 
AR Path="/5F201C96/5F358C4E" Ref="#PWR?"  Part="1" 
F 0 "#PWR0107" H 6450 6600 50  0001 C CNN
F 1 "+5V" H 6465 6923 50  0000 C CNB
F 2 "" H 6450 6750 50  0001 C CNN
F 3 "" H 6450 6750 50  0001 C CNN
	1    6450 6750
	1    0    0    -1  
$EndComp
$Comp
L Carte_Volant_v21-rescue:STM32H103-OlimexBoard-TIM_Microcontrollers_V5 U?
U 1 1 5F33B67C
P 4500 5350
AR Path="/5F2017A0/5F33B67C" Ref="U?"  Part="1" 
AR Path="/5F33B67C" Ref="U2"  Part="1" 
F 0 "U2" H 4475 6915 50  0000 C CNN
F 1 "STM32H103-OlimexBoard" H 4475 6824 50  0000 C CNN
F 2 "TIM_Microcontrollers_V5:STM32H103-Olimex_SMD" H 4550 5250 50  0001 C CNN
F 3 "" H 4550 5250 50  0001 C CNN
F 4 "Spécifique" H 4600 5400 50  0001 C CNN "Package"
F 5 "STM32-H103" H 4700 5500 50  0001 C CNN "RefManufacturer"
F 6 "2308262" H 4800 5600 50  0001 C CNN "RefDistributor"
	1    4500 5350
	1    0    0    -1  
$EndComp
Text GLabel 6100 5800 2    50   Input ~ 0
PB14
Text GLabel 6100 6300 2    50   Input ~ 0
5VUSB
Text GLabel 6100 4900 2    50   Input ~ 0
menu_down
$Comp
L Device:Jumper_NO_Small Alim_5V1
U 1 1 5F6D926B
P 6250 1150
F 0 "Alim_5V1" H 6250 1050 50  0000 L CNN
F 1 "Jumper_NO_Small" H 6250 950 50  0000 L CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_Pad1.0x1.5mm" H 6250 1150 50  0001 C CNN
F 3 "~" H 6250 1150 50  0001 C CNN
	1    6250 1150
	1    0    0    -1  
$EndComp
Text GLabel 2750 2700 2    50   Input ~ 0
CANH
Text GLabel 2750 2900 2    50   Input ~ 0
CANL
Text GLabel 2950 1550 2    50   Input ~ 0
CANH
Text GLabel 2950 1650 2    50   Input ~ 0
CANL
Wire Wire Line
	2750 2800 3100 2800
Wire Wire Line
	2250 2350 2800 2350
$Comp
L Connector:TestPoint PWM1
U 1 1 5F71C988
P 6700 5000
F 0 "PWM1" H 6758 5118 50  0000 L CNN
F 1 "TestPoint" H 6758 5027 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_1.5x1.5mm" H 6900 5000 50  0001 C CNN
F 3 "~" H 6900 5000 50  0001 C CNN
	1    6700 5000
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint BUSY1
U 1 1 5F7209B1
P 9400 6400
F 0 "BUSY1" H 9458 6518 50  0000 L CNN
F 1 "TestPoint" H 9458 6427 50  0001 L CNN
F 2 "TestPoint:TestPoint_Pad_1.5x1.5mm" H 9600 6400 50  0001 C CNN
F 3 "~" H 9600 6400 50  0001 C CNN
	1    9400 6400
	-1   0    0    -1  
$EndComp
$Comp
L Connector:TestPoint RST1
U 1 1 5F7214AE
P 9500 6300
F 0 "RST1" H 9558 6418 50  0000 L CNN
F 1 "TestPoint" H 9558 6327 50  0001 L CNN
F 2 "TestPoint:TestPoint_Pad_1.5x1.5mm" H 9700 6300 50  0001 C CNN
F 3 "~" H 9700 6300 50  0001 C CNN
	1    9500 6300
	-1   0    0    -1  
$EndComp
$Comp
L Connector:TestPoint DC1
U 1 1 5F721697
P 9600 6200
F 0 "DC1" H 9658 6318 50  0000 L CNN
F 1 "TestPoint" H 9658 6227 50  0001 L CNN
F 2 "TestPoint:TestPoint_Pad_1.5x1.5mm" H 9800 6200 50  0001 C CNN
F 3 "~" H 9800 6200 50  0001 C CNN
	1    9600 6200
	-1   0    0    -1  
$EndComp
$Comp
L Connector:TestPoint CS1
U 1 1 5F7217B7
P 9750 6100
F 0 "CS1" H 9550 6200 50  0000 L CNN
F 1 "TestPoint" H 9808 6127 50  0001 L CNN
F 2 "TestPoint:TestPoint_Pad_1.5x1.5mm" H 9950 6100 50  0001 C CNN
F 3 "~" H 9950 6100 50  0001 C CNN
	1    9750 6100
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint SCLK1
U 1 1 5F7219DA
P 9850 6000
F 0 "SCLK1" H 9908 6118 50  0000 L CNN
F 1 "TestPoint" H 9908 6027 50  0001 L CNN
F 2 "TestPoint:TestPoint_Pad_1.5x1.5mm" H 10050 6000 50  0001 C CNN
F 3 "~" H 10050 6000 50  0001 C CNN
	1    9850 6000
	-1   0    0    -1  
$EndComp
$Comp
L Connector:TestPoint SDI1
U 1 1 5F721B8D
P 10050 5900
F 0 "SDI1" H 9800 6050 50  0000 L CNN
F 1 "TestPoint" H 9650 5950 50  0001 L CNN
F 2 "TestPoint:TestPoint_Pad_1.5x1.5mm" H 10250 5900 50  0001 C CNN
F 3 "~" H 10250 5900 50  0001 C CNN
	1    10050 5900
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint -1
U 1 1 5F721CFE
P 10300 5700
F 0 "-1" H 10150 5850 50  0000 L CNN
F 1 "TestPoint" H 9850 5850 50  0001 L CNN
F 2 "TestPoint:TestPoint_Pad_1.5x1.5mm" H 10500 5700 50  0001 C CNN
F 3 "~" H 10500 5700 50  0001 C CNN
	1    10300 5700
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint +3
U 1 1 5F721DBF
P 10450 5600
F 0 "+3" H 10500 5750 50  0000 L CNN
F 1 "TestPoint" H 9400 5500 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_1.5x1.5mm" H 10650 5600 50  0001 C CNN
F 3 "~" H 10650 5600 50  0001 C CNN
	1    10450 5600
	1    0    0    -1  
$EndComp
Wire Wire Line
	6100 6400 6650 6400
Wire Wire Line
	7000 5000 6700 5000
Wire Wire Line
	6100 5000 6700 5000
Connection ~ 6700 5000
$Comp
L Mechanical:MountingHole H1
U 1 1 5F6E4441
P 1150 600
F 0 "H1" H 1250 646 50  0000 L CNN
F 1 "MountingHole" H 1250 555 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.5mm" H 1150 600 50  0001 C CNN
F 3 "~" H 1150 600 50  0001 C CNN
	1    1150 600 
	0    1    1    0   
$EndComp
$Comp
L Mechanical:MountingHole H2
U 1 1 5F6E4C34
P 900 600
F 0 "H2" H 1000 646 50  0000 L CNN
F 1 "MountingHole" H 1000 555 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.5mm" H 900 600 50  0001 C CNN
F 3 "~" H 900 600 50  0001 C CNN
	1    900  600 
	0    1    1    0   
$EndComp
$Comp
L Mechanical:MountingHole H3
U 1 1 5F6E4E41
P 650 600
F 0 "H3" H 750 646 50  0000 L CNN
F 1 "MountingHole" H 750 555 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.5mm" H 650 600 50  0001 C CNN
F 3 "~" H 650 600 50  0001 C CNN
	1    650  600 
	0    1    1    0   
$EndComp
Text Notes 600  2150 0    118  Italic 24
CAN Transceiver 
Wire Wire Line
	2750 1550 2950 1550
Wire Wire Line
	2650 1550 2650 1650
Wire Wire Line
	2650 1650 2950 1650
Wire Wire Line
	1800 1650 2050 1650
Wire Wire Line
	1850 800  1850 750 
$Comp
L power:+12V #PWR0112
U 1 1 60ED3872
P 4000 1150
F 0 "#PWR0112" H 4000 1000 50  0001 C CNN
F 1 "+12V" V 4015 1278 50  0000 L CNB
F 2 "" H 4000 1150 50  0001 C CNN
F 3 "" H 4000 1150 50  0001 C CNN
	1    4000 1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 1150 4000 1150
Wire Wire Line
	4300 1150 5100 1150
Wire Wire Line
	5100 1150 5100 1050
Wire Wire Line
	5100 1050 5000 1050
Connection ~ 5100 1150
Wire Wire Line
	5100 1150 5250 1150
Wire Wire Line
	6150 1150 6050 1150
Wire Wire Line
	6450 1050 6450 1150
Wire Wire Line
	6450 1150 6350 1150
Wire Wire Line
	9400 2200 9400 2500
Connection ~ 9400 2500
Wire Wire Line
	9550 2500 9550 2550
Wire Wire Line
	9400 2500 9550 2500
Text Label 8750 2200 0    50   ~ 0
GDR
Text Label 8800 2500 0    50   ~ 0
RESE
Wire Wire Line
	7450 3200 7500 3200
Wire Wire Line
	7500 3200 7500 3100
Wire Wire Line
	8150 3200 8200 3200
Wire Wire Line
	8200 3200 8200 3100
Wire Wire Line
	7300 2550 7300 2500
Wire Wire Line
	7900 2150 8200 2150
Wire Wire Line
	8200 2150 8200 2500
Wire Wire Line
	7600 2150 7300 2150
Wire Wire Line
	7300 2150 7300 2200
Connection ~ 7300 2150
$Comp
L power:+12V #PWR0116
U 1 1 61267B44
P 1000 3750
F 0 "#PWR0116" H 1000 3600 50  0001 C CNN
F 1 "+12V" H 1050 3900 50  0000 L CNB
F 2 "" H 1000 3750 50  0001 C CNN
F 3 "" H 1000 3750 50  0001 C CNN
	1    1000 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	1000 3750 1000 3800
Wire Wire Line
	1000 3800 800  3800
Text GLabel 800  3900 2    50   Input ~ 0
POWER_SWITCH
Wire Wire Line
	9950 3650 9950 3700
Wire Wire Line
	9950 4000 9950 4050
Wire Wire Line
	9550 4400 9950 4400
Wire Wire Line
	9950 4350 9950 4400
Connection ~ 9950 4400
Wire Wire Line
	9950 4400 10250 4400
Wire Wire Line
	10250 4200 10250 4400
Wire Wire Line
	10250 4200 10750 4200
Wire Wire Line
	10250 4100 10250 3700
Wire Wire Line
	9950 3700 10250 3700
Wire Wire Line
	10250 4100 10750 4100
Wire Wire Line
	9300 4050 9350 4050
Connection ~ 9350 4050
Wire Wire Line
	9350 4050 9350 4000
Wire Wire Line
	9000 4050 8950 4050
Wire Wire Line
	8950 4050 8950 4400
Wire Wire Line
	9150 4400 8950 4400
Connection ~ 8950 4400
Wire Wire Line
	8950 4400 8950 4450
Wire Wire Line
	9350 3650 9350 3700
Wire Wire Line
	9250 3650 9350 3650
Wire Wire Line
	10650 5550 10650 5600
Connection ~ 10650 5600
Wire Wire Line
	10650 5600 10700 5600
Wire Wire Line
	10450 5600 10650 5600
Wire Wire Line
	10700 5600 10700 5700
Wire Wire Line
	10700 5800 10650 5800
Wire Wire Line
	10650 5800 10650 5700
Wire Wire Line
	10650 5700 10300 5700
Wire Wire Line
	10300 5700 10300 5750
Connection ~ 10300 5700
Wire Wire Line
	10700 6100 10600 6100
Wire Wire Line
	10700 6200 10600 6200
Wire Wire Line
	2050 1550 2050 1650
Wire Wire Line
	10700 650  10750 650 
Wire Wire Line
	10750 650  10750 700 
Connection ~ 10750 700 
Wire Wire Line
	10700 750  10750 750 
Wire Wire Line
	10750 750  10750 800 
Connection ~ 10750 800 
Wire Wire Line
	10700 850  10750 850 
Wire Wire Line
	10750 850  10750 900 
Connection ~ 10750 900 
Wire Wire Line
	10700 950  10750 950 
Wire Wire Line
	10750 950  10750 1000
Connection ~ 10750 1000
Wire Wire Line
	10700 1050 10750 1050
Wire Wire Line
	10750 1050 10750 1100
Connection ~ 10750 1100
Wire Wire Line
	10700 1150 10750 1150
Wire Wire Line
	10750 1150 10750 1200
Connection ~ 10750 1200
Wire Wire Line
	10700 1250 10750 1250
Wire Wire Line
	10750 1250 10750 1300
Connection ~ 10750 1300
Wire Wire Line
	10350 1500 10750 1500
Wire Wire Line
	10350 1600 10750 1600
Wire Wire Line
	10050 2350 10350 2350
Wire Wire Line
	10700 2550 10750 2550
Wire Wire Line
	10750 2550 10750 2600
Connection ~ 10750 2600
Wire Wire Line
	10700 2650 10750 2650
Wire Wire Line
	10750 2650 10750 2700
Connection ~ 10750 2700
Wire Wire Line
	10450 2400 10450 2250
Wire Wire Line
	10450 2250 10050 2250
Wire Wire Line
	10450 2400 10750 2400
Wire Wire Line
	10350 2350 10350 2500
Wire Wire Line
	10350 2500 10750 2500
Wire Wire Line
	10050 1600 10050 1750
Connection ~ 10050 1600
Connection ~ 10050 2700
Wire Wire Line
	10050 2700 10050 2800
Wire Wire Line
	10050 2600 10050 2700
Wire Wire Line
	8600 750  8600 650 
Wire Wire Line
	8600 650  8650 650 
Wire Wire Line
	8400 750  8400 900 
Wire Wire Line
	8800 900  8950 900 
Wire Wire Line
	8950 900  8950 950 
$Comp
L power:GND #PWR0123
U 1 1 619FCB04
P 8950 950
AR Path="/619FCB04" Ref="#PWR0123"  Part="1" 
AR Path="/5F201C96/619FCB04" Ref="#PWR?"  Part="1" 
F 0 "#PWR0123" H 8950 700 50  0001 C CNN
F 1 "GND" H 8950 750 50  0000 C CNB
F 2 "" H 8950 950 50  0001 C CNN
F 3 "" H 8950 950 50  0001 C CNN
	1    8950 950 
	1    0    0    -1  
$EndComp
Wire Notes Line
	11200 3350 11200 3300
Wire Notes Line
	11150 3350 500  3350
Wire Notes Line
	500  1900 7050 1900
Wire Notes Line
	7050 1900 7050 500 
Wire Notes Line
	4150 1900 4150 3350
Text Notes 4250 2200 0    118  Italic 24
RAW SCREEN CIRCUITRY\n
Wire Notes Line
	11200 4600 8250 4600
Wire Wire Line
	10700 4850 10750 4850
Wire Wire Line
	10700 4800 10700 4850
Wire Wire Line
	10750 4950 10700 4950
Wire Wire Line
	10700 5050 10700 5100
Connection ~ 10700 5050
Wire Wire Line
	10750 5050 10700 5050
Wire Wire Line
	10700 4950 10700 5050
$Comp
L Connector_Generic:Conn_01x03 J2
U 1 1 5F6D6D17
P 10950 4950
F 0 "J2" V 10950 5250 50  0000 R CNN
F 1 "Conn_01x03" V 11050 5150 50  0000 R CNN
F 2 "Connector_Molex:Molex_Micro-Fit_3.0_43650-0300_1x03_P3.00mm_Horizontal" H 10950 4950 50  0001 C CNN
F 3 "~" H 10950 4950 50  0001 C CNN
	1    10950 4950
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0120
U 1 1 5F526E79
P 10700 4800
F 0 "#PWR0120" H 10700 4650 50  0001 C CNN
F 1 "+3.3V" H 10600 4950 50  0000 L CNB
F 2 "" H 10700 4800 50  0001 C CNN
F 3 "" H 10700 4800 50  0001 C CNN
	1    10700 4800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0119
U 1 1 5F51F15A
P 10700 5100
F 0 "#PWR0119" H 10700 4850 50  0001 C CNN
F 1 "GND" H 10850 5100 50  0000 C CNB
F 2 "" H 10700 5100 50  0001 C CNN
F 3 "" H 10700 5100 50  0001 C CNN
	1    10700 5100
	-1   0    0    -1  
$EndComp
Wire Wire Line
	10050 5900 10600 5900
Wire Wire Line
	10550 5800 10600 5800
Wire Wire Line
	10600 5800 10600 5900
Connection ~ 10600 5900
Wire Wire Line
	10600 5900 10700 5900
Wire Wire Line
	10550 5950 10600 5950
Wire Wire Line
	10600 5950 10600 6000
Connection ~ 10600 6000
Wire Wire Line
	10600 6000 10700 6000
Wire Wire Line
	10600 6050 10600 6100
Wire Wire Line
	10550 6050 10600 6050
Wire Wire Line
	9850 6000 10600 6000
Wire Wire Line
	9750 6100 10600 6100
Connection ~ 10600 6100
Wire Wire Line
	10550 6150 10600 6150
Wire Wire Line
	10600 6150 10600 6200
Connection ~ 10600 6200
Wire Wire Line
	9600 6200 10600 6200
Wire Wire Line
	10600 6250 10600 6300
Wire Wire Line
	10600 6250 10550 6250
Wire Wire Line
	10600 6300 10700 6300
Wire Wire Line
	10600 6300 9500 6300
Connection ~ 10600 6300
Wire Wire Line
	10550 6350 10600 6350
Wire Wire Line
	10600 6350 10600 6400
Wire Wire Line
	10600 6400 10700 6400
Wire Wire Line
	10600 6400 9400 6400
Connection ~ 10600 6400
Wire Notes Line
	8250 6500 11200 6500
Wire Notes Line
	8250 3350 8250 6500
Wire Notes Line
	8250 5300 11200 5300
Text Notes 8250 5500 0    106  Italic 21
HAT SCREEN CONNECTOR\n
Text Notes 8250 4800 0    114  Italic 23
COMMON VOLTAGE SOURCE \n
Wire Wire Line
	10350 1500 10350 1600
Connection ~ 10350 1500
Connection ~ 10350 1600
Wire Wire Line
	6500 4600 6100 4600
Wire Wire Line
	6100 4500 6500 4500
$Comp
L power:GND #PWR?
U 1 1 61ECA5CE
P 6550 4300
AR Path="/61ECA5CE" Ref="#PWR?"  Part="1" 
AR Path="/5F201C96/61ECA5CE" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 6550 4050 50  0001 C CNN
F 1 "GND" H 6700 4250 50  0000 C CNB
F 2 "" H 6550 4300 50  0001 C CNN
F 3 "" H 6550 4300 50  0001 C CNN
	1    6550 4300
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 61ED20AB
P 6550 4100
F 0 "#PWR?" H 6550 3950 50  0001 C CNN
F 1 "+3.3V" H 6600 4100 50  0000 L CNB
F 2 "" H 6550 4100 50  0001 C CNN
F 3 "" H 6550 4100 50  0001 C CNN
	1    6550 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	6100 4100 6550 4100
Wire Wire Line
	6550 4300 6100 4300
$Comp
L power:+3.3V #PWR?
U 1 1 61EEF494
P 2300 4500
F 0 "#PWR?" H 2300 4350 50  0001 C CNN
F 1 "+3.3V" H 2350 4500 50  0000 L CNB
F 2 "" H 2300 4500 50  0001 C CNN
F 3 "" H 2300 4500 50  0001 C CNN
	1    2300 4500
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61EFACC7
P 2400 4600
AR Path="/61EFACC7" Ref="#PWR?"  Part="1" 
AR Path="/5F201C96/61EFACC7" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 2400 4350 50  0001 C CNN
F 1 "GND" V 2400 4400 50  0000 C CNB
F 2 "" H 2400 4600 50  0001 C CNN
F 3 "" H 2400 4600 50  0001 C CNN
	1    2400 4600
	0    1    -1   0   
$EndComp
Wire Wire Line
	2400 4600 2850 4600
Wire Wire Line
	2300 4500 2850 4500
$Comp
L power:+3.3V #PWR?
U 1 1 61F29549
P 1100 6800
F 0 "#PWR?" H 1100 6650 50  0001 C CNN
F 1 "+3.3V" H 800 6800 50  0000 L CNB
F 2 "" H 1100 6800 50  0001 C CNN
F 3 "" H 1100 6800 50  0001 C CNN
	1    1100 6800
	-1   0    0    -1  
$EndComp
Wire Wire Line
	800  6700 800  6800
Wire Wire Line
	800  6800 1100 6800
Connection ~ 800  6800
Wire Wire Line
	800  6500 800  6600
Wire Wire Line
	800  6500 1100 6500
Connection ~ 800  6500
$Comp
L power:GND #PWR?
U 1 1 61F4BD73
P 1100 6500
AR Path="/61F4BD73" Ref="#PWR?"  Part="1" 
AR Path="/5F201C96/61F4BD73" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 1100 6250 50  0001 C CNN
F 1 "GND" H 1250 6450 50  0000 C CNB
F 2 "" H 1100 6500 50  0001 C CNN
F 3 "" H 1100 6500 50  0001 C CNN
	1    1100 6500
	1    0    0    -1  
$EndComp
Wire Wire Line
	6100 6600 6100 6750
Wire Wire Line
	6100 6750 6450 6750
Wire Wire Line
	800  6400 800  6300
Wire Wire Line
	800  6300 1100 6300
Connection ~ 800  6300
Text Notes 4150 3600 0    118  Italic 24
MCU
$EndSCHEMATC
