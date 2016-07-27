EESchema Schematic File Version 2
LIBS:ulv_esc-rescue
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
LIBS:ulv_esc-cache
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
L DRV10983 U1
U 1 1 578CBFBB
P 5900 2200
F 0 "U1" H 5900 1500 60  0000 C CNN
F 1 "DRV10983" H 5900 2900 60  0000 C CNN
F 2 "Housings_SSOP:TSSOP-24_4.4x7.8mm_Pitch0.65mm" H 5900 2450 60  0001 C CNN
F 3 "" H 5900 2450 60  0000 C CNN
	1    5900 2200
	1    0    0    -1  
$EndComp
$Comp
L C_Small C1
U 1 1 578CBFF7
P 5150 1450
F 0 "C1" H 5160 1520 50  0000 L CNN
F 1 "0.1 uF" H 5160 1370 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 5150 1450 50  0001 C CNN
F 3 "" H 5150 1450 50  0000 C CNN
	1    5150 1450
	1    0    0    -1  
$EndComp
$Comp
L C_Small C3
U 1 1 578CC03A
P 4800 1750
F 0 "C3" V 4850 1800 50  0000 L CNN
F 1 "0.1 uF" V 4850 1450 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 4800 1750 50  0001 C CNN
F 3 "" H 4800 1750 50  0000 C CNN
	1    4800 1750
	0    -1   -1   0   
$EndComp
$Comp
L L_Small L1
U 1 1 578CC11C
P 4950 1950
F 0 "L1" V 5000 2050 50  0000 L CNN
F 1 "47 uH" V 4900 1850 50  0000 L CNN
F 2 "Capacitors_SMD:C_1812_HandSoldering" H 4950 1950 50  0001 C CNN
F 3 "" H 4950 1950 50  0000 C CNN
	1    4950 1950
	0    1    1    0   
$EndComp
$Comp
L C_Small C4
U 1 1 578CC1BF
P 4300 1950
F 0 "C4" V 4350 2000 50  0000 L CNN
F 1 "10 uF" V 4350 1700 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 4300 1950 50  0001 C CNN
F 3 "" H 4300 1950 50  0000 C CNN
	1    4300 1950
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR01
U 1 1 578CC225
P 4200 2150
F 0 "#PWR01" H 4200 1900 50  0001 C CNN
F 1 "GND" H 4200 2000 50  0000 C CNN
F 2 "" H 4200 2150 50  0000 C CNN
F 3 "" H 4200 2150 50  0000 C CNN
	1    4200 2150
	1    0    0    -1  
$EndComp
$Comp
L C_Small C5
U 1 1 578CC28E
P 4800 2250
F 0 "C5" V 4750 2300 50  0000 L CNN
F 1 "1 uF" V 4750 2050 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 4800 2250 50  0001 C CNN
F 3 "" H 4800 2250 50  0000 C CNN
	1    4800 2250
	0    1    1    0   
$EndComp
$Comp
L GND #PWR02
U 1 1 578CC307
P 4200 2450
F 0 "#PWR02" H 4200 2200 50  0001 C CNN
F 1 "GND" H 4200 2300 50  0000 C CNN
F 2 "" H 4200 2450 50  0000 C CNN
F 3 "" H 4200 2450 50  0000 C CNN
	1    4200 2450
	1    0    0    -1  
$EndComp
$Comp
L C_Small C6
U 1 1 578CC363
P 4700 2450
F 0 "C6" V 4750 2500 50  0000 L CNN
F 1 "1 uF" V 4750 2250 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 4700 2450 50  0001 C CNN
F 3 "" H 4700 2450 50  0000 C CNN
	1    4700 2450
	0    1    1    0   
$EndComp
$Comp
L GND #PWR03
U 1 1 578CC5C4
P 6950 2550
F 0 "#PWR03" H 6950 2300 50  0001 C CNN
F 1 "GND" H 6950 2400 50  0000 C CNN
F 2 "" H 6950 2550 50  0000 C CNN
F 3 "" H 6950 2550 50  0000 C CNN
	1    6950 2550
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR04
U 1 1 578CC634
P 7400 1650
F 0 "#PWR04" H 7400 1400 50  0001 C CNN
F 1 "GND" H 7400 1500 50  0000 C CNN
F 2 "" H 7400 1650 50  0000 C CNN
F 3 "" H 7400 1650 50  0000 C CNN
	1    7400 1650
	0    -1   -1   0   
$EndComp
$Comp
L C_Small C2
U 1 1 578CC654
P 7150 1650
F 0 "C2" V 7200 1700 50  0000 L CNN
F 1 "10 uF" V 7200 1400 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 7150 1650 50  0001 C CNN
F 3 "" H 7150 1650 50  0000 C CNN
	1    7150 1650
	0    -1   -1   0   
$EndComp
$Comp
L SCUBE40-RESCUE-ulv_esc P1
U 2 1 578CC8D9
P 10950 4600
F 0 "P1" H 10900 3600 60  0000 C CNN
F 1 "SCUBE40" H 10900 5950 60  0000 C CNN
F 2 "scube:scube40_no_holes_esc" H 10850 4450 60  0001 C CNN
F 3 "" H 10850 4450 60  0000 C CNN
	2    10950 4600
	1    0    0    -1  
$EndComp
$Comp
L SCUBE40-RESCUE-ulv_esc P1
U 1 1 578CC9D1
P 750 4600
F 0 "P1" H 700 3600 60  0000 C CNN
F 1 "SCUBE40" H 700 5950 60  0000 C CNN
F 2 "scube:scube40_no_holes_esc" H 650 4450 60  0001 C CNN
F 3 "" H 650 4450 60  0000 C CNN
	1    750  4600
	-1   0    0    -1  
$EndComp
$Comp
L GND #PWR05
U 1 1 578CD507
P 1400 4100
F 0 "#PWR05" H 1400 3850 50  0001 C CNN
F 1 "GND" H 1400 3950 50  0000 C CNN
F 2 "" H 1400 4100 50  0000 C CNN
F 3 "" H 1400 4100 50  0000 C CNN
	1    1400 4100
	-1   0    0    1   
$EndComp
NoConn ~ 1200 5400
NoConn ~ 1200 5300
NoConn ~ 1200 5200
NoConn ~ 1200 5100
NoConn ~ 1200 5000
NoConn ~ 1200 4900
NoConn ~ 1200 4800
NoConn ~ 1200 4700
NoConn ~ 1200 4600
NoConn ~ 10500 4500
NoConn ~ 10500 4400
NoConn ~ 10500 4300
$Comp
L DRV10983 U2
U 1 1 578CED5C
P 5900 5250
F 0 "U2" H 5900 4550 60  0000 C CNN
F 1 "DRV10983" H 5900 5950 60  0000 C CNN
F 2 "Housings_SSOP:TSSOP-24_4.4x7.8mm_Pitch0.65mm" H 5900 5500 60  0001 C CNN
F 3 "" H 5900 5500 60  0000 C CNN
	1    5900 5250
	1    0    0    -1  
$EndComp
$Comp
L C_Small C7
U 1 1 578CED62
P 5150 4500
F 0 "C7" H 5160 4570 50  0000 L CNN
F 1 "0.1 uF" H 5160 4420 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 5150 4500 50  0001 C CNN
F 3 "" H 5150 4500 50  0000 C CNN
	1    5150 4500
	1    0    0    -1  
$EndComp
$Comp
L C_Small C9
U 1 1 578CED68
P 4800 4800
F 0 "C9" V 4850 4850 50  0000 L CNN
F 1 "0.1 uF" V 4850 4500 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 4800 4800 50  0001 C CNN
F 3 "" H 4800 4800 50  0000 C CNN
	1    4800 4800
	0    -1   -1   0   
$EndComp
$Comp
L L_Small L2
U 1 1 578CED79
P 4950 5000
F 0 "L2" V 5000 5100 50  0000 L CNN
F 1 "47 uH" V 4900 4900 50  0000 L CNN
F 2 "Capacitors_SMD:C_1812_HandSoldering" H 4950 5000 50  0001 C CNN
F 3 "" H 4950 5000 50  0000 C CNN
	1    4950 5000
	0    1    1    0   
$EndComp
$Comp
L C_Small C10
U 1 1 578CED81
P 4300 5000
F 0 "C10" V 4350 5050 50  0000 L CNN
F 1 "10 uF" V 4350 4750 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 4300 5000 50  0001 C CNN
F 3 "" H 4300 5000 50  0000 C CNN
	1    4300 5000
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR06
U 1 1 578CED89
P 4200 5200
F 0 "#PWR06" H 4200 4950 50  0001 C CNN
F 1 "GND" H 4200 5050 50  0000 C CNN
F 2 "" H 4200 5200 50  0000 C CNN
F 3 "" H 4200 5200 50  0000 C CNN
	1    4200 5200
	1    0    0    -1  
$EndComp
$Comp
L C_Small C11
U 1 1 578CED95
P 4800 5300
F 0 "C11" V 4750 5350 50  0000 L CNN
F 1 "1 uF" V 4750 5100 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 4800 5300 50  0001 C CNN
F 3 "" H 4800 5300 50  0000 C CNN
	1    4800 5300
	0    1    1    0   
$EndComp
$Comp
L GND #PWR07
U 1 1 578CED9C
P 4200 5500
F 0 "#PWR07" H 4200 5250 50  0001 C CNN
F 1 "GND" H 4200 5350 50  0000 C CNN
F 2 "" H 4200 5500 50  0000 C CNN
F 3 "" H 4200 5500 50  0000 C CNN
	1    4200 5500
	1    0    0    -1  
$EndComp
$Comp
L C_Small C12
U 1 1 578CEDA6
P 4700 5500
F 0 "C12" V 4750 5550 50  0000 L CNN
F 1 "1 uF" V 4750 5300 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 4700 5500 50  0001 C CNN
F 3 "" H 4700 5500 50  0000 C CNN
	1    4700 5500
	0    1    1    0   
$EndComp
$Comp
L GND #PWR08
U 1 1 578CEDB0
P 6950 5600
F 0 "#PWR08" H 6950 5350 50  0001 C CNN
F 1 "GND" H 6950 5450 50  0000 C CNN
F 2 "" H 6950 5600 50  0000 C CNN
F 3 "" H 6950 5600 50  0000 C CNN
	1    6950 5600
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR09
U 1 1 578CEDBA
P 7400 4700
F 0 "#PWR09" H 7400 4450 50  0001 C CNN
F 1 "GND" H 7400 4550 50  0000 C CNN
F 2 "" H 7400 4700 50  0000 C CNN
F 3 "" H 7400 4700 50  0000 C CNN
	1    7400 4700
	0    -1   -1   0   
$EndComp
$Comp
L C_Small C8
U 1 1 578CEDC0
P 7150 4700
F 0 "C8" V 7200 4750 50  0000 L CNN
F 1 "10 uF" V 7200 4450 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 7150 4700 50  0001 C CNN
F 3 "" H 7150 4700 50  0000 C CNN
	1    7150 4700
	0    -1   -1   0   
$EndComp
NoConn ~ 10500 4600
NoConn ~ 1200 4300
NoConn ~ 1200 4200
NoConn ~ 1200 4000
NoConn ~ 1200 3800
NoConn ~ 1200 3700
NoConn ~ 1200 3600
NoConn ~ 1200 3500
NoConn ~ 1200 4100
NoConn ~ 1200 3900
$Comp
L SCUBE40_BOTTOM_HOLES U3
U 1 1 578DF867
P 3100 6050
F 0 "U3" H 3700 5250 60  0000 C CNN
F 1 "SCUBE40_BOTTOM_HOLES" H 2950 5250 60  0000 C CNN
F 2 "scube:scube40_no_holes_esc" H 3100 6050 60  0001 C CNN
F 3 "" H 3100 6050 60  0000 C CNN
	1    3100 6050
	1    0    0    -1  
$EndComp
NoConn ~ 10500 4900
NoConn ~ 10500 4800
NoConn ~ 10500 4700
NoConn ~ 10500 4200
NoConn ~ 10500 4100
NoConn ~ 10500 4000
Wire Wire Line
	5400 1650 5150 1650
Wire Wire Line
	5150 1650 5150 1550
Wire Wire Line
	5150 1350 5150 1300
Wire Wire Line
	5150 1300 6650 1300
Wire Wire Line
	6650 1300 6650 1650
Wire Wire Line
	6400 1650 7050 1650
Wire Wire Line
	6400 1750 6500 1750
Wire Wire Line
	6500 1750 6500 1650
Connection ~ 6500 1650
Wire Wire Line
	4550 1750 4550 1850
Wire Wire Line
	4550 1850 5400 1850
Wire Wire Line
	4550 1750 4700 1750
Wire Wire Line
	4900 1750 5400 1750
Wire Wire Line
	5400 1950 5050 1950
Wire Wire Line
	4400 1950 4850 1950
Wire Wire Line
	4200 1950 4200 2150
Wire Wire Line
	5400 2050 4200 2050
Connection ~ 4200 2050
Wire Wire Line
	4700 1950 4700 2150
Wire Wire Line
	4700 2150 5400 2150
Connection ~ 4700 1950
Wire Wire Line
	5400 2250 4900 2250
Wire Wire Line
	4200 2350 5400 2350
Wire Wire Line
	4200 2350 4200 2450
Wire Wire Line
	4700 2250 4700 2350
Connection ~ 4700 2350
Wire Wire Line
	4550 2350 4550 2450
Wire Wire Line
	4550 2450 4600 2450
Connection ~ 4550 2350
Wire Wire Line
	4800 2450 5400 2450
Wire Wire Line
	6400 2550 6950 2550
Wire Wire Line
	6400 2450 6550 2450
Wire Wire Line
	6550 2450 6550 2550
Connection ~ 6550 2550
Wire Wire Line
	7250 1650 7400 1650
Connection ~ 6650 1650
Wire Wire Line
	6400 2350 7850 2350
Wire Wire Line
	6400 2250 6600 2250
Wire Wire Line
	6600 2250 6600 2350
Connection ~ 6600 2350
Wire Wire Line
	6500 2050 6500 2150
Wire Wire Line
	6500 2050 6400 2050
Wire Wire Line
	6500 2150 6400 2150
Connection ~ 6500 2100
Wire Wire Line
	6400 1850 7650 1850
Wire Wire Line
	6400 1950 6600 1950
Wire Wire Line
	6600 1950 6600 1850
Connection ~ 6600 1850
Wire Wire Line
	5400 2750 5350 2750
Wire Wire Line
	5350 2750 5350 2950
Wire Wire Line
	5400 2650 5250 2650
Wire Wire Line
	5250 2650 5250 3050
Wire Wire Line
	5400 2550 5150 2550
Wire Wire Line
	5150 2550 5150 3200
Wire Wire Line
	5400 4700 5150 4700
Wire Wire Line
	5150 4700 5150 4600
Wire Wire Line
	5150 4400 5150 4350
Wire Wire Line
	5150 4350 6650 4350
Wire Wire Line
	6650 4350 6650 4700
Wire Wire Line
	6400 4700 7050 4700
Wire Wire Line
	6400 4800 6500 4800
Wire Wire Line
	6500 4800 6500 4700
Connection ~ 6500 4700
Wire Wire Line
	4550 4800 4550 4900
Wire Wire Line
	4550 4900 5400 4900
Wire Wire Line
	4550 4800 4700 4800
Wire Wire Line
	4900 4800 5400 4800
Wire Wire Line
	5400 5000 5050 5000
Wire Wire Line
	4400 5000 4850 5000
Wire Wire Line
	4200 5000 4200 5200
Wire Wire Line
	5400 5100 4200 5100
Connection ~ 4200 5100
Wire Wire Line
	4700 5000 4700 5200
Wire Wire Line
	4700 5200 5400 5200
Connection ~ 4700 5000
Wire Wire Line
	5400 5300 4900 5300
Wire Wire Line
	4200 5400 5400 5400
Wire Wire Line
	4200 5400 4200 5500
Wire Wire Line
	4700 5300 4700 5400
Connection ~ 4700 5400
Wire Wire Line
	4550 5400 4550 5500
Wire Wire Line
	4550 5500 4600 5500
Connection ~ 4550 5400
Wire Wire Line
	4800 5500 5400 5500
Wire Wire Line
	6400 5600 6950 5600
Wire Wire Line
	6400 5500 6550 5500
Wire Wire Line
	6550 5500 6550 5600
Connection ~ 6550 5600
Wire Wire Line
	7250 4700 7400 4700
Connection ~ 6650 4700
Wire Wire Line
	6400 5400 7850 5400
Wire Wire Line
	6400 5300 6600 5300
Wire Wire Line
	6600 5300 6600 5400
Connection ~ 6600 5400
Wire Wire Line
	6500 5100 6500 5200
Wire Wire Line
	6500 5100 6400 5100
Wire Wire Line
	6500 5200 6400 5200
Connection ~ 6500 5150
Wire Wire Line
	6400 4900 7650 4900
Wire Wire Line
	6400 5000 6600 5000
Wire Wire Line
	6600 5000 6600 4900
Connection ~ 6600 4900
Wire Wire Line
	5400 5800 5350 5800
Wire Wire Line
	5350 5800 5350 6000
Wire Wire Line
	5400 5700 5250 5700
Wire Wire Line
	5250 5700 5250 6100
Wire Wire Line
	5400 5600 5150 5600
Wire Wire Line
	5150 5600 5150 6200
Wire Wire Line
	1200 4400 1400 4400
Wire Wire Line
	1400 4400 1400 4100
Wire Wire Line
	1600 4500 1200 4500
Wire Wire Line
	9950 3500 10500 3500
Wire Wire Line
	9700 3700 10500 3700
Wire Wire Line
	9600 3800 10500 3800
Wire Wire Line
	9500 3900 10500 3900
Wire Wire Line
	5150 6200 6950 6200
Wire Wire Line
	6950 6200 6950 6100
Wire Wire Line
	6850 6000 6850 6100
Wire Wire Line
	6850 6100 5250 6100
Wire Wire Line
	5350 6000 6750 6000
Wire Wire Line
	6750 6000 6750 5900
Wire Wire Line
	6400 2650 9950 2650
Wire Wire Line
	9950 2650 9950 3500
Wire Wire Line
	9850 2750 9850 3600
Wire Wire Line
	5350 2950 6400 2950
Wire Wire Line
	6400 2950 6400 2850
Wire Wire Line
	6400 2850 9700 2850
Wire Wire Line
	9700 2850 9700 3700
Wire Wire Line
	9850 3600 10500 3600
Wire Wire Line
	9600 3800 9600 2950
Wire Wire Line
	9600 2950 6500 2950
Wire Wire Line
	6500 2950 6500 3050
Wire Wire Line
	6500 3050 5250 3050
Wire Wire Line
	5150 3200 6600 3200
Wire Wire Line
	6600 3200 6600 3050
Wire Wire Line
	6600 3050 9500 3050
Wire Wire Line
	9500 3050 9500 3900
Wire Wire Line
	6400 5700 9950 5700
Wire Wire Line
	9950 5700 9950 5000
Wire Wire Line
	9950 5000 10500 5000
Wire Wire Line
	6400 5800 10050 5800
Wire Wire Line
	10050 5800 10050 5100
Wire Wire Line
	10050 5100 10500 5100
Wire Wire Line
	6750 5900 10150 5900
Wire Wire Line
	10150 5900 10150 5200
Wire Wire Line
	10150 5200 10500 5200
Wire Wire Line
	6850 6000 10250 6000
Wire Wire Line
	10250 6000 10250 5300
Wire Wire Line
	10250 5300 10500 5300
Wire Wire Line
	6950 6100 10350 6100
Wire Wire Line
	10350 6100 10350 5400
Wire Wire Line
	10350 5400 10500 5400
Wire Wire Line
	7650 4900 7650 4200
Wire Wire Line
	7750 4100 7750 5150
Wire Wire Line
	7750 5150 6500 5150
Wire Wire Line
	7850 5400 7850 4000
Wire Wire Line
	7650 1850 7650 900 
Wire Wire Line
	7650 900  2350 900 
Wire Wire Line
	6500 2100 7750 2100
Wire Wire Line
	7750 2100 7750 800 
Wire Wire Line
	7750 800  2450 800 
Wire Wire Line
	7850 2350 7850 700 
Wire Wire Line
	3250 1150 3250 3800
Wire Wire Line
	1600 3800 6850 3800
Wire Wire Line
	6850 3800 6850 4700
Connection ~ 6850 4700
Wire Wire Line
	6850 1650 6850 1150
Wire Wire Line
	6850 1150 3250 1150
Connection ~ 6850 1650
Connection ~ 3250 3800
Wire Wire Line
	1600 4500 1600 3800
Wire Wire Line
	6400 2750 9850 2750
Wire Wire Line
	2350 900  2350 6300
Wire Wire Line
	2450 800  2450 6300
Wire Wire Line
	2550 6300 2550 700 
Wire Wire Line
	2550 700  7850 700 
Wire Wire Line
	3550 6300 3550 4000
Wire Wire Line
	3550 4000 7850 4000
Wire Wire Line
	7750 4100 3450 4100
Wire Wire Line
	3450 4100 3450 6300
Wire Wire Line
	7650 4200 3350 4200
Wire Wire Line
	3350 4200 3350 6300
$EndSCHEMATC
