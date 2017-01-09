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
LIBS:ulv_power2-cache
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
L SCUBE40 P1
U 1 1 58336F16
P 1500 3250
F 0 "P1" H 1450 2300 60  0000 C CNN
F 1 "SCUBE40" H 1450 4600 60  0000 C CNN
F 2 "SCUBE:scube40_no_holes" H 1400 3100 60  0001 C CNN
F 3 "" H 1400 3100 60  0000 C CNN
	1    1500 3250
	-1   0    0    -1  
$EndComp
$Comp
L SCUBE40 P1
U 2 1 58336F7F
P 3650 4950
F 0 "P1" H 3600 4000 60  0000 C CNN
F 1 "SCUBE40" H 3600 6300 60  0000 C CNN
F 2 "SCUBE:scube40_no_holes" H 3550 4800 60  0001 C CNN
F 3 "" H 3550 4800 60  0000 C CNN
	2    3650 4950
	-1   0    0    -1  
$EndComp
$Comp
L D_Schottky_Small D1
U 1 1 58337102
P 5650 3800
F 0 "D1" H 5600 3880 50  0000 L CNN
F 1 "SMS240" H 5500 3700 50  0000 L CNN
F 2 "Diodes_SMD:MELF_Standard" V 5650 3800 50  0001 C CNN
F 3 "" V 5650 3800 50  0000 C CNN
	1    5650 3800
	-1   0    0    1   
$EndComp
Text Notes 4200 3600 0    60   ~ 0
DB9:\n20-36V (24V nominal)\nRS-485 (simplex, maybe duplex)
$Comp
L RSO-2412D-Dual U2
U 1 1 58337399
P 3200 2350
F 0 "U2" H 3350 1700 60  0000 C CNN
F 1 "RSO-2412D-Dual" V 3600 2150 60  0000 C CNN
F 2 "SCUBE:RSO-2412D_v2" H 3200 2350 60  0001 C CNN
F 3 "" H 3200 2350 60  0000 C CNN
	1    3200 2350
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR01
U 1 1 5833757C
P 3450 1600
F 0 "#PWR01" H 3450 1350 50  0001 C CNN
F 1 "GND" H 3450 1450 50  0000 C CNN
F 2 "" H 3450 1600 50  0000 C CNN
F 3 "" H 3450 1600 50  0000 C CNN
	1    3450 1600
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR02
U 1 1 583375AC
P 3000 2800
F 0 "#PWR02" H 3000 2550 50  0001 C CNN
F 1 "GND" H 3000 2650 50  0000 C CNN
F 2 "" H 3000 2800 50  0000 C CNN
F 3 "" H 3000 2800 50  0000 C CNN
	1    3000 2800
	0    1    1    0   
$EndComp
$Comp
L +12V #PWR03
U 1 1 58337688
P 2850 2700
F 0 "#PWR03" H 2850 2550 50  0001 C CNN
F 1 "+12V" H 2850 2840 50  0000 C CNN
F 2 "" H 2850 2700 50  0000 C CNN
F 3 "" H 2850 2700 50  0000 C CNN
	1    2850 2700
	0    -1   -1   0   
$EndComp
$Comp
L -12VA #PWR04
U 1 1 583376C6
P 2750 2900
F 0 "#PWR04" H 2750 2750 50  0001 C CNN
F 1 "-12VA" H 2750 3040 50  0000 C CNN
F 2 "" H 2750 2900 50  0000 C CNN
F 3 "" H 2750 2900 50  0000 C CNN
	1    2750 2900
	0    -1   -1   0   
$EndComp
$Comp
L R_Small R1
U 1 1 58337A31
P 3400 1800
F 0 "R1" H 3430 1820 50  0000 L CNN
F 1 "1M" H 3430 1760 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" H 3400 1800 50  0001 C CNN
F 3 "" H 3400 1800 50  0000 C CNN
	1    3400 1800
	1    0    0    -1  
$EndComp
$Comp
L R_Small R2
U 1 1 58337A7A
P 3000 1950
F 0 "R2" H 3030 1970 50  0000 L CNN
F 1 "10k" H 3030 1910 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" H 3000 1950 50  0001 C CNN
F 3 "" H 3000 1950 50  0000 C CNN
	1    3000 1950
	0    1    1    0   
$EndComp
$Comp
L +24V #PWR05
U 1 1 58337C8E
P 8750 3750
F 0 "#PWR05" H 8750 3600 50  0001 C CNN
F 1 "+24V" H 8750 3890 50  0000 C CNN
F 2 "" H 8750 3750 50  0000 C CNN
F 3 "" H 8750 3750 50  0000 C CNN
	1    8750 3750
	1    0    0    -1  
$EndComp
$Comp
L +24V #PWR06
U 1 1 58337D0A
P 2100 3150
F 0 "#PWR06" H 2100 3000 50  0001 C CNN
F 1 "+24V" H 2100 3290 50  0000 C CNN
F 2 "" H 2100 3150 50  0000 C CNN
F 3 "" H 2100 3150 50  0000 C CNN
	1    2100 3150
	0    1    1    0   
$EndComp
$Comp
L GND #PWR07
U 1 1 58337D4F
P 1950 3050
F 0 "#PWR07" H 1950 2800 50  0001 C CNN
F 1 "GND" H 1950 2900 50  0000 C CNN
F 2 "" H 1950 3050 50  0000 C CNN
F 3 "" H 1950 3050 50  0000 C CNN
	1    1950 3050
	0    -1   -1   0   
$EndComp
$Comp
L RSO-2412D U1
U 1 1 58337EA8
P 4600 2400
F 0 "U1" H 4750 1750 60  0000 C CNN
F 1 "RS-243.3S" H 4700 2700 60  0000 C CNN
F 2 "SCUBE:RSO-2412D_v2" H 4600 2400 60  0001 C CNN
F 3 "" H 4600 2400 60  0000 C CNN
	1    4600 2400
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR08
U 1 1 58337FE6
P 4400 2250
F 0 "#PWR08" H 4400 2000 50  0001 C CNN
F 1 "GND" H 4400 2100 50  0000 C CNN
F 2 "" H 4400 2250 50  0000 C CNN
F 3 "" H 4400 2250 50  0000 C CNN
	1    4400 2250
	0    1    1    0   
$EndComp
$Comp
L GND #PWR09
U 1 1 58338013
P 4400 2850
F 0 "#PWR09" H 4400 2600 50  0001 C CNN
F 1 "GND" H 4400 2700 50  0000 C CNN
F 2 "" H 4400 2850 50  0000 C CNN
F 3 "" H 4400 2850 50  0000 C CNN
	1    4400 2850
	0    1    1    0   
$EndComp
$Comp
L +3V3 #PWR010
U 1 1 58338032
P 4250 2750
F 0 "#PWR010" H 4250 2600 50  0001 C CNN
F 1 "+3V3" H 4250 2890 50  0000 C CNN
F 2 "" H 4250 2750 50  0000 C CNN
F 3 "" H 4250 2750 50  0000 C CNN
	1    4250 2750
	0    -1   -1   0   
$EndComp
$Comp
L +12V #PWR011
U 1 1 58338971
P 1950 3950
F 0 "#PWR011" H 1950 3800 50  0001 C CNN
F 1 "+12V" H 1950 4090 50  0000 C CNN
F 2 "" H 1950 3950 50  0000 C CNN
F 3 "" H 1950 3950 50  0000 C CNN
	1    1950 3950
	0    1    1    0   
$EndComp
$Comp
L +3V3 #PWR012
U 1 1 583389E1
P 1950 3450
F 0 "#PWR012" H 1950 3300 50  0001 C CNN
F 1 "+3V3" H 1950 3590 50  0000 C CNN
F 2 "" H 1950 3450 50  0000 C CNN
F 3 "" H 1950 3450 50  0000 C CNN
	1    1950 3450
	0    1    1    0   
$EndComp
Text Label 4450 4750 0    60   ~ 0
RX
Text Label 4450 4850 0    60   ~ 0
TX
Text Label 2000 2450 0    60   ~ 0
EN_APWR
$Comp
L C_Small C1
U 1 1 58338D3A
P 7300 3950
F 0 "C1" H 7310 4020 50  0000 L CNN
F 1 "10u" H 7310 3870 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 7300 3950 50  0001 C CNN
F 3 "" H 7300 3950 50  0000 C CNN
	1    7300 3950
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR013
U 1 1 58338DC5
P 7450 4100
F 0 "#PWR013" H 7450 3850 50  0001 C CNN
F 1 "GND" H 7450 3950 50  0000 C CNN
F 2 "" H 7450 4100 50  0000 C CNN
F 3 "" H 7450 4100 50  0000 C CNN
	1    7450 4100
	0    -1   -1   0   
$EndComp
$Comp
L THN_30-2415 U3
U 1 1 583391BD
P 8150 4000
F 0 "U3" H 8150 4300 60  0000 C CNN
F 1 "THN_30-2415" H 8150 3700 60  0000 C CNN
F 2 "SCUBE:THN_30-2415" H 8150 3950 60  0001 C CNN
F 3 "" H 8150 3950 60  0000 C CNN
F 4 "110-50-354" H 8150 4000 60  0001 C CNN "1st Distrib. PN"
F 5 "https://www.elfa.se/sv/dc-dc-omvandlare-36-vdc-24-vdc-10-traco-power-thn-30-2415wi/p/11050354" H 8150 4000 60  0001 C CNN "1st Distrib. Link"
	1    8150 4000
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X03 P3
U 1 1 58339694
P 7300 4500
F 0 "P3" H 7300 4700 50  0000 C CNN
F 1 "ON/OFF" V 7400 4500 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03" H 7300 4500 50  0001 C CNN
F 3 "" H 7300 4500 50  0000 C CNN
	1    7300 4500
	0    1    1    0   
$EndComp
$Comp
L CONN_01X03 P2
U 1 1 583396F1
P 9000 4000
F 0 "P2" H 9000 4200 50  0000 C CNN
F 1 "TRIM" V 9100 4000 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03" H 9000 4000 50  0001 C CNN
F 3 "" H 9000 4000 50  0000 C CNN
	1    9000 4000
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR014
U 1 1 583398B9
P 8750 4250
F 0 "#PWR014" H 8750 4000 50  0001 C CNN
F 1 "GND" H 8750 4100 50  0000 C CNN
F 2 "" H 8750 4250 50  0000 C CNN
F 3 "" H 8750 4250 50  0000 C CNN
	1    8750 4250
	1    0    0    -1  
$EndComp
Text Notes 7850 3650 0    60   ~ 0
18-36V in\n24V 1.2A out
Text Notes 7000 4750 0    60   ~ 0
Convenience pads for ON/OFF
Text Notes 8950 4450 0    60   ~ 0
Convenience\npads for trim\n
Text GLabel 6250 3650 1    60   Input ~ 0
VIN
Text GLabel 2800 2300 0    60   Input ~ 0
VIN
Text GLabel 4200 2350 0    60   Input ~ 0
VIN
$Comp
L +24V #PWR015
U 1 1 5833A824
P 6500 1300
F 0 "#PWR015" H 6500 1150 50  0001 C CNN
F 1 "+24V" H 6500 1440 50  0000 C CNN
F 2 "" H 6500 1300 50  0000 C CNN
F 3 "" H 6500 1300 50  0000 C CNN
	1    6500 1300
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR016
U 1 1 5833A854
P 6700 1150
F 0 "#PWR016" H 6700 900 50  0001 C CNN
F 1 "GND" H 6700 1000 50  0000 C CNN
F 2 "" H 6700 1150 50  0000 C CNN
F 3 "" H 6700 1150 50  0000 C CNN
	1    6700 1150
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR017
U 1 1 5833A890
P 7000 1150
F 0 "#PWR017" H 7000 900 50  0001 C CNN
F 1 "GND" H 7000 1000 50  0000 C CNN
F 2 "" H 7000 1150 50  0000 C CNN
F 3 "" H 7000 1150 50  0000 C CNN
	1    7000 1150
	1    0    0    -1  
$EndComp
$Comp
L +24V #PWR018
U 1 1 5833A907
P 6800 1300
F 0 "#PWR018" H 6800 1150 50  0001 C CNN
F 1 "+24V" H 6800 1440 50  0000 C CNN
F 2 "" H 6800 1300 50  0000 C CNN
F 3 "" H 6800 1300 50  0000 C CNN
	1    6800 1300
	-1   0    0    1   
$EndComp
$Comp
L MAX1659 U6
U 1 1 5834C2D5
P 1800 5750
F 0 "U6" H 2000 5600 60  0000 C CNN
F 1 "MAX1659" H 1950 6200 60  0000 C CNN
F 2 "Housings_SOIC:SOIC-8_3.9x4.9mm_Pitch1.27mm" H 1800 5750 60  0001 C CNN
F 3 "" H 1800 5750 60  0000 C CNN
	1    1800 5750
	1    0    0    -1  
$EndComp
$Comp
L MIC5270YM5-TR U7
U 1 1 5834C33A
P 1950 6750
F 0 "U7" H 1600 6650 60  0000 C CNN
F 1 "MIC5270YM5-TR" V 2300 6650 60  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-23-5" H 1950 6750 60  0001 C CNN
F 3 "" H 1950 6750 60  0000 C CNN
	1    1950 6750
	-1   0    0    -1  
$EndComp
$Comp
L +12V #PWR019
U 1 1 5834C549
P 950 4850
F 0 "#PWR019" H 950 4700 50  0001 C CNN
F 1 "+12V" H 950 4990 50  0000 C CNN
F 2 "" H 950 4850 50  0000 C CNN
F 3 "" H 950 4850 50  0000 C CNN
	1    950  4850
	1    0    0    -1  
$EndComp
$Comp
L -12VA #PWR020
U 1 1 58338997
P 2100 4050
F 0 "#PWR020" H 2100 3900 50  0001 C CNN
F 1 "-12VA" H 2100 4190 50  0000 C CNN
F 2 "" H 2100 4050 50  0000 C CNN
F 3 "" H 2100 4050 50  0000 C CNN
	1    2100 4050
	0    1    1    0   
$EndComp
$Comp
L -12VA #PWR021
U 1 1 5834C6F3
P 950 7350
F 0 "#PWR021" H 950 7200 50  0001 C CNN
F 1 "-12VA" H 950 7490 50  0000 C CNN
F 2 "" H 950 7350 50  0000 C CNN
F 3 "" H 950 7350 50  0000 C CNN
	1    950  7350
	-1   0    0    1   
$EndComp
$Comp
L C_Small C2
U 1 1 5834C747
P 950 5350
F 0 "C2" H 960 5420 50  0000 L CNN
F 1 "100n" H 960 5270 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 950 5350 50  0001 C CNN
F 3 "" H 950 5350 50  0000 C CNN
	1    950  5350
	1    0    0    -1  
$EndComp
$Comp
L C_Small C4
U 1 1 5834C803
P 950 6050
F 0 "C4" H 960 6120 50  0000 L CNN
F 1 "100n" H 960 5970 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 950 6050 50  0001 C CNN
F 3 "" H 950 6050 50  0000 C CNN
	1    950  6050
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR022
U 1 1 5834C841
P 900 5700
F 0 "#PWR022" H 900 5450 50  0001 C CNN
F 1 "GND" H 900 5550 50  0000 C CNN
F 2 "" H 900 5700 50  0000 C CNN
F 3 "" H 900 5700 50  0000 C CNN
	1    900  5700
	0    1    1    0   
$EndComp
$Comp
L GND #PWR023
U 1 1 5834CAFF
P 2400 5450
F 0 "#PWR023" H 2400 5200 50  0001 C CNN
F 1 "GND" H 2400 5300 50  0000 C CNN
F 2 "" H 2400 5450 50  0000 C CNN
F 3 "" H 2400 5450 50  0000 C CNN
	1    2400 5450
	0    -1   -1   0   
$EndComp
Text Notes 1200 4950 0    60   ~ 0
(90-12.1)/1.21 = 64.38k\n56k + 8k2 + 180 = 64.38k
$Comp
L C_Small C3
U 1 1 5834CDF5
P 2800 5950
F 0 "C3" H 2810 6020 50  0000 L CNN
F 1 "10u" H 2810 5870 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 2800 5950 50  0001 C CNN
F 3 "" H 2800 5950 50  0000 C CNN
	1    2800 5950
	1    0    0    -1  
$EndComp
$Comp
L +9V #PWR024
U 1 1 5834CF4F
P 2800 5650
F 0 "#PWR024" H 2800 5500 50  0001 C CNN
F 1 "+9V" H 2800 5790 50  0000 C CNN
F 2 "" H 2800 5650 50  0000 C CNN
F 3 "" H 2800 5650 50  0000 C CNN
	1    2800 5650
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR025
U 1 1 5834CFF4
P 2800 6050
F 0 "#PWR025" H 2800 5800 50  0001 C CNN
F 1 "GND" H 2800 5900 50  0000 C CNN
F 2 "" H 2800 6050 50  0000 C CNN
F 3 "" H 2800 6050 50  0000 C CNN
	1    2800 6050
	1    0    0    -1  
$EndComp
$Comp
L R_Small R5
U 1 1 5834D054
P 1250 5300
F 0 "R5" H 1280 5320 50  0000 L CNN
F 1 "10k" H 1280 5260 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" H 1250 5300 50  0001 C CNN
F 3 "" H 1250 5300 50  0000 C CNN
	1    1250 5300
	1    0    0    -1  
$EndComp
$Comp
L R_Small R6
U 1 1 5834D0E2
P 1250 5600
F 0 "R6" H 1280 5620 50  0000 L CNN
F 1 "56k" H 1280 5560 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" H 1250 5600 50  0001 C CNN
F 3 "" H 1250 5600 50  0000 C CNN
	1    1250 5600
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR026
U 1 1 5834D16E
P 1250 5200
F 0 "#PWR026" H 1250 4950 50  0001 C CNN
F 1 "GND" H 1250 5050 50  0000 C CNN
F 2 "" H 1250 5200 50  0000 C CNN
F 3 "" H 1250 5200 50  0000 C CNN
	1    1250 5200
	-1   0    0    1   
$EndComp
$Comp
L R_Small R8
U 1 1 5834D40A
P 1250 5850
F 0 "R8" H 1280 5870 50  0000 L CNN
F 1 "8k2" H 1280 5810 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" H 1250 5850 50  0001 C CNN
F 3 "" H 1250 5850 50  0000 C CNN
	1    1250 5850
	1    0    0    -1  
$EndComp
$Comp
L R_Small R9
U 1 1 5834D468
P 1400 6050
F 0 "R9" H 1430 6070 50  0000 L CNN
F 1 "180" H 1430 6010 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" H 1400 6050 50  0001 C CNN
F 3 "" H 1400 6050 50  0000 C CNN
	1    1400 6050
	0    1    1    0   
$EndComp
Text Notes 2750 6900 0    60   ~ 0
(90-12)/1.2 = 65k\n56k + 8k2 + 820 =65.02k
NoConn ~ 1750 6400
$Comp
L GND #PWR027
U 1 1 5834E23C
P 1950 6400
F 0 "#PWR027" H 1950 6150 50  0001 C CNN
F 1 "GND" H 1950 6250 50  0000 C CNN
F 2 "" H 1950 6400 50  0000 C CNN
F 3 "" H 1950 6400 50  0000 C CNN
	1    1950 6400
	-1   0    0    1   
$EndComp
$Comp
L C_Small C5
U 1 1 5834E2C1
P 2050 7450
F 0 "C5" H 2060 7520 50  0000 L CNN
F 1 "10u" H 2060 7370 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 2050 7450 50  0001 C CNN
F 3 "" H 2050 7450 50  0000 C CNN
	1    2050 7450
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR028
U 1 1 5834E37F
P 2050 7550
F 0 "#PWR028" H 2050 7300 50  0001 C CNN
F 1 "GND" H 2050 7400 50  0000 C CNN
F 2 "" H 2050 7550 50  0000 C CNN
F 3 "" H 2050 7550 50  0000 C CNN
	1    2050 7550
	1    0    0    -1  
$EndComp
$Comp
L R_Small R10
U 1 1 5834E481
P 2350 6200
F 0 "R10" H 2380 6220 50  0000 L CNN
F 1 "10k" H 2380 6160 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" H 2350 6200 50  0001 C CNN
F 3 "" H 2350 6200 50  0000 C CNN
	1    2350 6200
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR029
U 1 1 5834E619
P 2250 6200
F 0 "#PWR029" H 2250 5950 50  0001 C CNN
F 1 "GND" H 2250 6050 50  0000 C CNN
F 2 "" H 2250 6200 50  0000 C CNN
F 3 "" H 2250 6200 50  0000 C CNN
	1    2250 6200
	0    1    1    0   
$EndComp
$Comp
L R_Small R11
U 1 1 5834E66F
P 2500 6500
F 0 "R11" H 2530 6520 50  0000 L CNN
F 1 "56k" H 2530 6460 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" H 2500 6500 50  0001 C CNN
F 3 "" H 2500 6500 50  0000 C CNN
	1    2500 6500
	1    0    0    -1  
$EndComp
$Comp
L R_Small R12
U 1 1 5834E709
P 2500 6750
F 0 "R12" H 2530 6770 50  0000 L CNN
F 1 "8k2" H 2530 6710 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" H 2500 6750 50  0001 C CNN
F 3 "" H 2500 6750 50  0000 C CNN
	1    2500 6750
	1    0    0    -1  
$EndComp
$Comp
L R_Small R13
U 1 1 5834E778
P 2500 7000
F 0 "R13" H 2530 7020 50  0000 L CNN
F 1 "820" H 2530 6960 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" H 2500 7000 50  0001 C CNN
F 3 "" H 2500 7000 50  0000 C CNN
	1    2500 7000
	1    0    0    -1  
$EndComp
$Comp
L -9VA #PWR030
U 1 1 5834F4CF
P 2500 7350
F 0 "#PWR030" H 2500 7225 50  0001 C CNN
F 1 "-9VA" H 2500 7500 50  0000 C CNN
F 2 "" H 2500 7350 50  0000 C CNN
F 3 "" H 2500 7350 50  0000 C CNN
	1    2500 7350
	-1   0    0    1   
$EndComp
$Comp
L +9V #PWR031
U 1 1 5834F6B5
P 1950 3750
F 0 "#PWR031" H 1950 3600 50  0001 C CNN
F 1 "+9V" H 1950 3890 50  0000 C CNN
F 2 "" H 1950 3750 50  0000 C CNN
F 3 "" H 1950 3750 50  0000 C CNN
	1    1950 3750
	0    1    1    0   
$EndComp
$Comp
L -9VA #PWR032
U 1 1 5834F701
P 2200 3850
F 0 "#PWR032" H 2200 3725 50  0001 C CNN
F 1 "-9VA" H 2200 4000 50  0000 C CNN
F 2 "" H 2200 3850 50  0000 C CNN
F 3 "" H 2200 3850 50  0000 C CNN
	1    2200 3850
	0    1    1    0   
$EndComp
$Comp
L MAX485 U4
U 1 1 58351ACF
P 5650 4800
F 0 "U4" H 5650 5050 60  0000 C CNN
F 1 "MAX485" H 5650 4550 60  0000 C CNN
F 2 "Housings_SOIC:SOIC-8_3.9x4.9mm_Pitch1.27mm" H 5650 4800 60  0001 C CNN
F 3 "" H 5650 4800 60  0000 C CNN
	1    5650 4800
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR033
U 1 1 58352239
P 5400 3900
F 0 "#PWR033" H 5400 3650 50  0001 C CNN
F 1 "GND" H 5400 3750 50  0000 C CNN
F 2 "" H 5400 3900 50  0000 C CNN
F 3 "" H 5400 3900 50  0000 C CNN
	1    5400 3900
	0    -1   -1   0   
$EndComp
$Comp
L R_Small R4
U 1 1 583533B4
P 6300 4800
F 0 "R4" H 6330 4820 50  0000 L CNN
F 1 "120" H 6330 4760 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" H 6300 4800 50  0001 C CNN
F 3 "" H 6300 4800 50  0000 C CNN
	1    6300 4800
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR034
U 1 1 58353474
P 6150 4600
F 0 "#PWR034" H 6150 4450 50  0001 C CNN
F 1 "+3V3" H 6150 4740 50  0000 C CNN
F 2 "" H 6150 4600 50  0000 C CNN
F 3 "" H 6150 4600 50  0000 C CNN
	1    6150 4600
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR035
U 1 1 583536C2
P 6150 5000
F 0 "#PWR035" H 6150 4750 50  0001 C CNN
F 1 "GND" H 6150 4850 50  0000 C CNN
F 2 "" H 6150 5000 50  0000 C CNN
F 3 "" H 6150 5000 50  0000 C CNN
	1    6150 5000
	1    0    0    -1  
$EndComp
Text Label 5800 4100 0    60   ~ 0
A
Text Label 5800 4000 0    60   ~ 0
B
$Comp
L CONN_01X01 P7
U 1 1 583541EB
P 4800 4850
F 0 "P7" H 4650 4900 50  0000 C CNN
F 1 "DE" V 4900 4850 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01" H 4800 4850 50  0001 C CNN
F 3 "" H 4800 4850 50  0000 C CNN
	1    4800 4850
	-1   0    0    1   
$EndComp
Text Notes 4650 6900 0    60   ~ 0
For simplex mode:\nInstall only U4\nInstall wire between DE\nand desired pin on DE1/DE2.\nConnect Vin, GND, A and B to DB9\n\nFor duplex mode:\nInstall U4 and U5\nTie DE to GND\nConnect Vin, GND, A, B, Y and Z to DB9
$Comp
L R_Small R3
U 1 1 5835461C
P 4600 4500
F 0 "R3" H 4630 4520 50  0000 L CNN
F 1 "10k" H 4630 4460 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" H 4600 4500 50  0001 C CNN
F 3 "" H 4600 4500 50  0000 C CNN
	1    4600 4500
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR036
U 1 1 58354801
P 4600 4400
F 0 "#PWR036" H 4600 4250 50  0001 C CNN
F 1 "+3V3" H 4600 4540 50  0000 C CNN
F 2 "" H 4600 4400 50  0000 C CNN
F 3 "" H 4600 4400 50  0000 C CNN
	1    4600 4400
	1    0    0    -1  
$EndComp
$Comp
L MAX485 U5
U 1 1 5835531E
P 5650 5600
F 0 "U5" H 5650 5850 60  0000 C CNN
F 1 "MAX485" H 5650 5350 60  0000 C CNN
F 2 "Housings_SOIC:SOIC-8_3.9x4.9mm_Pitch1.27mm" H 5650 5600 60  0001 C CNN
F 3 "" H 5650 5600 60  0000 C CNN
	1    5650 5600
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR037
U 1 1 583553B5
P 5150 5250
F 0 "#PWR037" H 5150 5100 50  0001 C CNN
F 1 "+3V3" H 5150 5390 50  0000 C CNN
F 2 "" H 5150 5250 50  0000 C CNN
F 3 "" H 5150 5250 50  0000 C CNN
	1    5150 5250
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR038
U 1 1 583554E4
P 6150 5800
F 0 "#PWR038" H 6150 5550 50  0001 C CNN
F 1 "GND" H 6150 5650 50  0000 C CNN
F 2 "" H 6150 5800 50  0000 C CNN
F 3 "" H 6150 5800 50  0000 C CNN
	1    6150 5800
	1    0    0    -1  
$EndComp
NoConn ~ 5200 5450
Text Label 5800 4300 0    60   ~ 0
Y
Text Label 5800 4200 0    60   ~ 0
Z
$Comp
L R_Small R7
U 1 1 58356298
P 6300 5600
F 0 "R7" H 6330 5620 50  0000 L CNN
F 1 "120" H 6330 5560 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" H 6300 5600 50  0001 C CNN
F 3 "" H 6300 5600 50  0000 C CNN
	1    6300 5600
	1    0    0    -1  
$EndComp
NoConn ~ 3000 2600
NoConn ~ 3000 2400
NoConn ~ 4400 2450
NoConn ~ 4400 2650
NoConn ~ 4400 2950
$Comp
L CONN_01X01 P9
U 1 1 5835D9BB
P 8950 2250
F 0 "P9" H 8950 2350 50  0000 C CNN
F 1 "M3" V 9050 2250 50  0000 C CNN
F 2 "SCUBE:M3_PTH" H 8950 2250 50  0001 C CNN
F 3 "" H 8950 2250 50  0000 C CNN
	1    8950 2250
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR039
U 1 1 5835DBB7
P 8750 2250
F 0 "#PWR039" H 8750 2000 50  0001 C CNN
F 1 "GND" H 8750 2100 50  0000 C CNN
F 2 "" H 8750 2250 50  0000 C CNN
F 3 "" H 8750 2250 50  0000 C CNN
	1    8750 2250
	0    1    1    0   
$EndComp
$Comp
L CONN_01X01 P10
U 1 1 5835DC56
P 8950 2450
F 0 "P10" H 8950 2550 50  0000 C CNN
F 1 "M3" V 9050 2450 50  0000 C CNN
F 2 "SCUBE:M3_PTH" H 8950 2450 50  0001 C CNN
F 3 "" H 8950 2450 50  0000 C CNN
	1    8950 2450
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR040
U 1 1 5835DC5C
P 8750 2450
F 0 "#PWR040" H 8750 2200 50  0001 C CNN
F 1 "GND" H 8750 2300 50  0000 C CNN
F 2 "" H 8750 2450 50  0000 C CNN
F 3 "" H 8750 2450 50  0000 C CNN
	1    8750 2450
	0    1    1    0   
$EndComp
$Comp
L CONN_01X01 P11
U 1 1 5835DF04
P 8950 2650
F 0 "P11" H 8950 2750 50  0000 C CNN
F 1 "M3" V 9050 2650 50  0000 C CNN
F 2 "SCUBE:M3_PTH" H 8950 2650 50  0001 C CNN
F 3 "" H 8950 2650 50  0000 C CNN
	1    8950 2650
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR041
U 1 1 5835DF0A
P 8750 2650
F 0 "#PWR041" H 8750 2400 50  0001 C CNN
F 1 "GND" H 8750 2500 50  0000 C CNN
F 2 "" H 8750 2650 50  0000 C CNN
F 3 "" H 8750 2650 50  0000 C CNN
	1    8750 2650
	0    1    1    0   
$EndComp
$Comp
L CONN_01X01 P12
U 1 1 5835DF10
P 8950 2850
F 0 "P12" H 8950 2950 50  0000 C CNN
F 1 "M3" V 9050 2850 50  0000 C CNN
F 2 "SCUBE:M3_PTH" H 8950 2850 50  0001 C CNN
F 3 "" H 8950 2850 50  0000 C CNN
	1    8950 2850
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR042
U 1 1 5835DF16
P 8750 2850
F 0 "#PWR042" H 8750 2600 50  0001 C CNN
F 1 "GND" H 8750 2700 50  0000 C CNN
F 2 "" H 8750 2850 50  0000 C CNN
F 3 "" H 8750 2850 50  0000 C CNN
	1    8750 2850
	0    1    1    0   
$EndComp
$Comp
L CONN_01X06 P5
U 1 1 5835F88D
P 6750 950
F 0 "P5" H 6750 1300 50  0000 C CNN
F 1 "MOTOR_OUT" V 6850 950 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Angled_1x06" H 6750 950 50  0001 C CNN
F 3 "" H 6750 950 50  0000 C CNN
	1    6750 950 
	0    -1   -1   0   
$EndComp
$Comp
L CONN_01X02 P13
U 1 1 58360DFF
P 5700 2500
F 0 "P13" H 5700 2650 50  0000 C CNN
F 1 "PWM" V 5800 2500 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02" H 5700 2500 50  0001 C CNN
F 3 "" H 5700 2500 50  0000 C CNN
	1    5700 2500
	-1   0    0    1   
$EndComp
$Comp
L R_Small R17
U 1 1 583612B7
P 6600 2150
F 0 "R17" H 6630 2170 50  0000 L CNN
F 1 "open" H 6630 2110 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" H 6600 2150 50  0001 C CNN
F 3 "" H 6600 2150 50  0000 C CNN
	1    6600 2150
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR043
U 1 1 5836153B
P 6500 2550
F 0 "#PWR043" H 6500 2300 50  0001 C CNN
F 1 "GND" H 6500 2400 50  0000 C CNN
F 2 "" H 6500 2550 50  0000 C CNN
F 3 "" H 6500 2550 50  0000 C CNN
	1    6500 2550
	1    0    0    -1  
$EndComp
$Comp
L R_Small R14
U 1 1 5836196C
P 6200 1900
F 0 "R14" H 6230 1920 50  0000 L CNN
F 1 "56k" H 6230 1860 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" H 6200 1900 50  0001 C CNN
F 3 "" H 6200 1900 50  0000 C CNN
	1    6200 1900
	0    -1   -1   0   
$EndComp
$Comp
L +24V #PWR044
U 1 1 583621C9
P 6050 1900
F 0 "#PWR044" H 6050 1750 50  0001 C CNN
F 1 "+24V" H 6050 2040 50  0000 C CNN
F 2 "" H 6050 1900 50  0000 C CNN
F 3 "" H 6050 1900 50  0000 C CNN
	1    6050 1900
	0    -1   -1   0   
$EndComp
$Comp
L +3V3 #PWR045
U 1 1 583623CC
P 5750 2150
F 0 "#PWR045" H 5750 2000 50  0001 C CNN
F 1 "+3V3" H 5750 2290 50  0000 C CNN
F 2 "" H 5750 2150 50  0000 C CNN
F 3 "" H 5750 2150 50  0000 C CNN
	1    5750 2150
	0    -1   -1   0   
$EndComp
$Comp
L R_Small R16
U 1 1 58362462
P 5850 2150
F 0 "R16" H 5880 2170 50  0000 L CNN
F 1 "100k" H 5880 2110 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" H 5850 2150 50  0001 C CNN
F 3 "" H 5850 2150 50  0000 C CNN
	1    5850 2150
	0    1    1    0   
$EndComp
$Comp
L R_Small R19
U 1 1 58362CED
P 7900 2150
F 0 "R19" H 7930 2170 50  0000 L CNN
F 1 "open" H 7930 2110 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" H 7900 2150 50  0001 C CNN
F 3 "" H 7900 2150 50  0000 C CNN
	1    7900 2150
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR046
U 1 1 58362CF3
P 7800 2550
F 0 "#PWR046" H 7800 2300 50  0001 C CNN
F 1 "GND" H 7800 2400 50  0000 C CNN
F 2 "" H 7800 2550 50  0000 C CNN
F 3 "" H 7800 2550 50  0000 C CNN
	1    7800 2550
	1    0    0    -1  
$EndComp
$Comp
L R_Small R15
U 1 1 58362CF9
P 7500 1900
F 0 "R15" H 7530 1920 50  0000 L CNN
F 1 "56k" H 7530 1860 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" H 7500 1900 50  0001 C CNN
F 3 "" H 7500 1900 50  0000 C CNN
	1    7500 1900
	0    -1   -1   0   
$EndComp
$Comp
L +24V #PWR047
U 1 1 58362D08
P 7350 1900
F 0 "#PWR047" H 7350 1750 50  0001 C CNN
F 1 "+24V" H 7350 2040 50  0000 C CNN
F 2 "" H 7350 1900 50  0000 C CNN
F 3 "" H 7350 1900 50  0000 C CNN
	1    7350 1900
	0    -1   1    0   
$EndComp
$Comp
L +3V3 #PWR048
U 1 1 58362D0F
P 7050 2150
F 0 "#PWR048" H 7050 2000 50  0001 C CNN
F 1 "+3V3" H 7050 2290 50  0000 C CNN
F 2 "" H 7050 2150 50  0000 C CNN
F 3 "" H 7050 2150 50  0000 C CNN
	1    7050 2150
	0    -1   -1   0   
$EndComp
$Comp
L R_Small R18
U 1 1 58362D15
P 7150 2150
F 0 "R18" H 7180 2170 50  0000 L CNN
F 1 "100k" H 7180 2110 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" H 7150 2150 50  0001 C CNN
F 3 "" H 7150 2150 50  0000 C CNN
	1    7150 2150
	0    1    1    0   
$EndComp
$Comp
L Q_NMOS_GSD Q2
U 1 1 58375FB7
P 6250 2150
F 0 "Q2" H 6150 2250 50  0000 R CNN
F 1 "PMBF170" V 6500 2300 50  0000 R CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 6450 2250 50  0001 C CNN
F 3 "" H 6250 2150 50  0000 C CNN
F 4 "171-30-701" H 6250 2150 60  0001 C CNN "1st Distrib. PN"
F 5 "https://www.elfa.se/sv/smasignal-fet-sot-23-60-nxp-pmbf170/p/17130701" H 6250 2150 60  0001 C CNN "1st Distrib. Link"
	1    6250 2150
	1    0    0    -1  
$EndComp
Text Notes 6100 3000 0    60   ~ 0
Level shifters invert drive signals\n0V -> 24V, 3.3V -> 0V
$Comp
L Q_NMOS_GSD Q3
U 1 1 583778CE
P 7550 2150
F 0 "Q3" H 7450 2250 50  0000 R CNN
F 1 "PMBF170" V 7800 2300 50  0000 R CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 7750 2250 50  0001 C CNN
F 3 "" H 7550 2150 50  0000 C CNN
F 4 "171-30-701" H 7550 2150 60  0001 C CNN "1st Distrib. PN"
F 5 "https://www.elfa.se/sv/smasignal-fet-sot-23-60-nxp-pmbf170/p/17130701" H 7550 2150 60  0001 C CNN "1st Distrib. Link"
	1    7550 2150
	1    0    0    -1  
$EndComp
$Comp
L Q_NMOS_GDSD Q1
U 1 1 58378A62
P 3150 1700
F 0 "Q1" V 3500 1750 50  0000 R CNN
F 1 "IRLL024NPBF" V 3400 1750 50  0000 R CNN
F 2 "TO_SOT_Packages_SMD:SOT-223" H 3350 1800 50  0001 C CNN
F 3 "" H 3150 1700 50  0000 C CNN
F 4 "171-37-904" H 3150 1700 60  0001 C CNN "1st Distrib. PN"
F 5 "https://www.elfa.se/sv/mosfet-55-sot-223-ir-irll024npbf/p/17137904" H 3150 1700 60  0001 C CNN "1st Distrib. Link"
	1    3150 1700
	0    -1   -1   0   
$EndComp
$Comp
L CONN_01X04 P6
U 1 1 5837B857
P 4300 4500
F 0 "P6" H 4300 4750 50  0000 C CNN
F 1 "DE2" V 4400 4500 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x04" H 4300 4500 50  0001 C CNN
F 3 "" H 4300 4500 50  0000 C CNN
	1    4300 4500
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X04 P8
U 1 1 5837B9ED
P 4300 5100
F 0 "P8" H 4300 4850 50  0000 C CNN
F 1 "DE1" V 4400 5100 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x04" H 4300 5100 50  0001 C CNN
F 3 "" H 4300 5100 50  0000 C CNN
	1    4300 5100
	1    0    0    -1  
$EndComp
$Comp
L C_Small C6
U 1 1 5837CA7B
P 7000 3950
F 0 "C6" H 7010 4020 50  0000 L CNN
F 1 "100u" H 7010 3870 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206" H 7000 3950 50  0001 C CNN
F 3 "" H 7000 3950 50  0000 C CNN
	1    7000 3950
	-1   0    0    1   
$EndComp
$Comp
L F_Small F1
U 1 1 5837E4EB
P 6000 3800
F 0 "F1" H 5960 3860 50  0000 L CNN
F 1 "PTC" H 5880 3740 50  0000 L CNN
F 2 "Fuse_Holders_and_Fuses:Fuse_SMD2920" H 6000 3800 50  0001 C CNN
F 3 "" H 6000 3800 50  0000 C CNN
	1    6000 3800
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X02 P14
U 1 1 5837FB0C
P 6000 3350
F 0 "P14" H 6000 3500 50  0000 C CNN
F 1 "FUSE_BYPASS" V 6100 3350 50  0000 C CNN
F 2 "SCUBE:solder_bridge" H 6000 3350 50  0001 C CNN
F 3 "" H 6000 3350 50  0000 C CNN
	1    6000 3350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3000 2300 2800 2300
Wire Wire Line
	2850 2700 3000 2700
Wire Wire Line
	2800 2200 3000 2200
Wire Wire Line
	2800 1500 2800 2200
Wire Wire Line
	2800 1600 2950 1600
Wire Wire Line
	3100 1950 3400 1950
Wire Wire Line
	3400 1950 3400 1900
Wire Wire Line
	3150 1900 3150 1950
Connection ~ 3150 1950
Wire Wire Line
	3400 1700 3400 1600
Wire Wire Line
	3350 1600 3450 1600
Connection ~ 3400 1600
Wire Wire Line
	2100 3150 1950 3150
Wire Wire Line
	4250 2750 4400 2750
Wire Wire Line
	4200 2350 4400 2350
Wire Wire Line
	2750 2900 3000 2900
Wire Wire Line
	2900 1950 2450 1950
Wire Wire Line
	2450 1950 2450 2450
Wire Wire Line
	2450 2450 1950 2450
Wire Wire Line
	2100 4050 1950 4050
Wire Wire Line
	8800 4000 8700 4000
Wire Wire Line
	8750 3900 8800 3900
Wire Wire Line
	8750 3750 8750 3900
Wire Wire Line
	8750 3800 8700 3800
Wire Wire Line
	8800 4100 8750 4100
Wire Wire Line
	8750 4100 8750 4250
Wire Wire Line
	8750 4200 8700 4200
Connection ~ 8750 3800
Connection ~ 8750 4200
Wire Wire Line
	7600 4000 7400 4000
Wire Wire Line
	7400 4000 7400 4300
Wire Wire Line
	7600 4200 7300 4200
Wire Wire Line
	7300 4200 7300 4300
Wire Wire Line
	7000 4100 7450 4100
Connection ~ 7400 4100
Wire Wire Line
	7300 4100 7300 4050
Wire Wire Line
	6100 3800 7600 3800
Wire Wire Line
	6750 3800 6750 4200
Wire Wire Line
	6750 4200 7200 4200
Wire Wire Line
	7200 4200 7200 4300
Wire Wire Line
	7300 3850 7300 3800
Connection ~ 7300 3800
Connection ~ 6750 3800
Wire Wire Line
	6500 1300 6500 1150
Wire Wire Line
	6800 1300 6800 1150
Wire Wire Line
	2400 5550 2650 5550
Wire Wire Line
	2650 5000 2650 5650
Wire Wire Line
	950  5000 2650 5000
Wire Wire Line
	950  4850 950  5250
Connection ~ 950  5000
Wire Wire Line
	2650 5650 2400 5650
Connection ~ 2650 5550
Wire Wire Line
	1500 5550 1450 5550
Wire Wire Line
	1450 5000 1450 5650
Connection ~ 1450 5000
Wire Wire Line
	1450 5650 1500 5650
Connection ~ 1450 5550
Wire Wire Line
	2400 5750 2800 5750
Wire Wire Line
	2450 5950 2450 5750
Wire Wire Line
	1450 5950 2450 5950
Wire Wire Line
	1450 5950 1450 5750
Wire Wire Line
	1450 5750 1500 5750
Wire Wire Line
	2800 5650 2800 5850
Connection ~ 2450 5750
Connection ~ 2800 5750
Wire Wire Line
	1500 5450 1250 5450
Wire Wire Line
	1250 5400 1250 5500
Wire Wire Line
	1300 6050 1250 6050
Wire Wire Line
	1250 6050 1250 5950
Wire Wire Line
	1250 5750 1250 5700
Connection ~ 1250 5450
Wire Wire Line
	1500 6050 1550 6050
Wire Wire Line
	1550 6050 1550 5950
Connection ~ 1550 5950
Wire Wire Line
	1850 7250 1850 7300
Wire Wire Line
	1850 7300 950  7300
Wire Wire Line
	950  6150 950  7350
Connection ~ 950  7300
Wire Wire Line
	950  5450 950  5950
Wire Wire Line
	900  5700 950  5700
Connection ~ 950  5700
Wire Wire Line
	2150 6400 2150 6350
Wire Wire Line
	2150 6350 2500 6350
Wire Wire Line
	2500 6200 2500 6400
Wire Wire Line
	2500 6200 2450 6200
Connection ~ 2500 6350
Wire Wire Line
	2500 6600 2500 6650
Wire Wire Line
	2500 6850 2500 6900
Wire Wire Line
	2050 7250 2050 7350
Wire Wire Line
	2500 7100 2500 7350
Wire Wire Line
	2500 7300 2050 7300
Connection ~ 2050 7300
Connection ~ 2500 7300
Wire Wire Line
	2200 3850 1950 3850
Wire Wire Line
	6250 3650 6250 3800
Connection ~ 6250 3800
Wire Wire Line
	5200 4650 4600 4650
Wire Wire Line
	4600 4600 4600 4750
Wire Wire Line
	4600 4750 4100 4750
Wire Wire Line
	5200 4950 4600 4950
Wire Wire Line
	4600 4850 4600 5750
Wire Wire Line
	4600 4850 4100 4850
Wire Wire Line
	5000 4850 5200 4850
Wire Wire Line
	5100 4850 5100 4750
Wire Wire Line
	5100 4750 5200 4750
Wire Wire Line
	6150 4600 6150 4650
Wire Wire Line
	6150 4650 6100 4650
Wire Wire Line
	6150 5000 6150 4950
Wire Wire Line
	6150 4950 6100 4950
Wire Wire Line
	6100 4750 6200 4750
Wire Wire Line
	6200 4750 6200 4650
Wire Wire Line
	6200 4650 6300 4650
Wire Wire Line
	6300 4000 6300 4700
Wire Wire Line
	6100 4850 6200 4850
Wire Wire Line
	6200 4850 6200 4950
Wire Wire Line
	6200 4950 6500 4950
Wire Wire Line
	6300 4950 6300 4900
Connection ~ 6300 4650
Wire Wire Line
	6500 4950 6500 4100
Connection ~ 6300 4950
Connection ~ 5100 4850
Connection ~ 4600 4650
Wire Wire Line
	6150 5800 6150 5750
Wire Wire Line
	6150 5750 6100 5750
Wire Wire Line
	6150 5300 6150 5450
Wire Wire Line
	6150 5450 6100 5450
Wire Wire Line
	4600 5750 5200 5750
Connection ~ 4600 4950
Wire Wire Line
	5150 5650 5200 5650
Wire Wire Line
	5150 5250 5150 5650
Wire Wire Line
	5150 5550 5200 5550
Wire Wire Line
	6150 5300 5150 5300
Connection ~ 5150 5550
Connection ~ 5150 5300
Wire Wire Line
	6700 5750 6700 4300
Wire Wire Line
	6200 5750 6700 5750
Wire Wire Line
	6200 5750 6200 5650
Wire Wire Line
	6200 5650 6100 5650
Wire Wire Line
	6300 5700 6300 5750
Connection ~ 6300 5750
Wire Wire Line
	6100 5550 6200 5550
Wire Wire Line
	6200 5550 6200 5450
Wire Wire Line
	6200 5450 6600 5450
Wire Wire Line
	6300 5450 6300 5500
Wire Wire Line
	6600 5450 6600 4200
Connection ~ 6300 5450
Wire Wire Line
	6600 1150 6600 2050
Wire Wire Line
	6900 1150 6900 1600
Wire Wire Line
	6300 1900 6600 1900
Wire Wire Line
	6600 2450 6600 2250
Wire Wire Line
	6350 2450 6600 2450
Wire Wire Line
	6350 2450 6350 2350
Wire Wire Line
	6500 2550 6500 2450
Connection ~ 6500 2450
Wire Wire Line
	6350 1950 6350 1900
Connection ~ 6350 1900
Wire Wire Line
	6050 1900 6100 1900
Wire Wire Line
	5950 2150 6050 2150
Wire Wire Line
	7600 1900 7900 1900
Wire Wire Line
	7900 1600 7900 2050
Wire Wire Line
	7900 2450 7900 2250
Wire Wire Line
	7650 2450 7900 2450
Wire Wire Line
	7650 2450 7650 2350
Wire Wire Line
	7800 2550 7800 2450
Connection ~ 7800 2450
Wire Wire Line
	7650 1950 7650 1900
Connection ~ 7650 1900
Wire Wire Line
	7350 1900 7400 1900
Wire Wire Line
	7250 2150 7350 2150
Wire Wire Line
	5900 2450 6000 2450
Wire Wire Line
	6000 2450 6000 2150
Connection ~ 6000 2150
Wire Wire Line
	5900 2550 6150 2550
Wire Wire Line
	6150 2550 6150 2750
Wire Wire Line
	6150 2750 7300 2750
Wire Wire Line
	7300 2750 7300 2150
Connection ~ 7300 2150
Connection ~ 6600 1900
Wire Wire Line
	6900 1600 7900 1600
Connection ~ 7900 1900
Wire Wire Line
	2950 1500 2800 1500
Connection ~ 2800 1600
Wire Wire Line
	6300 4000 5500 4000
Wire Wire Line
	6500 4100 5500 4100
Wire Wire Line
	6700 4300 5200 4300
Wire Wire Line
	6600 4200 5200 4200
Wire Wire Line
	7000 3800 7000 3850
Connection ~ 7000 3800
Wire Wire Line
	7000 4050 7000 4100
Connection ~ 7300 4100
Wire Wire Line
	5200 3800 5550 3800
Wire Wire Line
	5750 3800 5900 3800
Wire Wire Line
	6050 3550 6050 3600
Wire Wire Line
	6050 3600 6150 3600
Wire Wire Line
	6150 3600 6150 3800
Connection ~ 6150 3800
Wire Wire Line
	5850 3800 5850 3600
Wire Wire Line
	5850 3600 5950 3600
Wire Wire Line
	5950 3600 5950 3550
Connection ~ 5850 3800
$Comp
L CONN_01X02 P4
U 1 1 58380C28
P 5000 3850
F 0 "P4" H 5000 4000 50  0000 C CNN
F 1 "PWR" V 5100 3850 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Angled_1x02" H 5000 3850 50  0001 C CNN
F 3 "" H 5000 3850 50  0000 C CNN
	1    5000 3850
	-1   0    0    -1  
$EndComp
$Comp
L CONN_01X02 P15
U 1 1 58380CEB
P 5300 4050
F 0 "P15" V 5400 4050 50  0000 C CNN
F 1 "IN" V 5450 4050 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Angled_1x02" H 5300 4050 50  0001 C CNN
F 3 "" H 5300 4050 50  0000 C CNN
	1    5300 4050
	-1   0    0    -1  
$EndComp
$Comp
L CONN_01X02 P16
U 1 1 58380D9E
P 5000 4250
F 0 "P16" H 5000 4400 50  0000 C CNN
F 1 "OUT" V 5100 4250 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Angled_1x02" H 5000 4250 50  0001 C CNN
F 3 "" H 5000 4250 50  0000 C CNN
	1    5000 4250
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5400 3900 5200 3900
$EndSCHEMATC
