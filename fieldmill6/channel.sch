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
LIBS:fieldmill6-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 4
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
L CONN_01X01 P1
U 1 1 57B07577
P 7550 3350
AR Path="/57B05F2F/57B07577" Ref="P1"  Part="1" 
AR Path="/57B0A0EC/57B07577" Ref="P3"  Part="1" 
AR Path="/57B0A102/57B07577" Ref="P5"  Part="1" 
F 0 "P5" H 7550 3450 50  0000 C CNN
F 1 "SENSOR" V 7650 3350 50  0000 C CNN
F 2 "SCUBE:M3_PTH" H 7550 3350 50  0001 C CNN
F 3 "" H 7550 3350 50  0000 C CNN
	1    7550 3350
	1    0    0    -1  
$EndComp
$Comp
L LM6211MF U1
U 1 1 57B07587
P 5700 3350
AR Path="/57B05F2F/57B07587" Ref="U1"  Part="1" 
AR Path="/57B0A0EC/57B07587" Ref="U4"  Part="1" 
AR Path="/57B0A102/57B07587" Ref="U7"  Part="1" 
F 0 "U7" H 5950 3650 60  0000 C CNN
F 1 "LM6211MF" H 6000 3550 60  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-23-5" H 5700 3350 60  0001 C CNN
F 3 "" H 5700 3350 60  0000 C CNN
	1    5700 3350
	-1   0    0    -1  
$EndComp
$Comp
L AD8253 U2
U 1 1 57B0758E
P 3900 4100
AR Path="/57B05F2F/57B0758E" Ref="U2"  Part="1" 
AR Path="/57B0A0EC/57B0758E" Ref="U5"  Part="1" 
AR Path="/57B0A102/57B0758E" Ref="U8"  Part="1" 
F 0 "U8" H 3900 4500 60  0000 C CNN
F 1 "AD8253" H 3900 4400 60  0000 C CNN
F 2 "Housings_SSOP:MSOP-10_3x3mm_Pitch0.5mm" H 3900 4100 60  0001 C CNN
F 3 "" H 3900 4100 60  0000 C CNN
	1    3900 4100
	1    0    0    -1  
$EndComp
$Comp
L R_Small R2
U 1 1 57B07595
P 6200 3700
AR Path="/57B05F2F/57B07595" Ref="R2"  Part="1" 
AR Path="/57B0A0EC/57B07595" Ref="R6"  Part="1" 
AR Path="/57B0A102/57B07595" Ref="R10"  Part="1" 
F 0 "R10" H 6230 3720 50  0000 L CNN
F 1 "1M" H 6230 3660 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" H 6200 3700 50  0001 C CNN
F 3 "" H 6200 3700 50  0000 C CNN
	1    6200 3700
	-1   0    0    1   
$EndComp
$Comp
L +9V #PWR013
U 1 1 57B075B2
P 5700 3000
AR Path="/57B05F2F/57B075B2" Ref="#PWR013"  Part="1" 
AR Path="/57B0A0EC/57B075B2" Ref="#PWR027"  Part="1" 
AR Path="/57B0A102/57B075B2" Ref="#PWR041"  Part="1" 
F 0 "#PWR041" H 5700 2850 50  0001 C CNN
F 1 "+9V" H 5700 3140 50  0000 C CNN
F 2 "" H 5700 3000 50  0000 C CNN
F 3 "" H 5700 3000 50  0000 C CNN
	1    5700 3000
	1    0    0    -1  
$EndComp
$Comp
L -9VA #PWR014
U 1 1 57B075B8
P 5700 3700
AR Path="/57B05F2F/57B075B8" Ref="#PWR014"  Part="1" 
AR Path="/57B0A0EC/57B075B8" Ref="#PWR028"  Part="1" 
AR Path="/57B0A102/57B075B8" Ref="#PWR042"  Part="1" 
F 0 "#PWR042" H 5700 3575 50  0001 C CNN
F 1 "-9VA" H 5700 3850 50  0000 C CNN
F 2 "" H 5700 3700 50  0000 C CNN
F 3 "" H 5700 3700 50  0000 C CNN
	1    5700 3700
	-1   0    0    1   
$EndComp
Text Notes 7050 3050 0    60   ~ 0
Input offset voltage: 0.1 mV\nInput bias current: 5 pA max at 25°C\nInput offset current: 0.1 pA
$Comp
L R_Small R1
U 1 1 57B0797E
P 5700 2700
AR Path="/57B05F2F/57B0797E" Ref="R1"  Part="1" 
AR Path="/57B0A0EC/57B0797E" Ref="R5"  Part="1" 
AR Path="/57B0A102/57B0797E" Ref="R9"  Part="1" 
F 0 "R9" H 5730 2720 50  0000 L CNN
F 1 "1M" H 5730 2660 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" H 5700 2700 50  0001 C CNN
F 3 "" H 5700 2700 50  0000 C CNN
	1    5700 2700
	0    -1   -1   0   
$EndComp
$Comp
L CONN_01X02 P12
U 1 1 57B07AC0
P 6750 2950
AR Path="/57B05F2F/57B07AC0" Ref="P12"  Part="1" 
AR Path="/57B0A0EC/57B07AC0" Ref="P16"  Part="1" 
AR Path="/57B0A102/57B07AC0" Ref="P20"  Part="1" 
F 0 "P20" H 6750 3100 50  0000 C CNN
F 1 "TRANSIMP" V 6850 2950 50  0000 C CNN
F 2 "SCUBE:solder_bridge" H 6750 2950 50  0001 C CNN
F 3 "" H 6750 2950 50  0000 C CNN
	1    6750 2950
	0    -1   -1   0   
$EndComp
$Comp
L CONN_01X02 P13
U 1 1 57B07DEE
P 6750 3750
AR Path="/57B05F2F/57B07DEE" Ref="P13"  Part="1" 
AR Path="/57B0A0EC/57B07DEE" Ref="P17"  Part="1" 
AR Path="/57B0A102/57B07DEE" Ref="P21"  Part="1" 
F 0 "P21" H 6750 3900 50  0000 C CNN
F 1 "BUFFER" V 6850 3750 50  0000 C CNN
F 2 "SCUBE:solder_bridge" H 6750 3750 50  0001 C CNN
F 3 "" H 6750 3750 50  0000 C CNN
	1    6750 3750
	0    1    1    0   
$EndComp
$Comp
L C_Small C1
U 1 1 57B080FC
P 5700 2450
AR Path="/57B05F2F/57B080FC" Ref="C1"  Part="1" 
AR Path="/57B0A0EC/57B080FC" Ref="C7"  Part="1" 
AR Path="/57B0A102/57B080FC" Ref="C13"  Part="1" 
F 0 "C13" H 5710 2520 50  0000 L CNN
F 1 "150p" H 5710 2370 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 5700 2450 50  0001 C CNN
F 3 "" H 5700 2450 50  0000 C CNN
	1    5700 2450
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR015
U 1 1 57B08405
P 6300 3900
AR Path="/57B05F2F/57B08405" Ref="#PWR015"  Part="1" 
AR Path="/57B0A0EC/57B08405" Ref="#PWR029"  Part="1" 
AR Path="/57B0A102/57B08405" Ref="#PWR043"  Part="1" 
F 0 "#PWR043" H 6300 3650 50  0001 C CNN
F 1 "GND" H 6300 3750 50  0000 C CNN
F 2 "" H 6300 3900 50  0000 C CNN
F 3 "" H 6300 3900 50  0000 C CNN
	1    6300 3900
	1    0    0    -1  
$EndComp
Text Label 6850 3350 0    60   ~ 0
SENSORP
Text Notes 5000 2200 0    60   ~ 0
fc = 1.06 kHz (-6 dB power)\nIn other words, signals will be somewhat\ndamped unless they're below 10 Hz or so\nMust be taken into account when calibrating
$Comp
L C_Small C4
U 1 1 57B08A66
P 6400 3700
AR Path="/57B05F2F/57B08A66" Ref="C4"  Part="1" 
AR Path="/57B0A0EC/57B08A66" Ref="C10"  Part="1" 
AR Path="/57B0A102/57B08A66" Ref="C16"  Part="1" 
F 0 "C16" H 6410 3770 50  0000 L CNN
F 1 "15p" H 6410 3620 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 6400 3700 50  0001 C CNN
F 3 "" H 6400 3700 50  0000 C CNN
	1    6400 3700
	1    0    0    -1  
$EndComp
Text Notes 5650 4300 0    60   ~ 0
Input cap controls high\nfrequency noise gain
$Comp
L CONN_01X01 P2
U 1 1 57B0948D
P 7550 5450
AR Path="/57B05F2F/57B0948D" Ref="P2"  Part="1" 
AR Path="/57B0A0EC/57B0948D" Ref="P4"  Part="1" 
AR Path="/57B0A102/57B0948D" Ref="P6"  Part="1" 
F 0 "P6" H 7550 5550 50  0000 C CNN
F 1 "SENSOR" V 7650 5450 50  0000 C CNN
F 2 "SCUBE:M3_PTH" H 7550 5450 50  0001 C CNN
F 3 "" H 7550 5450 50  0000 C CNN
	1    7550 5450
	1    0    0    -1  
$EndComp
$Comp
L LM6211MF U3
U 1 1 57B09493
P 5700 5450
AR Path="/57B05F2F/57B09493" Ref="U3"  Part="1" 
AR Path="/57B0A0EC/57B09493" Ref="U6"  Part="1" 
AR Path="/57B0A102/57B09493" Ref="U9"  Part="1" 
F 0 "U9" H 5950 5750 60  0000 C CNN
F 1 "LM6211MF" H 6000 5650 60  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-23-5" H 5700 5450 60  0001 C CNN
F 3 "" H 5700 5450 60  0000 C CNN
	1    5700 5450
	-1   0    0    -1  
$EndComp
$Comp
L R_Small R4
U 1 1 57B09499
P 6200 5800
AR Path="/57B05F2F/57B09499" Ref="R4"  Part="1" 
AR Path="/57B0A0EC/57B09499" Ref="R8"  Part="1" 
AR Path="/57B0A102/57B09499" Ref="R12"  Part="1" 
F 0 "R12" H 6230 5820 50  0000 L CNN
F 1 "1M" H 6230 5760 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" H 6200 5800 50  0001 C CNN
F 3 "" H 6200 5800 50  0000 C CNN
	1    6200 5800
	-1   0    0    1   
$EndComp
$Comp
L +9V #PWR016
U 1 1 57B0949F
P 5700 5100
AR Path="/57B05F2F/57B0949F" Ref="#PWR016"  Part="1" 
AR Path="/57B0A0EC/57B0949F" Ref="#PWR030"  Part="1" 
AR Path="/57B0A102/57B0949F" Ref="#PWR044"  Part="1" 
F 0 "#PWR044" H 5700 4950 50  0001 C CNN
F 1 "+9V" H 5700 5240 50  0000 C CNN
F 2 "" H 5700 5100 50  0000 C CNN
F 3 "" H 5700 5100 50  0000 C CNN
	1    5700 5100
	1    0    0    -1  
$EndComp
$Comp
L -9VA #PWR017
U 1 1 57B094A5
P 5700 5800
AR Path="/57B05F2F/57B094A5" Ref="#PWR017"  Part="1" 
AR Path="/57B0A0EC/57B094A5" Ref="#PWR031"  Part="1" 
AR Path="/57B0A102/57B094A5" Ref="#PWR045"  Part="1" 
F 0 "#PWR045" H 5700 5675 50  0001 C CNN
F 1 "-9VA" H 5700 5950 50  0000 C CNN
F 2 "" H 5700 5800 50  0000 C CNN
F 3 "" H 5700 5800 50  0000 C CNN
	1    5700 5800
	-1   0    0    1   
$EndComp
$Comp
L R_Small R3
U 1 1 57B094AC
P 5700 4800
AR Path="/57B05F2F/57B094AC" Ref="R3"  Part="1" 
AR Path="/57B0A0EC/57B094AC" Ref="R7"  Part="1" 
AR Path="/57B0A102/57B094AC" Ref="R11"  Part="1" 
F 0 "R11" H 5730 4820 50  0000 L CNN
F 1 "1M" H 5730 4760 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" H 5700 4800 50  0001 C CNN
F 3 "" H 5700 4800 50  0000 C CNN
	1    5700 4800
	0    -1   -1   0   
$EndComp
$Comp
L CONN_01X02 P14
U 1 1 57B094B2
P 6750 5050
AR Path="/57B05F2F/57B094B2" Ref="P14"  Part="1" 
AR Path="/57B0A0EC/57B094B2" Ref="P18"  Part="1" 
AR Path="/57B0A102/57B094B2" Ref="P22"  Part="1" 
F 0 "P22" H 6750 5200 50  0000 C CNN
F 1 "TRANSIMP" V 6850 5050 50  0000 C CNN
F 2 "SCUBE:solder_bridge" H 6750 5050 50  0001 C CNN
F 3 "" H 6750 5050 50  0000 C CNN
	1    6750 5050
	0    -1   -1   0   
$EndComp
$Comp
L CONN_01X02 P15
U 1 1 57B094B8
P 6750 5850
AR Path="/57B05F2F/57B094B8" Ref="P15"  Part="1" 
AR Path="/57B0A0EC/57B094B8" Ref="P19"  Part="1" 
AR Path="/57B0A102/57B094B8" Ref="P23"  Part="1" 
F 0 "P23" H 6750 6000 50  0000 C CNN
F 1 "BUFFER" V 6850 5850 50  0000 C CNN
F 2 "SCUBE:solder_bridge" H 6750 5850 50  0001 C CNN
F 3 "" H 6750 5850 50  0000 C CNN
	1    6750 5850
	0    1    1    0   
$EndComp
$Comp
L C_Small C5
U 1 1 57B094BE
P 5700 4550
AR Path="/57B05F2F/57B094BE" Ref="C5"  Part="1" 
AR Path="/57B0A0EC/57B094BE" Ref="C11"  Part="1" 
AR Path="/57B0A102/57B094BE" Ref="C17"  Part="1" 
F 0 "C17" H 5710 4620 50  0000 L CNN
F 1 "150p" H 5710 4470 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 5700 4550 50  0001 C CNN
F 3 "" H 5700 4550 50  0000 C CNN
	1    5700 4550
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR018
U 1 1 57B094C4
P 6300 6000
AR Path="/57B05F2F/57B094C4" Ref="#PWR018"  Part="1" 
AR Path="/57B0A0EC/57B094C4" Ref="#PWR032"  Part="1" 
AR Path="/57B0A102/57B094C4" Ref="#PWR046"  Part="1" 
F 0 "#PWR046" H 6300 5750 50  0001 C CNN
F 1 "GND" H 6300 5850 50  0000 C CNN
F 2 "" H 6300 6000 50  0000 C CNN
F 3 "" H 6300 6000 50  0000 C CNN
	1    6300 6000
	1    0    0    -1  
$EndComp
Text Label 6850 5450 0    60   ~ 0
SENSORN
$Comp
L C_Small C6
U 1 1 57B094E2
P 6400 5800
AR Path="/57B05F2F/57B094E2" Ref="C6"  Part="1" 
AR Path="/57B0A0EC/57B094E2" Ref="C12"  Part="1" 
AR Path="/57B0A102/57B094E2" Ref="C18"  Part="1" 
F 0 "C18" H 6410 5870 50  0000 L CNN
F 1 "15p" H 6410 5720 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 6400 5800 50  0001 C CNN
F 3 "" H 6400 5800 50  0000 C CNN
	1    6400 5800
	1    0    0    -1  
$EndComp
$Comp
L +9V #PWR019
U 1 1 57B09964
P 4350 4100
AR Path="/57B05F2F/57B09964" Ref="#PWR019"  Part="1" 
AR Path="/57B0A0EC/57B09964" Ref="#PWR033"  Part="1" 
AR Path="/57B0A102/57B09964" Ref="#PWR047"  Part="1" 
F 0 "#PWR047" H 4350 3950 50  0001 C CNN
F 1 "+9V" H 4350 4240 50  0000 C CNN
F 2 "" H 4350 4100 50  0000 C CNN
F 3 "" H 4350 4100 50  0000 C CNN
	1    4350 4100
	0    1    1    0   
$EndComp
$Comp
L -9VA #PWR020
U 1 1 57B0999A
P 3450 4100
AR Path="/57B05F2F/57B0999A" Ref="#PWR020"  Part="1" 
AR Path="/57B0A0EC/57B0999A" Ref="#PWR034"  Part="1" 
AR Path="/57B0A102/57B0999A" Ref="#PWR048"  Part="1" 
F 0 "#PWR048" H 3450 3975 50  0001 C CNN
F 1 "-9VA" H 3450 4250 50  0000 C CNN
F 2 "" H 3450 4100 50  0000 C CNN
F 3 "" H 3450 4100 50  0000 C CNN
	1    3450 4100
	0    -1   -1   0   
$EndComp
$Comp
L C_Small C2
U 1 1 57B09ACF
P 1750 3000
AR Path="/57B05F2F/57B09ACF" Ref="C2"  Part="1" 
AR Path="/57B0A0EC/57B09ACF" Ref="C8"  Part="1" 
AR Path="/57B0A102/57B09ACF" Ref="C14"  Part="1" 
F 0 "C14" H 1760 3070 50  0000 L CNN
F 1 "100n" H 1760 2920 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 1750 3000 50  0001 C CNN
F 3 "" H 1750 3000 50  0000 C CNN
	1    1750 3000
	1    0    0    -1  
$EndComp
$Comp
L +9V #PWR021
U 1 1 57B09B4C
P 1750 2900
AR Path="/57B05F2F/57B09B4C" Ref="#PWR021"  Part="1" 
AR Path="/57B0A0EC/57B09B4C" Ref="#PWR035"  Part="1" 
AR Path="/57B0A102/57B09B4C" Ref="#PWR049"  Part="1" 
F 0 "#PWR049" H 1750 2750 50  0001 C CNN
F 1 "+9V" H 1750 3040 50  0000 C CNN
F 2 "" H 1750 2900 50  0000 C CNN
F 3 "" H 1750 2900 50  0000 C CNN
	1    1750 2900
	1    0    0    -1  
$EndComp
$Comp
L C_Small C3
U 1 1 57B09BB8
P 1750 3300
AR Path="/57B05F2F/57B09BB8" Ref="C3"  Part="1" 
AR Path="/57B0A0EC/57B09BB8" Ref="C9"  Part="1" 
AR Path="/57B0A102/57B09BB8" Ref="C15"  Part="1" 
F 0 "C15" H 1760 3370 50  0000 L CNN
F 1 "100n" H 1760 3220 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 1750 3300 50  0001 C CNN
F 3 "" H 1750 3300 50  0000 C CNN
	1    1750 3300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR022
U 1 1 57B09C9C
P 1600 3150
AR Path="/57B05F2F/57B09C9C" Ref="#PWR022"  Part="1" 
AR Path="/57B0A0EC/57B09C9C" Ref="#PWR036"  Part="1" 
AR Path="/57B0A102/57B09C9C" Ref="#PWR050"  Part="1" 
F 0 "#PWR050" H 1600 2900 50  0001 C CNN
F 1 "GND" H 1600 3000 50  0000 C CNN
F 2 "" H 1600 3150 50  0000 C CNN
F 3 "" H 1600 3150 50  0000 C CNN
	1    1600 3150
	0    1    1    0   
$EndComp
$Comp
L -9VA #PWR023
U 1 1 57B09D8D
P 1750 3400
AR Path="/57B05F2F/57B09D8D" Ref="#PWR023"  Part="1" 
AR Path="/57B0A0EC/57B09D8D" Ref="#PWR037"  Part="1" 
AR Path="/57B0A102/57B09D8D" Ref="#PWR051"  Part="1" 
F 0 "#PWR051" H 1750 3275 50  0001 C CNN
F 1 "-9VA" H 1750 3550 50  0000 C CNN
F 2 "" H 1750 3400 50  0000 C CNN
F 3 "" H 1750 3400 50  0000 C CNN
	1    1750 3400
	-1   0    0    1   
$EndComp
Text GLabel 4700 4000 2    60   Input ~ 0
REF
Text GLabel 3200 4200 0    60   Input ~ 0
A0
Text GLabel 3200 4300 0    60   Input ~ 0
A1
$Comp
L GND #PWR024
U 1 1 57B0A513
P 3200 4000
AR Path="/57B05F2F/57B0A513" Ref="#PWR024"  Part="1" 
AR Path="/57B0A0EC/57B0A513" Ref="#PWR038"  Part="1" 
AR Path="/57B0A102/57B0A513" Ref="#PWR052"  Part="1" 
F 0 "#PWR052" H 3200 3750 50  0001 C CNN
F 1 "GND" H 3200 3850 50  0000 C CNN
F 2 "" H 3200 4000 50  0000 C CNN
F 3 "" H 3200 4000 50  0000 C CNN
	1    3200 4000
	0    1    1    0   
$EndComp
Text HLabel 4700 4200 2    60   Input ~ 0
OUT
$Comp
L -9VA #PWR025
U 1 1 57B0A757
P 4350 4300
AR Path="/57B05F2F/57B0A757" Ref="#PWR025"  Part="1" 
AR Path="/57B0A0EC/57B0A757" Ref="#PWR039"  Part="1" 
AR Path="/57B0A102/57B0A757" Ref="#PWR053"  Part="1" 
F 0 "#PWR053" H 4350 4175 50  0001 C CNN
F 1 "-9VA" H 4350 4450 50  0000 C CNN
F 2 "" H 4350 4300 50  0000 C CNN
F 3 "" H 4350 4300 50  0000 C CNN
	1    4350 4300
	0    1    1    0   
$EndComp
$Comp
L C_Small C19
U 1 1 57B0C754
P 7450 4400
AR Path="/57B05F2F/57B0C754" Ref="C19"  Part="1" 
AR Path="/57B0A0EC/57B0C754" Ref="C20"  Part="1" 
AR Path="/57B0A102/57B0C754" Ref="C21"  Part="1" 
F 0 "C21" H 7460 4470 50  0000 L CNN
F 1 "0p" H 7460 4320 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 7450 4400 50  0001 C CNN
F 3 "" H 7450 4400 50  0000 C CNN
	1    7450 4400
	1    0    0    -1  
$EndComp
$Comp
L R_Small R15
U 1 1 57B0C820
P 7300 4400
AR Path="/57B05F2F/57B0C820" Ref="R15"  Part="1" 
AR Path="/57B0A0EC/57B0C820" Ref="R16"  Part="1" 
AR Path="/57B0A102/57B0C820" Ref="R17"  Part="1" 
F 0 "R17" H 7350 4450 50  0000 L CNN
F 1 "1T" H 7350 4350 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" H 7300 4400 50  0001 C CNN
F 3 "" H 7300 4400 50  0000 C CNN
	1    7300 4400
	-1   0    0    1   
$EndComp
Wire Wire Line
	6200 3500 6200 3600
Connection ~ 6200 3500
Wire Wire Line
	6150 3200 6700 3200
Wire Wire Line
	6200 2700 6200 3200
Wire Wire Line
	5150 3350 5150 2700
Wire Wire Line
	3250 3350 5250 3350
Wire Wire Line
	3250 3900 3450 3900
Wire Wire Line
	3250 3350 3250 3900
Connection ~ 5150 3350
Wire Wire Line
	5800 2700 6200 2700
Wire Wire Line
	5150 2700 5600 2700
Wire Wire Line
	6700 3200 6700 3150
Connection ~ 6200 3200
Wire Wire Line
	6150 3500 6700 3500
Wire Wire Line
	6700 3500 6700 3550
Wire Wire Line
	6800 3150 6800 3550
Wire Wire Line
	6800 3350 7350 3350
Connection ~ 6800 3350
Wire Wire Line
	5800 2450 5850 2450
Wire Wire Line
	5850 2450 5850 2700
Connection ~ 5850 2700
Wire Wire Line
	5600 2450 5550 2450
Wire Wire Line
	5550 2450 5550 2700
Connection ~ 5550 2700
Wire Wire Line
	6200 3800 6200 3850
Wire Wire Line
	6200 3850 6400 3850
Wire Wire Line
	6300 3850 6300 3900
Wire Wire Line
	6400 3850 6400 3800
Connection ~ 6300 3850
Wire Wire Line
	6400 3600 6400 3500
Connection ~ 6400 3500
Wire Wire Line
	6200 5600 6200 5700
Connection ~ 6200 5600
Wire Wire Line
	6150 5300 6700 5300
Wire Wire Line
	6200 4800 6200 5300
Wire Wire Line
	5800 4800 6200 4800
Wire Wire Line
	5150 4800 5600 4800
Wire Wire Line
	6700 5300 6700 5250
Connection ~ 6200 5300
Wire Wire Line
	6150 5600 6700 5600
Wire Wire Line
	6700 5600 6700 5650
Wire Wire Line
	6800 5250 6800 5650
Wire Wire Line
	6800 5450 7350 5450
Connection ~ 6800 5450
Wire Wire Line
	5800 4550 5850 4550
Wire Wire Line
	5850 4550 5850 4800
Connection ~ 5850 4800
Wire Wire Line
	5600 4550 5550 4550
Wire Wire Line
	5550 4550 5550 4800
Connection ~ 5550 4800
Wire Wire Line
	6200 5900 6200 5950
Wire Wire Line
	6200 5950 6400 5950
Wire Wire Line
	6300 5950 6300 6000
Wire Wire Line
	6400 5950 6400 5900
Connection ~ 6300 5950
Wire Wire Line
	6400 5700 6400 5600
Connection ~ 6400 5600
Wire Wire Line
	5150 5450 5250 5450
Wire Wire Line
	4350 3900 5150 3900
Connection ~ 5150 4800
Wire Wire Line
	1600 3150 1750 3150
Wire Wire Line
	1750 3100 1750 3200
Connection ~ 1750 3150
Wire Wire Line
	4700 4000 4350 4000
Wire Wire Line
	3200 4300 3450 4300
Wire Wire Line
	3450 4200 3200 4200
Wire Wire Line
	3200 4000 3450 4000
Wire Wire Line
	4350 4200 4700 4200
Wire Wire Line
	7300 4500 7300 5850
Connection ~ 7300 5450
Wire Wire Line
	7300 3350 7300 4300
Connection ~ 7300 3350
Wire Wire Line
	7450 4300 7450 4200
Wire Wire Line
	7450 4200 7300 4200
Connection ~ 7300 4200
Wire Wire Line
	7450 4500 7450 4600
Wire Wire Line
	7450 4600 7300 4600
Connection ~ 7300 4600
Text Notes 7700 4600 0    60   ~ 0
Components not usually installed,\nbut may provide useful pads\nA small capacitor can shunt away large\ndifferential S/U/VHF signals (lander TX)
Text Notes 6650 2600 0    60   ~ 0
Jumpers are used to switch between\ntransimpedance and resistor+buffer mode
$Comp
L CONN_01X02 P31
U 1 1 57E03494
P 4850 3650
AR Path="/57B05F2F/57E03494" Ref="P31"  Part="1" 
AR Path="/57B0A0EC/57E03494" Ref="P33"  Part="1" 
AR Path="/57B0A102/57E03494" Ref="P35"  Part="1" 
F 0 "P35" H 4850 3800 50  0000 C CNN
F 1 "NODIFF" V 4950 3650 50  0000 C CNN
F 2 "SCUBE:solder_bridge_1mm" H 4850 3650 50  0001 C CNN
F 3 "" H 4850 3650 50  0000 C CNN
	1    4850 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4650 3700 4600 3700
Wire Wire Line
	4600 3700 4600 4200
Connection ~ 4600 4200
Wire Wire Line
	4650 3600 4600 3600
Wire Wire Line
	4600 3600 4600 3350
Connection ~ 4600 3350
$Comp
L CONN_01X02 P32
U 1 1 57E037F8
P 7550 5900
AR Path="/57B05F2F/57E037F8" Ref="P32"  Part="1" 
AR Path="/57B0A0EC/57E037F8" Ref="P34"  Part="1" 
AR Path="/57B0A102/57E037F8" Ref="P36"  Part="1" 
F 0 "P36" H 7550 6050 50  0000 C CNN
F 1 "GND_N" V 7650 5900 50  0000 C CNN
F 2 "SCUBE:solder_bridge" H 7550 5900 50  0001 C CNN
F 3 "" H 7550 5900 50  0000 C CNN
	1    7550 5900
	1    0    0    -1  
$EndComp
Wire Wire Line
	7300 5850 7350 5850
$Comp
L GND #PWR026
U 1 1 57E03A85
P 7350 5950
AR Path="/57B05F2F/57E03A85" Ref="#PWR026"  Part="1" 
AR Path="/57B0A0EC/57E03A85" Ref="#PWR040"  Part="1" 
AR Path="/57B0A102/57E03A85" Ref="#PWR054"  Part="1" 
F 0 "#PWR054" H 7350 5700 50  0001 C CNN
F 1 "GND" H 7350 5800 50  0000 C CNN
F 2 "" H 7350 5950 50  0000 C CNN
F 3 "" H 7350 5950 50  0000 C CNN
	1    7350 5950
	0    1    1    0   
$EndComp
Wire Wire Line
	5150 3900 5150 5450
$EndSCHEMATC
