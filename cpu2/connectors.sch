EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:scube
LIBS:cpu2-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 3
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L CONN_02X17 P7
U 1 1 58CF3C47
P 7950 4000
F 0 "P7" H 7950 4900 50  0000 C CNN
F 1 "CONN_02X17" V 7950 4000 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Angled_2x17" H 7950 2900 50  0001 C CNN
F 3 "" H 7950 2900 50  0000 C CNN
	1    7950 4000
	1    0    0    -1  
$EndComp
Connection ~ 5000 3200
Connection ~ 5000 3300
Connection ~ 5000 3400
Connection ~ 5000 3500
Connection ~ 5000 3600
Connection ~ 5000 3700
Connection ~ 5000 3800
Connection ~ 5000 3900
Connection ~ 5000 4000
Connection ~ 5000 4100
Connection ~ 5000 4200
Connection ~ 5000 4300
Connection ~ 5000 4400
Connection ~ 5000 4500
Connection ~ 5000 4600
Connection ~ 5000 4700
Connection ~ 5000 4800
Connection ~ 5500 3200
Connection ~ 5500 3400
Connection ~ 5500 3500
Connection ~ 5500 3600
Connection ~ 6350 3200
Connection ~ 6350 3300
Connection ~ 6350 3400
Connection ~ 6350 3500
Connection ~ 6350 3600
Connection ~ 6350 3700
Connection ~ 6350 3800
Connection ~ 6350 3900
Connection ~ 6350 4000
Connection ~ 6350 4100
Connection ~ 6350 4200
Connection ~ 6350 4300
Connection ~ 6350 4400
Connection ~ 6350 4500
Connection ~ 6350 4600
Connection ~ 6350 4700
Connection ~ 6350 4800
Connection ~ 6850 3200
Connection ~ 6850 3400
Connection ~ 6850 3500
Connection ~ 6850 3600
Connection ~ 7700 3200
Connection ~ 7700 3300
Connection ~ 7700 3400
Connection ~ 7700 3500
Connection ~ 7700 3600
Connection ~ 7700 3700
Connection ~ 7700 3800
Connection ~ 7700 3900
Connection ~ 7700 4000
Connection ~ 7700 4100
Connection ~ 7700 4200
Connection ~ 7700 4300
Connection ~ 7700 4400
Connection ~ 7700 4500
Connection ~ 7700 4600
Connection ~ 7700 4700
Connection ~ 7700 4800
$Comp
L +24V #PWR028
U 1 1 58CF3CA7
P 4650 3200
F 0 "#PWR028" H 4650 3050 50  0001 C CNN
F 1 "+24V" H 4650 3340 50  0000 C CNN
F 2 "" H 4650 3200 50  0000 C CNN
F 3 "" H 4650 3200 50  0000 C CNN
	1    4650 3200
	0    -1   -1   0   
$EndComp
$Comp
L +5V #PWR029
U 1 1 58CF3CAD
P 4650 3400
F 0 "#PWR029" H 4650 3250 50  0001 C CNN
F 1 "+5V" H 4650 3540 50  0000 C CNN
F 2 "" H 4650 3400 50  0000 C CNN
F 3 "" H 4650 3400 50  0000 C CNN
	1    4650 3400
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR030
U 1 1 58CF3CB3
P 4500 3500
F 0 "#PWR030" H 4500 3250 50  0001 C CNN
F 1 "GND" H 4500 3350 50  0000 C CNN
F 2 "" H 4500 3500 50  0000 C CNN
F 3 "" H 4500 3500 50  0000 C CNN
	1    4500 3500
	0    1    1    0   
$EndComp
$Comp
L -5V #PWR31
U 1 1 58CF3CB9
P 4650 3600
F 0 "#PWR31" H 4650 3700 50  0001 C CNN
F 1 "-5V" H 4650 3750 50  0000 C CNN
F 2 "" H 4650 3600 50  0000 C CNN
F 3 "" H 4650 3600 50  0000 C CNN
	1    4650 3600
	0    -1   -1   0   
$EndComp
Text GLabel 4950 3300 0    60   Input ~ 0
PWM0
Wire Wire Line
	4950 3300 5500 3300
Text GLabel 6300 3300 0    60   Input ~ 0
PWM1
Text GLabel 7650 3300 0    60   Input ~ 0
PWM2
Text GLabel 4950 3700 0    60   Input ~ 0
TACH0
Text GLabel 6300 3700 0    60   Input ~ 0
TACH1
Text GLabel 7650 3700 0    60   Input ~ 0
TACH2
Text GLabel 4950 3800 0    60   Input ~ 0
/CS_VGND0
Text GLabel 6300 3800 0    60   Input ~ 0
/CS_VGND1
Text GLabel 7650 3800 0    60   Input ~ 0
/CS_VGND2
Text GLabel 4950 3900 0    60   Input ~ 0
EN_VGND0
Text GLabel 6300 3900 0    60   Input ~ 0
EN_VGND1
Text GLabel 7650 3900 0    60   Input ~ 0
EN_VGND2
Text GLabel 4950 4000 0    60   Input ~ 0
ONEWIRE
Text GLabel 4950 4100 0    60   Input ~ 0
f_ADC
Text GLabel 4950 4200 0    60   Input ~ 0
/CS_ADC0
Text GLabel 6300 4200 0    60   Input ~ 0
/CS_ADC1
Text GLabel 7650 4200 0    60   Input ~ 0
/CS_ADC2
Text GLabel 4950 4300 0    60   Input ~ 0
SCLK
Text GLabel 4950 4400 0    60   Input ~ 0
MISO
Text GLabel 4950 4500 0    60   Input ~ 0
MOSI
Text GLabel 4950 4600 0    60   Input ~ 0
/DRDY0
Text GLabel 6300 4600 0    60   Input ~ 0
/DRDY1
Text GLabel 7650 4600 0    60   Input ~ 0
/DRDY2
Text GLabel 4950 4700 0    60   Input ~ 0
/DONE0
Text GLabel 6300 4700 0    60   Input ~ 0
/DONE1
Text GLabel 7650 4700 0    60   Input ~ 0
/DONE2
$Comp
L +3.3V #PWR031
U 1 1 58CF4033
P 4550 4800
F 0 "#PWR031" H 4550 4650 50  0001 C CNN
F 1 "+3.3V" H 4550 4940 50  0000 C CNN
F 2 "" H 4550 4800 50  0000 C CNN
F 3 "" H 4550 4800 50  0000 C CNN
	1    4550 4800
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4650 3200 8200 3200
Wire Wire Line
	6300 3300 6850 3300
Wire Wire Line
	7650 3300 8200 3300
Wire Wire Line
	4650 3400 8200 3400
Wire Wire Line
	4500 3500 8200 3500
Wire Wire Line
	4650 3600 8200 3600
Wire Wire Line
	4950 3700 5500 3700
$Comp
L CONN_02X17 P5
U 1 1 58CF4412
P 5250 4000
F 0 "P5" H 5250 4900 50  0000 C CNN
F 1 "CONN_02X17" V 5250 4000 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Angled_2x17" H 5250 2900 50  0001 C CNN
F 3 "" H 5250 2900 50  0000 C CNN
	1    5250 4000
	1    0    0    -1  
$EndComp
Connection ~ 5500 4800
$Comp
L CONN_02X17 P6
U 1 1 58CF449B
P 6600 4000
F 0 "P6" H 6600 4900 50  0000 C CNN
F 1 "CONN_02X17" V 6600 4000 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Angled_2x17" H 6600 2900 50  0001 C CNN
F 3 "" H 6600 2900 50  0000 C CNN
	1    6600 4000
	1    0    0    -1  
$EndComp
Connection ~ 5500 4300
Connection ~ 5500 4400
Connection ~ 5500 4500
Connection ~ 6850 4300
Connection ~ 6850 4400
Connection ~ 6850 4500
Connection ~ 6850 4800
Wire Wire Line
	4950 3800 5500 3800
Wire Wire Line
	4950 3900 5500 3900
Wire Wire Line
	4950 4000 8200 4000
Connection ~ 6850 4000
Wire Wire Line
	4950 4100 8200 4100
Connection ~ 6850 4100
Wire Wire Line
	4950 4200 5500 4200
Wire Wire Line
	4950 4300 8200 4300
Wire Wire Line
	4950 4400 8200 4400
Wire Wire Line
	4950 4500 8200 4500
Wire Wire Line
	4950 4600 5500 4600
Wire Wire Line
	4950 4700 5500 4700
Wire Wire Line
	4550 4800 8200 4800
Wire Wire Line
	6300 3700 6850 3700
Wire Wire Line
	6300 3800 6850 3800
Wire Wire Line
	6300 3900 6850 3900
Wire Wire Line
	6300 4200 6850 4200
Wire Wire Line
	6300 4600 6850 4600
Wire Wire Line
	6300 4700 6850 4700
Wire Wire Line
	7650 3700 8200 3700
Wire Wire Line
	7650 3800 8200 3800
Wire Wire Line
	7650 3900 8200 3900
Wire Wire Line
	7650 4200 8200 4200
Wire Wire Line
	7650 4600 8200 4600
Wire Wire Line
	7650 4700 8200 4700
$Comp
L CONN_02X20 P1
U 1 1 58CF8253
P 2750 3950
F 0 "P1" H 2750 5000 50  0000 C CNN
F 1 "CONN_02X20" V 2750 3950 50  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Straight_2x20" H 2750 3000 50  0001 C CNN
F 3 "" H 2750 3000 50  0000 C CNN
	1    2750 3950
	1    0    0    -1  
$EndComp
$EndSCHEMATC
