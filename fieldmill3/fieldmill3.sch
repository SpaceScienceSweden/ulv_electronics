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
LIBS:fieldmill3-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
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
L CONN_01X03 P1
U 1 1 57693B01
P 1350 1250
F 0 "P1" H 1350 1450 50  0000 C CNN
F 1 "CONN_01X03" V 1450 1250 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03" H 1350 1250 50  0001 C CNN
F 3 "" H 1350 1250 50  0000 C CNN
	1    1350 1250
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1550 1350 2000 1350
Wire Wire Line
	1550 1150 2000 1150
$Comp
L GND #PWR01
U 1 1 57693E98
P 1550 1250
F 0 "#PWR01" H 1550 1000 50  0001 C CNN
F 1 "GND" H 1550 1100 50  0000 C CNN
F 2 "" H 1550 1250 50  0000 C CNN
F 3 "" H 1550 1250 50  0000 C CNN
	1    1550 1250
	0    -1   -1   0   
$EndComp
$Comp
L C_Small C1
U 1 1 5773D48C
P 2000 1250
F 0 "C1" H 2010 1320 50  0000 L CNN
F 1 "10u" H 2010 1170 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 2000 1250 50  0001 C CNN
F 3 "" H 2000 1250 50  0000 C CNN
	1    2000 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	1900 1500 1900 1350
Connection ~ 1900 1350
Wire Wire Line
	1900 1000 1900 1150
Connection ~ 1900 1150
$Comp
L R_Small R1
U 1 1 5773D5D4
P 3350 2350
F 0 "R1" H 3380 2370 50  0000 L CNN
F 1 "10M" H 3380 2310 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 3350 2350 50  0001 C CNN
F 3 "" H 3350 2350 50  0000 C CNN
	1    3350 2350
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR02
U 1 1 5773D86D
P 3350 2450
F 0 "#PWR02" H 3350 2200 50  0001 C CNN
F 1 "GND" H 3350 2300 50  0000 C CNN
F 2 "" H 3350 2450 50  0000 C CNN
F 3 "" H 3350 2450 50  0000 C CNN
	1    3350 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	3050 2150 3750 2150
Wire Wire Line
	3350 2150 3350 2250
Connection ~ 3350 2150
Text Label 3050 2150 0    60   ~ 0
SENSOR1
$Comp
L CONN_01X06 P2
U 1 1 5773E1D1
P 10750 3350
F 0 "P2" H 10750 3700 50  0000 C CNN
F 1 "CONN_01X06" V 10850 3350 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x06" H 10750 3350 50  0001 C CNN
F 3 "" H 10750 3350 50  0000 C CNN
	1    10750 3350
	1    0    0    -1  
$EndComp
$Comp
L MAX4238 U1
U 1 1 5773E54F
P 4250 2000
F 0 "U1" H 4250 2350 60  0000 C CNN
F 1 "MAX4238" H 4250 2250 60  0000 C CNN
F 2 "SMD_Packages:SOIC-8-N" H 4250 2000 60  0001 C CNN
F 3 "" H 4250 2000 60  0000 C CNN
	1    4250 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	3550 2050 3750 2050
Wire Wire Line
	3550 1500 3550 2050
Wire Wire Line
	5200 1500 5200 3100
Wire Wire Line
	5200 2150 4750 2150
$Comp
L VDD #PWR03
U 1 1 5773E6A5
P 1900 1000
F 0 "#PWR03" H 1900 850 50  0001 C CNN
F 1 "VDD" H 1900 1150 50  0000 C CNN
F 2 "" H 1900 1000 50  0000 C CNN
F 3 "" H 1900 1000 50  0000 C CNN
	1    1900 1000
	1    0    0    -1  
$EndComp
$Comp
L VSS #PWR04
U 1 1 5773E6C3
P 1900 1500
F 0 "#PWR04" H 1900 1350 50  0001 C CNN
F 1 "VSS" H 1900 1650 50  0000 C CNN
F 2 "" H 1900 1500 50  0000 C CNN
F 3 "" H 1900 1500 50  0000 C CNN
	1    1900 1500
	-1   0    0    1   
$EndComp
Text Notes 1050 950  0    60   ~ 0
Power: +-2.5 V
$Comp
L C_Small C2
U 1 1 5773E78A
P 4050 2550
F 0 "C2" H 4060 2620 50  0000 L CNN
F 1 "100n" H 4060 2470 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 4050 2550 50  0001 C CNN
F 3 "" H 4050 2550 50  0000 C CNN
	1    4050 2550
	0    1    1    0   
$EndComp
$Comp
L VDD #PWR05
U 1 1 5773E7BF
P 3750 1850
F 0 "#PWR05" H 3750 1700 50  0001 C CNN
F 1 "VDD" H 3750 2000 50  0000 C CNN
F 2 "" H 3750 1850 50  0000 C CNN
F 3 "" H 3750 1850 50  0000 C CNN
	1    3750 1850
	0    -1   -1   0   
$EndComp
$Comp
L VDD #PWR06
U 1 1 5773E7EB
P 4900 1850
F 0 "#PWR06" H 4900 1700 50  0001 C CNN
F 1 "VDD" H 4900 2000 50  0000 C CNN
F 2 "" H 4900 1850 50  0000 C CNN
F 3 "" H 4900 1850 50  0000 C CNN
	1    4900 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	4900 1950 4750 1950
Connection ~ 4900 1950
Wire Wire Line
	3950 2550 3700 2550
Wire Wire Line
	3700 2350 3700 2650
Wire Wire Line
	3700 2350 3750 2350
$Comp
L VSS #PWR07
U 1 1 5773E858
P 3700 2650
F 0 "#PWR07" H 3700 2500 50  0001 C CNN
F 1 "VSS" H 3700 2800 50  0000 C CNN
F 2 "" H 3700 2650 50  0000 C CNN
F 3 "" H 3700 2650 50  0000 C CNN
	1    3700 2650
	-1   0    0    1   
$EndComp
Connection ~ 3700 2550
$Comp
L R_Small R3
U 1 1 5773E90F
P 4300 1500
F 0 "R3" H 4330 1520 50  0000 L CNN
F 1 "100k" H 4330 1460 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 4300 1500 50  0001 C CNN
F 3 "" H 4300 1500 50  0000 C CNN
	1    4300 1500
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4400 1500 5200 1500
Wire Wire Line
	3450 1500 4200 1500
$Comp
L R_Small R2
U 1 1 5773EA03
P 3350 1500
F 0 "R2" H 3380 1520 50  0000 L CNN
F 1 "10k" H 3380 1460 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 3350 1500 50  0001 C CNN
F 3 "" H 3350 1500 50  0000 C CNN
	1    3350 1500
	0    1    1    0   
$EndComp
Connection ~ 3550 1500
$Comp
L GND #PWR08
U 1 1 5773EA9E
P 3250 1500
F 0 "#PWR08" H 3250 1250 50  0001 C CNN
F 1 "GND" H 3250 1350 50  0000 C CNN
F 2 "" H 3250 1500 50  0000 C CNN
F 3 "" H 3250 1500 50  0000 C CNN
	1    3250 1500
	0    1    1    0   
$EndComp
Text Notes 3500 900  0    60   ~ 0
11x amplification is about what we\ncan handle with 1000 V/m fields
$Comp
L R_Small R8
U 1 1 5773EEC9
P 5600 2350
F 0 "R8" H 5630 2370 50  0000 L CNN
F 1 "10M" H 5630 2310 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 5600 2350 50  0001 C CNN
F 3 "" H 5600 2350 50  0000 C CNN
	1    5600 2350
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR09
U 1 1 5773EECF
P 5600 2450
F 0 "#PWR09" H 5600 2200 50  0001 C CNN
F 1 "GND" H 5600 2300 50  0000 C CNN
F 2 "" H 5600 2450 50  0000 C CNN
F 3 "" H 5600 2450 50  0000 C CNN
	1    5600 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	5300 2150 6000 2150
Wire Wire Line
	5600 2150 5600 2250
Connection ~ 5600 2150
Text Label 5300 2150 0    60   ~ 0
SENSOR2
$Comp
L MAX4238 U2
U 1 1 5773EED9
P 6500 2000
F 0 "U2" H 6500 2350 60  0000 C CNN
F 1 "MAX4238" H 6500 2250 60  0000 C CNN
F 2 "SMD_Packages:SOIC-8-N" H 6500 2000 60  0001 C CNN
F 3 "" H 6500 2000 60  0000 C CNN
	1    6500 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	5800 2050 6000 2050
Wire Wire Line
	5800 1500 5800 2050
Wire Wire Line
	7450 1500 7450 3200
Wire Wire Line
	7450 2150 7000 2150
$Comp
L C_Small C3
U 1 1 5773EEE3
P 6300 2550
F 0 "C3" H 6310 2620 50  0000 L CNN
F 1 "100n" H 6310 2470 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 6300 2550 50  0001 C CNN
F 3 "" H 6300 2550 50  0000 C CNN
	1    6300 2550
	0    1    1    0   
$EndComp
$Comp
L VDD #PWR010
U 1 1 5773EEE9
P 6000 1850
F 0 "#PWR010" H 6000 1700 50  0001 C CNN
F 1 "VDD" H 6000 2000 50  0000 C CNN
F 2 "" H 6000 1850 50  0000 C CNN
F 3 "" H 6000 1850 50  0000 C CNN
	1    6000 1850
	0    -1   -1   0   
$EndComp
$Comp
L VDD #PWR011
U 1 1 5773EEEF
P 7150 1850
F 0 "#PWR011" H 7150 1700 50  0001 C CNN
F 1 "VDD" H 7150 2000 50  0000 C CNN
F 2 "" H 7150 1850 50  0000 C CNN
F 3 "" H 7150 1850 50  0000 C CNN
	1    7150 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	7150 1950 7000 1950
Connection ~ 7150 1950
Wire Wire Line
	6200 2550 5950 2550
Wire Wire Line
	5950 2350 5950 2650
Wire Wire Line
	5950 2350 6000 2350
$Comp
L VSS #PWR012
U 1 1 5773EEFC
P 5950 2650
F 0 "#PWR012" H 5950 2500 50  0001 C CNN
F 1 "VSS" H 5950 2800 50  0000 C CNN
F 2 "" H 5950 2650 50  0000 C CNN
F 3 "" H 5950 2650 50  0000 C CNN
	1    5950 2650
	-1   0    0    1   
$EndComp
Connection ~ 5950 2550
$Comp
L R_Small R5
U 1 1 5773EF03
P 6550 1500
F 0 "R5" H 6580 1520 50  0000 L CNN
F 1 "100k" H 6580 1460 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 6550 1500 50  0001 C CNN
F 3 "" H 6550 1500 50  0000 C CNN
	1    6550 1500
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6650 1500 7450 1500
Wire Wire Line
	5700 1500 6450 1500
$Comp
L R_Small R4
U 1 1 5773EF0B
P 5600 1500
F 0 "R4" H 5630 1520 50  0000 L CNN
F 1 "10k" H 5630 1460 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 5600 1500 50  0001 C CNN
F 3 "" H 5600 1500 50  0000 C CNN
	1    5600 1500
	0    1    1    0   
$EndComp
Connection ~ 5800 1500
$Comp
L GND #PWR013
U 1 1 5773EF12
P 5500 1500
F 0 "#PWR013" H 5500 1250 50  0001 C CNN
F 1 "GND" H 5500 1350 50  0000 C CNN
F 2 "" H 5500 1500 50  0000 C CNN
F 3 "" H 5500 1500 50  0000 C CNN
	1    5500 1500
	0    1    1    0   
$EndComp
$Comp
L R_Small R9
U 1 1 5773F02C
P 7850 2350
F 0 "R9" H 7880 2370 50  0000 L CNN
F 1 "10M" H 7880 2310 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 7850 2350 50  0001 C CNN
F 3 "" H 7850 2350 50  0000 C CNN
	1    7850 2350
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR014
U 1 1 5773F032
P 7850 2450
F 0 "#PWR014" H 7850 2200 50  0001 C CNN
F 1 "GND" H 7850 2300 50  0000 C CNN
F 2 "" H 7850 2450 50  0000 C CNN
F 3 "" H 7850 2450 50  0000 C CNN
	1    7850 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	7550 2150 8250 2150
Wire Wire Line
	7850 2150 7850 2250
Connection ~ 7850 2150
Text Label 7550 2150 0    60   ~ 0
SENSOR3
$Comp
L MAX4238 U3
U 1 1 5773F03C
P 8750 2000
F 0 "U3" H 8750 2350 60  0000 C CNN
F 1 "MAX4238" H 8750 2250 60  0000 C CNN
F 2 "SMD_Packages:SOIC-8-N" H 8750 2000 60  0001 C CNN
F 3 "" H 8750 2000 60  0000 C CNN
	1    8750 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	8050 2050 8250 2050
Wire Wire Line
	8050 1500 8050 2050
Wire Wire Line
	9700 1500 9700 3300
Wire Wire Line
	9700 2150 9250 2150
$Comp
L C_Small C4
U 1 1 5773F046
P 8550 2550
F 0 "C4" H 8560 2620 50  0000 L CNN
F 1 "100n" H 8560 2470 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 8550 2550 50  0001 C CNN
F 3 "" H 8550 2550 50  0000 C CNN
	1    8550 2550
	0    1    1    0   
$EndComp
$Comp
L VDD #PWR015
U 1 1 5773F04C
P 8250 1850
F 0 "#PWR015" H 8250 1700 50  0001 C CNN
F 1 "VDD" H 8250 2000 50  0000 C CNN
F 2 "" H 8250 1850 50  0000 C CNN
F 3 "" H 8250 1850 50  0000 C CNN
	1    8250 1850
	0    -1   -1   0   
$EndComp
$Comp
L VDD #PWR016
U 1 1 5773F052
P 9400 1850
F 0 "#PWR016" H 9400 1700 50  0001 C CNN
F 1 "VDD" H 9400 2000 50  0000 C CNN
F 2 "" H 9400 1850 50  0000 C CNN
F 3 "" H 9400 1850 50  0000 C CNN
	1    9400 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	9400 1950 9250 1950
Connection ~ 9400 1950
Wire Wire Line
	8450 2550 8200 2550
Wire Wire Line
	8200 2350 8200 2650
Wire Wire Line
	8200 2350 8250 2350
$Comp
L VSS #PWR017
U 1 1 5773F05F
P 8200 2650
F 0 "#PWR017" H 8200 2500 50  0001 C CNN
F 1 "VSS" H 8200 2800 50  0000 C CNN
F 2 "" H 8200 2650 50  0000 C CNN
F 3 "" H 8200 2650 50  0000 C CNN
	1    8200 2650
	-1   0    0    1   
$EndComp
Connection ~ 8200 2550
$Comp
L R_Small R7
U 1 1 5773F066
P 8800 1500
F 0 "R7" H 8830 1520 50  0000 L CNN
F 1 "100k" H 8830 1460 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 8800 1500 50  0001 C CNN
F 3 "" H 8800 1500 50  0000 C CNN
	1    8800 1500
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8900 1500 9700 1500
Wire Wire Line
	7950 1500 8700 1500
$Comp
L R_Small R6
U 1 1 5773F06E
P 7850 1500
F 0 "R6" H 7880 1520 50  0000 L CNN
F 1 "10k" H 7880 1460 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 7850 1500 50  0001 C CNN
F 3 "" H 7850 1500 50  0000 C CNN
	1    7850 1500
	0    1    1    0   
$EndComp
Connection ~ 8050 1500
$Comp
L GND #PWR018
U 1 1 5773F075
P 7750 1500
F 0 "#PWR018" H 7750 1250 50  0001 C CNN
F 1 "GND" H 7750 1350 50  0000 C CNN
F 2 "" H 7750 1500 50  0000 C CNN
F 3 "" H 7750 1500 50  0000 C CNN
	1    7750 1500
	0    1    1    0   
$EndComp
$Comp
L R_Small R16
U 1 1 5773FA18
P 3400 4900
F 0 "R16" H 3430 4920 50  0000 L CNN
F 1 "10M" H 3430 4860 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 3400 4900 50  0001 C CNN
F 3 "" H 3400 4900 50  0000 C CNN
	1    3400 4900
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR019
U 1 1 5773FA1E
P 3400 5000
F 0 "#PWR019" H 3400 4750 50  0001 C CNN
F 1 "GND" H 3400 4850 50  0000 C CNN
F 2 "" H 3400 5000 50  0000 C CNN
F 3 "" H 3400 5000 50  0000 C CNN
	1    3400 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	3100 4700 3800 4700
Wire Wire Line
	3400 4700 3400 4800
Connection ~ 3400 4700
Text Label 3100 4700 0    60   ~ 0
SENSOR4
$Comp
L MAX4238 U4
U 1 1 5773FA28
P 4300 4550
F 0 "U4" H 4300 4900 60  0000 C CNN
F 1 "MAX4238" H 4300 4800 60  0000 C CNN
F 2 "SMD_Packages:SOIC-8-N" H 4300 4550 60  0001 C CNN
F 3 "" H 4300 4550 60  0000 C CNN
	1    4300 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	3600 4600 3800 4600
Wire Wire Line
	3600 4050 3600 4600
Wire Wire Line
	5250 3400 5250 4700
Wire Wire Line
	5250 4700 4800 4700
$Comp
L C_Small C5
U 1 1 5773FA32
P 4100 5100
F 0 "C5" H 4110 5170 50  0000 L CNN
F 1 "100n" H 4110 5020 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 4100 5100 50  0001 C CNN
F 3 "" H 4100 5100 50  0000 C CNN
	1    4100 5100
	0    1    1    0   
$EndComp
$Comp
L VDD #PWR020
U 1 1 5773FA38
P 3800 4400
F 0 "#PWR020" H 3800 4250 50  0001 C CNN
F 1 "VDD" H 3800 4550 50  0000 C CNN
F 2 "" H 3800 4400 50  0000 C CNN
F 3 "" H 3800 4400 50  0000 C CNN
	1    3800 4400
	0    -1   -1   0   
$EndComp
$Comp
L VDD #PWR021
U 1 1 5773FA3E
P 4950 4400
F 0 "#PWR021" H 4950 4250 50  0001 C CNN
F 1 "VDD" H 4950 4550 50  0000 C CNN
F 2 "" H 4950 4400 50  0000 C CNN
F 3 "" H 4950 4400 50  0000 C CNN
	1    4950 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	4950 4500 4800 4500
Connection ~ 4950 4500
Wire Wire Line
	4000 5100 3750 5100
Wire Wire Line
	3750 4900 3750 5200
Wire Wire Line
	3750 4900 3800 4900
$Comp
L VSS #PWR022
U 1 1 5773FA4B
P 3750 5200
F 0 "#PWR022" H 3750 5050 50  0001 C CNN
F 1 "VSS" H 3750 5350 50  0000 C CNN
F 2 "" H 3750 5200 50  0000 C CNN
F 3 "" H 3750 5200 50  0000 C CNN
	1    3750 5200
	-1   0    0    1   
$EndComp
Connection ~ 3750 5100
$Comp
L R_Small R11
U 1 1 5773FA52
P 4350 4050
F 0 "R11" H 4380 4070 50  0000 L CNN
F 1 "100k" H 4380 4010 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 4350 4050 50  0001 C CNN
F 3 "" H 4350 4050 50  0000 C CNN
	1    4350 4050
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4450 4050 5250 4050
Wire Wire Line
	3500 4050 4250 4050
$Comp
L R_Small R10
U 1 1 5773FA5A
P 3400 4050
F 0 "R10" H 3430 4070 50  0000 L CNN
F 1 "10k" H 3430 4010 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 3400 4050 50  0001 C CNN
F 3 "" H 3400 4050 50  0000 C CNN
	1    3400 4050
	0    1    1    0   
$EndComp
Connection ~ 3600 4050
$Comp
L GND #PWR023
U 1 1 5773FA61
P 3300 4050
F 0 "#PWR023" H 3300 3800 50  0001 C CNN
F 1 "GND" H 3300 3900 50  0000 C CNN
F 2 "" H 3300 4050 50  0000 C CNN
F 3 "" H 3300 4050 50  0000 C CNN
	1    3300 4050
	0    1    1    0   
$EndComp
$Comp
L R_Small R17
U 1 1 5773FA67
P 5650 4900
F 0 "R17" H 5680 4920 50  0000 L CNN
F 1 "10M" H 5680 4860 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 5650 4900 50  0001 C CNN
F 3 "" H 5650 4900 50  0000 C CNN
	1    5650 4900
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR024
U 1 1 5773FA6D
P 5650 5000
F 0 "#PWR024" H 5650 4750 50  0001 C CNN
F 1 "GND" H 5650 4850 50  0000 C CNN
F 2 "" H 5650 5000 50  0000 C CNN
F 3 "" H 5650 5000 50  0000 C CNN
	1    5650 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	5350 4700 6050 4700
Wire Wire Line
	5650 4700 5650 4800
Connection ~ 5650 4700
Text Label 5350 4700 0    60   ~ 0
SENSOR5
$Comp
L MAX4238 U5
U 1 1 5773FA77
P 6550 4550
F 0 "U5" H 6550 4900 60  0000 C CNN
F 1 "MAX4238" H 6550 4800 60  0000 C CNN
F 2 "SMD_Packages:SOIC-8-N" H 6550 4550 60  0001 C CNN
F 3 "" H 6550 4550 60  0000 C CNN
	1    6550 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	5850 4600 6050 4600
Wire Wire Line
	5850 4050 5850 4600
Wire Wire Line
	7500 3500 7500 4700
Wire Wire Line
	7500 4700 7050 4700
$Comp
L C_Small C6
U 1 1 5773FA81
P 6350 5100
F 0 "C6" H 6360 5170 50  0000 L CNN
F 1 "100n" H 6360 5020 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 6350 5100 50  0001 C CNN
F 3 "" H 6350 5100 50  0000 C CNN
	1    6350 5100
	0    1    1    0   
$EndComp
$Comp
L VDD #PWR025
U 1 1 5773FA87
P 6050 4400
F 0 "#PWR025" H 6050 4250 50  0001 C CNN
F 1 "VDD" H 6050 4550 50  0000 C CNN
F 2 "" H 6050 4400 50  0000 C CNN
F 3 "" H 6050 4400 50  0000 C CNN
	1    6050 4400
	0    -1   -1   0   
$EndComp
$Comp
L VDD #PWR026
U 1 1 5773FA8D
P 7200 4400
F 0 "#PWR026" H 7200 4250 50  0001 C CNN
F 1 "VDD" H 7200 4550 50  0000 C CNN
F 2 "" H 7200 4400 50  0000 C CNN
F 3 "" H 7200 4400 50  0000 C CNN
	1    7200 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	7200 4500 7050 4500
Connection ~ 7200 4500
Wire Wire Line
	6250 5100 6000 5100
Wire Wire Line
	6000 4900 6000 5200
Wire Wire Line
	6000 4900 6050 4900
$Comp
L VSS #PWR027
U 1 1 5773FA9A
P 6000 5200
F 0 "#PWR027" H 6000 5050 50  0001 C CNN
F 1 "VSS" H 6000 5350 50  0000 C CNN
F 2 "" H 6000 5200 50  0000 C CNN
F 3 "" H 6000 5200 50  0000 C CNN
	1    6000 5200
	-1   0    0    1   
$EndComp
Connection ~ 6000 5100
$Comp
L R_Small R13
U 1 1 5773FAA1
P 6600 4050
F 0 "R13" H 6630 4070 50  0000 L CNN
F 1 "100k" H 6630 4010 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 6600 4050 50  0001 C CNN
F 3 "" H 6600 4050 50  0000 C CNN
	1    6600 4050
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6700 4050 7500 4050
Wire Wire Line
	5750 4050 6500 4050
$Comp
L R_Small R12
U 1 1 5773FAA9
P 5650 4050
F 0 "R12" H 5680 4070 50  0000 L CNN
F 1 "10k" H 5680 4010 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 5650 4050 50  0001 C CNN
F 3 "" H 5650 4050 50  0000 C CNN
	1    5650 4050
	0    1    1    0   
$EndComp
Connection ~ 5850 4050
$Comp
L GND #PWR028
U 1 1 5773FAB0
P 5550 4050
F 0 "#PWR028" H 5550 3800 50  0001 C CNN
F 1 "GND" H 5550 3900 50  0000 C CNN
F 2 "" H 5550 4050 50  0000 C CNN
F 3 "" H 5550 4050 50  0000 C CNN
	1    5550 4050
	0    1    1    0   
$EndComp
$Comp
L R_Small R18
U 1 1 5773FAB6
P 7900 4900
F 0 "R18" H 7930 4920 50  0000 L CNN
F 1 "10M" H 7930 4860 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 7900 4900 50  0001 C CNN
F 3 "" H 7900 4900 50  0000 C CNN
	1    7900 4900
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR029
U 1 1 5773FABC
P 7900 5000
F 0 "#PWR029" H 7900 4750 50  0001 C CNN
F 1 "GND" H 7900 4850 50  0000 C CNN
F 2 "" H 7900 5000 50  0000 C CNN
F 3 "" H 7900 5000 50  0000 C CNN
	1    7900 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	7600 4700 8300 4700
Wire Wire Line
	7900 4700 7900 4800
Connection ~ 7900 4700
Text Label 7600 4700 0    60   ~ 0
SENSOR6
$Comp
L MAX4238 U6
U 1 1 5773FAC6
P 8800 4550
F 0 "U6" H 8800 4900 60  0000 C CNN
F 1 "MAX4238" H 8800 4800 60  0000 C CNN
F 2 "SMD_Packages:SOIC-8-N" H 8800 4550 60  0001 C CNN
F 3 "" H 8800 4550 60  0000 C CNN
	1    8800 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	8100 4600 8300 4600
Wire Wire Line
	8100 4050 8100 4600
Wire Wire Line
	9750 3600 9750 4700
Wire Wire Line
	9750 4700 9300 4700
$Comp
L C_Small C7
U 1 1 5773FAD0
P 8600 5100
F 0 "C7" H 8610 5170 50  0000 L CNN
F 1 "100n" H 8610 5020 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 8600 5100 50  0001 C CNN
F 3 "" H 8600 5100 50  0000 C CNN
	1    8600 5100
	0    1    1    0   
$EndComp
$Comp
L VDD #PWR030
U 1 1 5773FAD6
P 8300 4400
F 0 "#PWR030" H 8300 4250 50  0001 C CNN
F 1 "VDD" H 8300 4550 50  0000 C CNN
F 2 "" H 8300 4400 50  0000 C CNN
F 3 "" H 8300 4400 50  0000 C CNN
	1    8300 4400
	0    -1   -1   0   
$EndComp
$Comp
L VDD #PWR031
U 1 1 5773FADC
P 9450 4400
F 0 "#PWR031" H 9450 4250 50  0001 C CNN
F 1 "VDD" H 9450 4550 50  0000 C CNN
F 2 "" H 9450 4400 50  0000 C CNN
F 3 "" H 9450 4400 50  0000 C CNN
	1    9450 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	9450 4500 9300 4500
Connection ~ 9450 4500
Wire Wire Line
	8500 5100 8250 5100
Wire Wire Line
	8250 4900 8250 5200
Wire Wire Line
	8250 4900 8300 4900
$Comp
L VSS #PWR032
U 1 1 5773FAE9
P 8250 5200
F 0 "#PWR032" H 8250 5050 50  0001 C CNN
F 1 "VSS" H 8250 5350 50  0000 C CNN
F 2 "" H 8250 5200 50  0000 C CNN
F 3 "" H 8250 5200 50  0000 C CNN
	1    8250 5200
	-1   0    0    1   
$EndComp
Connection ~ 8250 5100
$Comp
L R_Small R15
U 1 1 5773FAF0
P 8850 4050
F 0 "R15" H 8880 4070 50  0000 L CNN
F 1 "100k" H 8880 4010 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 8850 4050 50  0001 C CNN
F 3 "" H 8850 4050 50  0000 C CNN
	1    8850 4050
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8950 4050 9750 4050
Wire Wire Line
	8000 4050 8750 4050
$Comp
L R_Small R14
U 1 1 5773FAF8
P 7900 4050
F 0 "R14" H 7930 4070 50  0000 L CNN
F 1 "10k" H 7930 4010 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 7900 4050 50  0001 C CNN
F 3 "" H 7900 4050 50  0000 C CNN
	1    7900 4050
	0    1    1    0   
$EndComp
Connection ~ 8100 4050
$Comp
L GND #PWR033
U 1 1 5773FAFF
P 7800 4050
F 0 "#PWR033" H 7800 3800 50  0001 C CNN
F 1 "GND" H 7800 3900 50  0000 C CNN
F 2 "" H 7800 4050 50  0000 C CNN
F 3 "" H 7800 4050 50  0000 C CNN
	1    7800 4050
	0    1    1    0   
$EndComp
Wire Wire Line
	5200 3100 10550 3100
Connection ~ 5200 2150
Wire Wire Line
	7450 3200 10550 3200
Connection ~ 7450 2150
Wire Wire Line
	9700 3300 10550 3300
Connection ~ 9700 2150
Wire Wire Line
	5250 3400 10550 3400
Connection ~ 5250 4050
Wire Wire Line
	7500 3500 10550 3500
Connection ~ 7500 4050
Wire Wire Line
	9750 3600 10550 3600
Connection ~ 9750 4050
Text Label 3550 2000 1    60   ~ 0
GRD1
Text Label 5800 2000 1    60   ~ 0
GRD2
Text Label 8050 2000 1    60   ~ 0
GRD3
Text Label 3600 4550 1    60   ~ 0
GRD4
Text Label 5850 4550 1    60   ~ 0
GRD5
Text Label 8100 4550 1    60   ~ 0
GRD6
$Comp
L C_Small C8
U 1 1 5774053D
P 4450 2550
F 0 "C8" H 4460 2620 50  0000 L CNN
F 1 "100n" H 4460 2470 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 4450 2550 50  0001 C CNN
F 3 "" H 4450 2550 50  0000 C CNN
	1    4450 2550
	0    1    1    0   
$EndComp
Wire Wire Line
	4150 2550 4350 2550
Wire Wire Line
	4900 2550 4550 2550
$Comp
L GND #PWR034
U 1 1 5774072A
P 4250 2650
F 0 "#PWR034" H 4250 2400 50  0001 C CNN
F 1 "GND" H 4250 2500 50  0000 C CNN
F 2 "" H 4250 2650 50  0000 C CNN
F 3 "" H 4250 2650 50  0000 C CNN
	1    4250 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4250 2650 4250 2550
Connection ~ 4250 2550
$Comp
L C_Small C9
U 1 1 5774093D
P 6700 2550
F 0 "C9" H 6710 2620 50  0000 L CNN
F 1 "100n" H 6710 2470 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 6700 2550 50  0001 C CNN
F 3 "" H 6700 2550 50  0000 C CNN
	1    6700 2550
	0    1    1    0   
$EndComp
$Comp
L GND #PWR035
U 1 1 577409CC
P 6500 2650
F 0 "#PWR035" H 6500 2400 50  0001 C CNN
F 1 "GND" H 6500 2500 50  0000 C CNN
F 2 "" H 6500 2650 50  0000 C CNN
F 3 "" H 6500 2650 50  0000 C CNN
	1    6500 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	6400 2550 6600 2550
Wire Wire Line
	7150 2550 6800 2550
Wire Wire Line
	6500 2650 6500 2550
Connection ~ 6500 2550
$Comp
L C_Small C10
U 1 1 57740DC2
P 8950 2550
F 0 "C10" H 8960 2620 50  0000 L CNN
F 1 "100n" H 8960 2470 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 8950 2550 50  0001 C CNN
F 3 "" H 8950 2550 50  0000 C CNN
	1    8950 2550
	0    1    1    0   
$EndComp
$Comp
L GND #PWR036
U 1 1 57740E56
P 8750 2650
F 0 "#PWR036" H 8750 2400 50  0001 C CNN
F 1 "GND" H 8750 2500 50  0000 C CNN
F 2 "" H 8750 2650 50  0000 C CNN
F 3 "" H 8750 2650 50  0000 C CNN
	1    8750 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	8650 2550 8850 2550
Wire Wire Line
	9400 2550 9050 2550
Wire Wire Line
	8750 2650 8750 2550
Connection ~ 8750 2550
$Comp
L C_Small C11
U 1 1 577412D3
P 4500 5100
F 0 "C11" H 4510 5170 50  0000 L CNN
F 1 "100n" H 4510 5020 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 4500 5100 50  0001 C CNN
F 3 "" H 4500 5100 50  0000 C CNN
	1    4500 5100
	0    1    1    0   
$EndComp
$Comp
L GND #PWR037
U 1 1 57741362
P 4300 5200
F 0 "#PWR037" H 4300 4950 50  0001 C CNN
F 1 "GND" H 4300 5050 50  0000 C CNN
F 2 "" H 4300 5200 50  0000 C CNN
F 3 "" H 4300 5200 50  0000 C CNN
	1    4300 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	4200 5100 4400 5100
Wire Wire Line
	4950 5100 4600 5100
Wire Wire Line
	4300 5200 4300 5100
Connection ~ 4300 5100
$Comp
L C_Small C12
U 1 1 5774178C
P 6750 5100
F 0 "C12" H 6760 5170 50  0000 L CNN
F 1 "100n" H 6760 5020 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 6750 5100 50  0001 C CNN
F 3 "" H 6750 5100 50  0000 C CNN
	1    6750 5100
	0    1    1    0   
$EndComp
Wire Wire Line
	6450 5100 6650 5100
Wire Wire Line
	7200 5100 6850 5100
$Comp
L GND #PWR038
U 1 1 577419AB
P 6550 5200
F 0 "#PWR038" H 6550 4950 50  0001 C CNN
F 1 "GND" H 6550 5050 50  0000 C CNN
F 2 "" H 6550 5200 50  0000 C CNN
F 3 "" H 6550 5200 50  0000 C CNN
	1    6550 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	6550 5200 6550 5100
Connection ~ 6550 5100
$Comp
L C_Small C13
U 1 1 57741BF6
P 9000 5100
F 0 "C13" H 9010 5170 50  0000 L CNN
F 1 "100n" H 9010 5020 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 9000 5100 50  0001 C CNN
F 3 "" H 9000 5100 50  0000 C CNN
	1    9000 5100
	0    1    1    0   
$EndComp
Wire Wire Line
	8700 5100 8900 5100
Wire Wire Line
	9450 5100 9100 5100
$Comp
L GND #PWR039
U 1 1 57741E1B
P 8800 5200
F 0 "#PWR039" H 8800 4950 50  0001 C CNN
F 1 "GND" H 8800 5050 50  0000 C CNN
F 2 "" H 8800 5200 50  0000 C CNN
F 3 "" H 8800 5200 50  0000 C CNN
	1    8800 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	8800 5200 8800 5100
Connection ~ 8800 5100
Wire Wire Line
	4900 1850 4900 2550
Wire Wire Line
	7150 2550 7150 1850
Wire Wire Line
	9400 2550 9400 1850
Wire Wire Line
	9450 4400 9450 5100
Wire Wire Line
	7200 4400 7200 5100
Wire Wire Line
	4950 4400 4950 5100
$EndSCHEMATC