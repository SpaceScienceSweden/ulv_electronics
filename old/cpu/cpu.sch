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
LIBS:cpu-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 2
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
U 1 1 577D5086
P 10200 3350
F 0 "P1" H 10200 2400 60  0000 C CNN
F 1 "SCUBE40" V 10450 3350 60  0000 C CNN
F 2 "SCUBE:scube40_no_holes" H 10100 3200 60  0001 C CNN
F 3 "" H 10100 3200 60  0000 C CNN
	1    10200 3350
	1    0    0    -1  
$EndComp
$Comp
L SCUBE40 P1
U 2 1 577D50FB
P 9400 5550
F 0 "P1" H 9400 4600 60  0000 C CNN
F 1 "SCUBE40" V 9650 5550 60  0000 C CNN
F 2 "SCUBE:scube40_no_holes" H 9300 5400 60  0001 C CNN
F 3 "" H 9300 5400 60  0000 C CNN
	2    9400 5550
	1    0    0    -1  
$EndComp
$Comp
L ATMEGA128-A IC1
U 1 1 577D516F
P 5350 3950
F 0 "IC1" H 4200 5850 50  0000 L BNN
F 1 "ATMEGA128-A" H 6100 2000 50  0000 L BNN
F 2 "SCUBE:ATmegaS128" H 5350 3950 50  0000 C CIN
F 3 "" H 5350 3950 50  0000 C CNN
	1    5350 3950
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR01
U 1 1 577D63C2
P 9750 3150
F 0 "#PWR01" H 9750 2900 50  0001 C CNN
F 1 "GND" H 9750 3000 50  0000 C CNN
F 2 "" H 9750 3150 50  0000 C CNN
F 3 "" H 9750 3150 50  0000 C CNN
	1    9750 3150
	0    1    -1   0   
$EndComp
$Comp
L GND #PWR02
U 1 1 577D63F7
P 5300 6150
F 0 "#PWR02" H 5300 5900 50  0001 C CNN
F 1 "GND" H 5300 6000 50  0000 C CNN
F 2 "" H 5300 6150 50  0000 C CNN
F 3 "" H 5300 6150 50  0000 C CNN
	1    5300 6150
	1    0    0    -1  
$EndComp
$Comp
L ATMEGA128-A IC2
U 1 1 577F7479
P 5350 3950
F 0 "IC2" H 4350 5850 50  0000 L BNN
F 1 "ATMEGA128-A" H 6100 2000 50  0000 L BNN
F 2 "Housings_QFP:TQFP-64_14x14mm_Pitch0.8mm" H 5350 3950 50  0000 C CIN
F 3 "" H 5350 3950 50  0000 C CNN
	1    5350 3950
	1    0    0    -1  
$EndComp
$Comp
L CONN_02X03 P2
U 1 1 577F7E75
P 1500 5700
F 0 "P2" H 1500 5900 50  0000 C CNN
F 1 "ISP" H 1500 5500 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Angled_2x03" H 1500 4500 50  0001 C CNN
F 3 "" H 1500 4500 50  0000 C CNN
	1    1500 5700
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR03
U 1 1 577F83F5
P 1800 6000
F 0 "#PWR03" H 1800 5750 50  0001 C CNN
F 1 "GND" H 1800 5850 50  0000 C CNN
F 2 "" H 1800 6000 50  0000 C CNN
F 3 "" H 1800 6000 50  0000 C CNN
	1    1800 6000
	1    0    0    -1  
$EndComp
$Comp
L R_Small R1
U 1 1 577F8670
P 3700 1850
F 0 "R1" H 3730 1870 50  0000 L CNN
F 1 "10k" H 3730 1810 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" H 3700 1850 50  0001 C CNN
F 3 "" H 3700 1850 50  0000 C CNN
	1    3700 1850
	-1   0    0    1   
$EndComp
Text Label 3750 2250 0    60   ~ 0
/RESET
Text Label 900  5800 0    60   ~ 0
/RESET
Text Label 7400 3250 2    60   ~ 0
SCLK
Text Label 900  5700 0    60   ~ 0
SCLK
Text Label 1800 5700 0    60   ~ 0
PDI
Text Label 1250 5050 0    60   ~ 0
PDO
$Comp
L +3.3V #PWR04
U 1 1 57A6CBE5
P 3400 1550
F 0 "#PWR04" H 3400 1400 50  0001 C CNN
F 1 "+3.3V" H 3400 1690 50  0000 C CNN
F 2 "" H 3400 1550 50  0000 C CNN
F 3 "" H 3400 1550 50  0000 C CNN
	1    3400 1550
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR05
U 1 1 57A6D41C
P 9750 3550
F 0 "#PWR05" H 9750 3400 50  0001 C CNN
F 1 "+3.3V" H 9750 3690 50  0000 C CNN
F 2 "" H 9750 3550 50  0000 C CNN
F 3 "" H 9750 3550 50  0000 C CNN
	1    9750 3550
	0    -1   1    0   
$EndComp
$Comp
L C_Small C3
U 1 1 57A6D45A
P 3200 1900
F 0 "C3" H 3210 1970 50  0000 L CNN
F 1 "100n" H 3210 1820 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 3200 1900 50  0001 C CNN
F 3 "" H 3200 1900 50  0000 C CNN
	1    3200 1900
	1    0    0    -1  
$EndComp
$Comp
L C_Small C2
U 1 1 57A6D540
P 2950 1900
F 0 "C2" H 2960 1970 50  0000 L CNN
F 1 "100n" H 2960 1820 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 2950 1900 50  0001 C CNN
F 3 "" H 2950 1900 50  0000 C CNN
	1    2950 1900
	1    0    0    -1  
$EndComp
$Comp
L C_Small C1
U 1 1 57A6D575
P 2700 1900
F 0 "C1" H 2710 1970 50  0000 L CNN
F 1 "100n" H 2710 1820 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 2700 1900 50  0001 C CNN
F 3 "" H 2700 1900 50  0000 C CNN
	1    2700 1900
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR06
U 1 1 57A6D5B7
P 3200 2000
F 0 "#PWR06" H 3200 1750 50  0001 C CNN
F 1 "GND" H 3200 1850 50  0000 C CNN
F 2 "" H 3200 2000 50  0000 C CNN
F 3 "" H 3200 2000 50  0000 C CNN
	1    3200 2000
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR07
U 1 1 57A6D5DF
P 2950 2000
F 0 "#PWR07" H 2950 1750 50  0001 C CNN
F 1 "GND" H 2950 1850 50  0000 C CNN
F 2 "" H 2950 2000 50  0000 C CNN
F 3 "" H 2950 2000 50  0000 C CNN
	1    2950 2000
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR08
U 1 1 57A6D607
P 2700 2000
F 0 "#PWR08" H 2700 1750 50  0001 C CNN
F 1 "GND" H 2700 1850 50  0000 C CNN
F 2 "" H 2700 2000 50  0000 C CNN
F 3 "" H 2700 2000 50  0000 C CNN
	1    2700 2000
	1    0    0    -1  
$EndComp
Text Label 9300 2750 0    60   ~ 0
A0
Text Label 9300 2850 0    60   ~ 0
A1
$Comp
L R_Small R14
U 1 1 57A71E3E
P 7000 4750
F 0 "R14" H 7030 4770 50  0000 L CNN
F 1 "10k" H 7030 4710 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" H 7000 4750 50  0001 C CNN
F 3 "" H 7000 4750 50  0000 C CNN
	1    7000 4750
	1    0    0    -1  
$EndComp
$Comp
L R_Small R15
U 1 1 57A71F2A
P 7250 4750
F 0 "R15" H 7280 4770 50  0000 L CNN
F 1 "10k" H 7280 4710 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" H 7250 4750 50  0001 C CNN
F 3 "" H 7250 4750 50  0000 C CNN
	1    7250 4750
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR09
U 1 1 57A720BE
P 7000 4650
F 0 "#PWR09" H 7000 4500 50  0001 C CNN
F 1 "+3.3V" H 7000 4790 50  0000 C CNN
F 2 "" H 7000 4650 50  0000 C CNN
F 3 "" H 7000 4650 50  0000 C CNN
	1    7000 4650
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR010
U 1 1 57A7210C
P 7250 4650
F 0 "#PWR010" H 7250 4500 50  0001 C CNN
F 1 "+3.3V" H 7250 4790 50  0000 C CNN
F 2 "" H 7250 4650 50  0000 C CNN
F 3 "" H 7250 4650 50  0000 C CNN
	1    7250 4650
	1    0    0    -1  
$EndComp
Text Label 2750 5350 0    60   ~ 0
TACHa
Text Label 2750 5650 0    60   ~ 0
TACHb
$Comp
L R_Small R2
U 1 1 57B9366C
P 3200 5350
F 0 "R2" H 3230 5370 50  0000 L CNN
F 1 "100k" H 3230 5310 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" H 3200 5350 50  0001 C CNN
F 3 "" H 3200 5350 50  0000 C CNN
	1    3200 5350
	0    -1   1    0   
$EndComp
$Comp
L R_Small R3
U 1 1 57B93B3C
P 3200 5650
F 0 "R3" H 3230 5670 50  0000 L CNN
F 1 "100k" H 3230 5610 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" H 3200 5650 50  0001 C CNN
F 3 "" H 3200 5650 50  0000 C CNN
	1    3200 5650
	0    -1   1    0   
$EndComp
Text Label 9300 2950 0    60   ~ 0
TACHa
Text Label 9300 3050 0    60   ~ 0
TACHb
Text Label 7400 3350 2    60   ~ 0
MOSI
Text Label 7400 3450 2    60   ~ 0
MISO
Text Label 8550 5950 0    60   ~ 0
SCLK
Text Label 8550 6050 0    60   ~ 0
MOSI
Text Label 8550 6150 0    60   ~ 0
MISO
$Comp
L CONN_01X02 P3
U 1 1 57F3AD33
P 1700 1750
F 0 "P3" H 1700 1900 50  0000 C CNN
F 1 "PWR" V 1800 1750 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Angled_1x02" H 1700 1750 50  0001 C CNN
F 3 "" H 1700 1750 50  0000 C CNN
	1    1700 1750
	-1   0    0    -1  
$EndComp
$Comp
L GND #PWR011
U 1 1 57F3ADF3
P 1900 1800
F 0 "#PWR011" H 1900 1550 50  0001 C CNN
F 1 "GND" H 1900 1650 50  0000 C CNN
F 2 "" H 1900 1800 50  0000 C CNN
F 3 "" H 1900 1800 50  0000 C CNN
	1    1900 1800
	0    -1   -1   0   
$EndComp
$Comp
L CONN_02X05 P8
U 1 1 57F3AF9A
P 1150 4250
F 0 "P8" H 1150 4550 50  0000 C CNN
F 1 "JTAG" H 1150 3950 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Angled_2x05" H 1150 3050 50  0001 C CNN
F 3 "" H 1150 3050 50  0000 C CNN
	1    1150 4250
	1    0    0    -1  
$EndComp
Text Notes 750  4650 0    60   ~ 0
STK600 compatible
$Comp
L GND #PWR012
U 1 1 57F3B202
P 1400 4050
F 0 "#PWR012" H 1400 3800 50  0001 C CNN
F 1 "GND" H 1400 3900 50  0000 C CNN
F 2 "" H 1400 4050 50  0000 C CNN
F 3 "" H 1400 4050 50  0000 C CNN
	1    1400 4050
	0    -1   -1   0   
$EndComp
NoConn ~ 900  4350
$Comp
L GND #PWR013
U 1 1 57F3B46F
P 1400 4450
F 0 "#PWR013" H 1400 4200 50  0001 C CNN
F 1 "GND" H 1400 4300 50  0000 C CNN
F 2 "" H 1400 4450 50  0000 C CNN
F 3 "" H 1400 4450 50  0000 C CNN
	1    1400 4450
	0    -1   -1   0   
$EndComp
Text Label 1800 4250 2    60   ~ 0
/RESET
$Comp
L +3.3V #PWR014
U 1 1 57F3BA1E
P 1750 3750
F 0 "#PWR014" H 1750 3600 50  0001 C CNN
F 1 "+3.3V" H 1750 3890 50  0000 C CNN
F 2 "" H 1750 3750 50  0000 C CNN
F 3 "" H 1750 3750 50  0000 C CNN
	1    1750 3750
	1    0    0    -1  
$EndComp
$Comp
L R_Small R4
U 1 1 57F3C562
P 2050 4300
F 0 "R4" H 2080 4320 50  0000 L CNN
F 1 "4k7" H 2080 4260 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" H 2050 4300 50  0001 C CNN
F 3 "" H 2050 4300 50  0000 C CNN
	1    2050 4300
	1    0    0    -1  
$EndComp
$Comp
L R_Small R5
U 1 1 57F3C5E2
P 2250 4300
F 0 "R5" H 2280 4320 50  0000 L CNN
F 1 "4k7" H 2280 4260 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" H 2250 4300 50  0001 C CNN
F 3 "" H 2250 4300 50  0000 C CNN
	1    2250 4300
	1    0    0    -1  
$EndComp
$Comp
L R_Small R6
U 1 1 57F3C641
P 2450 4300
F 0 "R6" H 2480 4320 50  0000 L CNN
F 1 "4k7" H 2480 4260 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" H 2450 4300 50  0001 C CNN
F 3 "" H 2450 4300 50  0000 C CNN
	1    2450 4300
	1    0    0    -1  
$EndComp
$Comp
L R_Small R7
U 1 1 57F3C68B
P 2650 4300
F 0 "R7" H 2680 4320 50  0000 L CNN
F 1 "4k7" H 2680 4260 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" H 2650 4300 50  0001 C CNN
F 3 "" H 2650 4300 50  0000 C CNN
	1    2650 4300
	1    0    0    -1  
$EndComp
$Comp
L Crystal_Small Y1
U 1 1 57F3D15D
P 3950 2850
F 0 "Y1" H 3950 2950 50  0000 C CNN
F 1 "7.3728 MHz" V 4200 2850 50  0000 C BNN
F 2 "Crystals:Crystal_HC49-SD_SMD" H 3950 2850 50  0001 C CNN
F 3 "" H 3950 2850 50  0000 C CNN
F 4 "	174-52-030" H 3950 2850 60  0001 C CNN "1st Distrib. PN"
F 5 "https://www.elfa.se/sv/kristall-hc49-4h-mhz-iqd-lf-xtal003151/p/17452030?q=*&sort=Price:asc&filter_Frekvens~~MHz=8&filter_Category3=Kristaller+%2F+Oscillatorer&filter_Category4=Kristaller&filter_Buyable=1&page=3&origPageSize=50&simi=97.5" H 3950 2850 60  0001 C CNN "1st Distrib. Link"
	1    3950 2850
	0    1    1    0   
$EndComp
$Comp
L C_Small C6
U 1 1 57F3D2D0
P 3600 3000
F 0 "C6" H 3610 3070 50  0000 L CNN
F 1 "22p" H 3610 2920 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 3600 3000 50  0001 C CNN
F 3 "" H 3600 3000 50  0000 C CNN
	1    3600 3000
	0    -1   -1   0   
$EndComp
$Comp
L C_Small C5
U 1 1 57F3D374
P 3600 2700
F 0 "C5" H 3610 2770 50  0000 L CNN
F 1 "22p" H 3610 2620 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 3600 2700 50  0001 C CNN
F 3 "" H 3600 2700 50  0000 C CNN
	1    3600 2700
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR015
U 1 1 57F3D551
P 3500 2700
F 0 "#PWR015" H 3500 2450 50  0001 C CNN
F 1 "GND" H 3500 2550 50  0000 C CNN
F 2 "" H 3500 2700 50  0000 C CNN
F 3 "" H 3500 2700 50  0000 C CNN
	1    3500 2700
	0    1    1    0   
$EndComp
$Comp
L GND #PWR016
U 1 1 57F3D591
P 3500 3000
F 0 "#PWR016" H 3500 2750 50  0001 C CNN
F 1 "GND" H 3500 2850 50  0000 C CNN
F 2 "" H 3500 3000 50  0000 C CNN
F 3 "" H 3500 3000 50  0000 C CNN
	1    3500 3000
	0    1    1    0   
$EndComp
Text Label 1850 2600 0    60   ~ 0
f_ADC
Text Label 9300 3650 0    60   ~ 0
f_ADC
$Comp
L C_Small C4
U 1 1 57F3E5D3
P 3450 2150
F 0 "C4" H 3460 2220 50  0000 L CNN
F 1 "100n" H 3460 2070 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 3450 2150 50  0001 C CNN
F 3 "" H 3450 2150 50  0000 C CNN
	1    3450 2150
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR017
U 1 1 57F3E635
P 3450 2250
F 0 "#PWR017" H 3450 2000 50  0001 C CNN
F 1 "GND" H 3450 2100 50  0000 C CNN
F 2 "" H 3450 2250 50  0000 C CNN
F 3 "" H 3450 2250 50  0000 C CNN
	1    3450 2250
	1    0    0    -1  
$EndComp
Text Label 8550 4450 0    60   ~ 0
/DRDYa
Text Label 8550 4550 0    60   ~ 0
/DRDYb
Text Label 3500 5550 0    60   ~ 0
/DRDYa
Text Label 3500 5650 0    60   ~ 0
/DRDYb
Text Label 9300 2550 0    60   ~ 0
EN_APWR
Text Notes 2750 6100 0    60   ~ 0
These pins are purposefully assigned so\nTACH has higher priority than DRDY
Text Label 8550 5350 0    60   ~ 0
RX
Text Label 8550 5450 0    60   ~ 0
TX
Text Label 8550 6250 0    60   ~ 0
SDA
Text Label 8550 6350 0    60   ~ 0
SCL
NoConn ~ 9750 3850
NoConn ~ 9750 3950
NoConn ~ 9750 4050
NoConn ~ 9750 4150
NoConn ~ 9750 3250
Text Label 3650 4050 0    60   ~ 0
ADC0
Text Label 3650 4150 0    60   ~ 0
ADC1
Text Label 3650 4250 0    60   ~ 0
ADC2
Text Label 3650 4350 0    60   ~ 0
ADC3
Text Label 3650 5150 0    60   ~ 0
AIN0
Text Label 8550 4950 0    60   ~ 0
ADC0
Text Label 8550 5050 0    60   ~ 0
ADC1
Text Label 8550 5150 0    60   ~ 0
ADC2
Text Label 8550 5650 0    60   ~ 0
AIN0
Text Label 8550 5750 0    60   ~ 0
AIN1
Text Label 8550 5550 0    60   ~ 0
ADC3
NoConn ~ 4050 2450
$Comp
L L_Small L1
U 1 1 57F5D4DA
P 5350 1700
F 0 "L1" H 5380 1740 50  0000 L CNN
F 1 "10u" H 5380 1660 50  0000 L CNN
F 2 "Capacitors_SMD:C_1210" H 5350 1700 50  0001 C CNN
F 3 "" H 5350 1700 50  0000 C CNN
F 4 "300-63-549" H 5350 1700 60  0001 C CNN "1st Distrib. PN"
F 5 "https://www.elfa.se/sv/drossel-smd-10-uh-850-ma-20-wuerth-elektronik-74479887310a/p/30063549" H 5350 1700 60  0001 C CNN "1st Distrib. Link"
	1    5350 1700
	0    -1   -1   0   
$EndComp
$Comp
L C_Small C7
U 1 1 57F5D755
P 5650 1700
F 0 "C7" H 5660 1770 50  0000 L CNN
F 1 "100n" H 5660 1620 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 5650 1700 50  0001 C CNN
F 3 "" H 5650 1700 50  0000 C CNN
	1    5650 1700
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR018
U 1 1 57F5D863
P 5750 1700
F 0 "#PWR018" H 5750 1450 50  0001 C CNN
F 1 "GND" H 5750 1550 50  0000 C CNN
F 2 "" H 5750 1700 50  0000 C CNN
F 3 "" H 5750 1700 50  0000 C CNN
	1    5750 1700
	0    -1   -1   0   
$EndComp
$Comp
L C_Small C8
U 1 1 57F5DD88
P 3700 3250
F 0 "C8" H 3710 3320 50  0000 L CNN
F 1 "100n" H 3710 3170 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 3700 3250 50  0001 C CNN
F 3 "" H 3700 3250 50  0000 C CNN
	1    3700 3250
	0    1    1    0   
$EndComp
$Comp
L GND #PWR019
U 1 1 57F5DEF6
P 3600 3250
F 0 "#PWR019" H 3600 3000 50  0001 C CNN
F 1 "GND" H 3600 3100 50  0000 C CNN
F 2 "" H 3600 3250 50  0000 C CNN
F 3 "" H 3600 3250 50  0000 C CNN
	1    3600 3250
	0    1    1    0   
$EndComp
Text Notes 3300 3600 0    60   ~ 0
XMEM pins
$Comp
L C_Small C9
U 1 1 57F5E81C
P 3100 3400
F 0 "C9" H 3110 3470 50  0000 L CNN
F 1 "12p5" H 3110 3320 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 3100 3400 50  0001 C CNN
F 3 "" H 3100 3400 50  0000 C CNN
	1    3100 3400
	0    -1   -1   0   
$EndComp
$Comp
L C_Small C10
U 1 1 57F5E8A5
P 3100 4250
F 0 "C10" H 3110 4320 50  0000 L CNN
F 1 "12p5" H 3110 4170 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 3100 4250 50  0001 C CNN
F 3 "" H 3100 4250 50  0000 C CNN
	1    3100 4250
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR020
U 1 1 57F5EC0B
P 3000 4250
F 0 "#PWR020" H 3000 4000 50  0001 C CNN
F 1 "GND" H 3000 4100 50  0000 C CNN
F 2 "" H 3000 4250 50  0000 C CNN
F 3 "" H 3000 4250 50  0000 C CNN
	1    3000 4250
	0    1    1    0   
$EndComp
$Comp
L GND #PWR021
U 1 1 57F5EC5B
P 3000 3400
F 0 "#PWR021" H 3000 3150 50  0001 C CNN
F 1 "GND" H 3000 3250 50  0000 C CNN
F 2 "" H 3000 3400 50  0000 C CNN
F 3 "" H 3000 3400 50  0000 C CNN
	1    3000 3400
	0    1    1    0   
$EndComp
Text Notes 7000 4300 0    60   ~ 0
XMEM pins
Text Notes 7050 2650 0    60   ~ 0
XMEM pins
Text Label 9300 3350 0    60   ~ 0
/CS_ADCa
Text Label 9300 3450 0    60   ~ 0
/CS_ADCb
Text GLabel 4050 3450 0    60   Input ~ 0
/WR
Text GLabel 4050 3550 0    60   Input ~ 0
/RD
Text GLabel 4050 3650 0    60   Input ~ 0
ALE
$Sheet
S 8500 1100 700  400 
U 57F7FC80
F0 "xmem" 60
F1 "xmem.sch" 60
F2 "A16" I L 8500 1200 60 
$EndSheet
Text GLabel 6650 2250 2    60   Input ~ 0
AD0
Text GLabel 6650 2350 2    60   Input ~ 0
AD1
Text GLabel 6650 2450 2    60   Input ~ 0
AD2
Text GLabel 6650 2550 2    60   Input ~ 0
AD3
Text GLabel 6650 2650 2    60   Input ~ 0
AD4
Text GLabel 6650 2750 2    60   Input ~ 0
AD5
Text GLabel 6650 2850 2    60   Input ~ 0
AD6
Text GLabel 6650 2950 2    60   Input ~ 0
AD7
Text GLabel 6650 4050 2    60   Input ~ 0
A8
Text GLabel 6650 4150 2    60   Input ~ 0
A9
Text GLabel 6650 4250 2    60   Input ~ 0
A10
Text GLabel 6650 4350 2    60   Input ~ 0
A11
Text GLabel 6650 4450 2    60   Input ~ 0
A12
Text GLabel 6650 4550 2    60   Input ~ 0
A13
Text GLabel 6650 4650 2    60   Input ~ 0
A14
Text GLabel 6650 4750 2    60   Input ~ 0
A15
$Comp
L GND #PWR022
U 1 1 57FA4CAD
P 8350 1200
F 0 "#PWR022" H 8350 950 50  0001 C CNN
F 1 "GND" H 8350 1050 50  0000 C CNN
F 2 "" H 8350 1200 50  0000 C CNN
F 3 "" H 8350 1200 50  0000 C CNN
	1    8350 1200
	0    1    1    0   
$EndComp
Text Notes 8150 950  0    60   ~ 0
We could do some bankswitching here
$Comp
L Crystal_4Pin Y2
U 1 1 57FA4A33
P 3250 3800
F 0 "Y2" H 3250 3900 50  0000 C CNN
F 1 "32768 Hz" H 3250 3700 50  0000 C CNN
F 2 "Crystals:Crystal_SMD_0603_4Pads" H 3250 3800 50  0001 C CNN
F 3 "" H 3250 3800 50  0000 C CNN
	1    3250 3800
	0    1    1    0   
$EndComp
$Comp
L 74AHC1G125GW U1
U 1 1 57FA5818
P 2700 2500
F 0 "U1" H 2700 2700 60  0000 C CNN
F 1 "74AHC1G125GW" H 2700 2300 60  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-23-5" H 2700 2500 60  0001 C CNN
F 3 "" H 2700 2500 60  0000 C CNN
	1    2700 2500
	-1   0    0    -1  
$EndComp
$Comp
L GND #PWR023
U 1 1 57FA595F
P 3100 2600
F 0 "#PWR023" H 3100 2350 50  0001 C CNN
F 1 "GND" H 3100 2450 50  0000 C CNN
F 2 "" H 3100 2600 50  0000 C CNN
F 3 "" H 3100 2600 50  0000 C CNN
	1    3100 2600
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR024
U 1 1 57FA5AB3
P 3100 2400
F 0 "#PWR024" H 3100 2150 50  0001 C CNN
F 1 "GND" H 3100 2250 50  0000 C CNN
F 2 "" H 3100 2400 50  0000 C CNN
F 3 "" H 3100 2400 50  0000 C CNN
	1    3100 2400
	0    -1   -1   0   
$EndComp
$Comp
L +3.3V #PWR025
U 1 1 57FA5B02
P 2300 2400
F 0 "#PWR025" H 2300 2250 50  0001 C CNN
F 1 "+3.3V" H 2300 2540 50  0000 C CNN
F 2 "" H 2300 2400 50  0000 C CNN
F 3 "" H 2300 2400 50  0000 C CNN
	1    2300 2400
	0    -1   -1   0   
$EndComp
Text Notes 4750 1500 0    60   ~ 0
We're not really using any analog pins\nright now, but possibly in the future
$Comp
L +3.3V #PWR026
U 1 1 57FA76AD
P 1800 5450
F 0 "#PWR026" H 1800 5300 50  0001 C CNN
F 1 "+3.3V" H 1800 5590 50  0000 C CNN
F 2 "" H 1800 5450 50  0000 C CNN
F 3 "" H 1800 5450 50  0000 C CNN
	1    1800 5450
	1    0    0    -1  
$EndComp
Text Label 8550 5250 0    60   ~ 0
LO1
Text Label 8550 5850 0    60   ~ 0
LO2
Text Label 3650 5250 0    60   ~ 0
AIN1
Text Label 6900 5350 2    60   ~ 0
A0
Text Label 6900 5450 2    60   ~ 0
A1
Text Notes 6950 3650 0    60   ~ 0
LOx = Timer1
Text Label 9300 2650 0    60   ~ 0
CHANNEL
$Comp
L CONN_01X01 P4
U 1 1 57FAFC05
P 6950 3850
F 0 "P4" H 6950 3950 50  0000 C CNN
F 1 "PWM" V 7050 3850 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01" H 6950 3850 50  0001 C CNN
F 3 "" H 6950 3850 50  0000 C CNN
	1    6950 3850
	1    0    0    1   
$EndComp
$Comp
L C_Small C11
U 1 1 57FB0E13
P 2450 1900
F 0 "C11" H 2460 1970 50  0000 L CNN
F 1 "100n" H 2460 1820 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 2450 1900 50  0001 C CNN
F 3 "" H 2450 1900 50  0000 C CNN
	1    2450 1900
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR027
U 1 1 57FB0E99
P 2450 2000
F 0 "#PWR027" H 2450 1750 50  0001 C CNN
F 1 "GND" H 2450 1850 50  0000 C CNN
F 2 "" H 2450 2000 50  0000 C CNN
F 3 "" H 2450 2000 50  0000 C CNN
	1    2450 2000
	1    0    0    -1  
$EndComp
Text Notes 1800 2850 0    60   ~ 0
Run ADC synchronous with CPU
NoConn ~ 9750 3750
NoConn ~ 9750 2450
NoConn ~ 9750 2350
NoConn ~ 9750 2250
NoConn ~ 8950 4650
NoConn ~ 8950 4750
NoConn ~ 8950 4850
$Comp
L GND #PWR028
U 1 1 57FB2850
P 7650 5950
F 0 "#PWR028" H 7650 5700 50  0001 C CNN
F 1 "GND" H 7650 5800 50  0000 C CNN
F 2 "" H 7650 5950 50  0000 C CNN
F 3 "" H 7650 5950 50  0000 C CNN
	1    7650 5950
	1    0    0    -1  
$EndComp
Text Label 7100 5550 2    60   ~ 0
/CS_ADCa
Text Label 7100 5650 2    60   ~ 0
/CS_ADCb
$Comp
L R_Small R9
U 1 1 57FB39C4
P 7650 5300
F 0 "R9" H 7680 5320 50  0000 L CNN
F 1 "3k3" H 7680 5260 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" H 7650 5300 50  0001 C CNN
F 3 "" H 7650 5300 50  0000 C CNN
	1    7650 5300
	1    0    0    -1  
$EndComp
$Comp
L R_Small R8
U 1 1 57FB3A5A
P 7550 5300
F 0 "R8" H 7580 5320 50  0000 L CNN
F 1 "100k" H 7580 5260 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" H 7550 5300 50  0001 C CNN
F 3 "" H 7550 5300 50  0000 C CNN
	1    7550 5300
	-1   0    0    1   
$EndComp
$Comp
L +3.3V #PWR029
U 1 1 57FB4219
P 7550 5000
F 0 "#PWR029" H 7550 4850 50  0001 C CNN
F 1 "+3.3V" H 7550 5140 50  0000 C CNN
F 2 "" H 7550 5000 50  0000 C CNN
F 3 "" H 7550 5000 50  0000 C CNN
	1    7550 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 1700 5100 1950
Wire Wire Line
	5200 1700 5200 1950
Connection ~ 5100 1700
Connection ~ 5200 1700
Wire Wire Line
	5100 5950 5100 6050
Wire Wire Line
	5100 6050 5500 6050
Wire Wire Line
	5300 6050 5300 6150
Wire Wire Line
	5200 5950 5200 6050
Connection ~ 5200 6050
Wire Wire Line
	5500 6050 5500 5950
Connection ~ 5300 6050
Wire Wire Line
	1750 5700 2050 5700
Wire Wire Line
	2050 5700 2050 4950
Wire Wire Line
	2050 4950 4050 4950
Wire Wire Line
	1250 5600 1200 5600
Wire Wire Line
	1200 5600 1200 5050
Wire Wire Line
	1200 5050 4050 5050
Wire Wire Line
	1800 5450 1800 5600
Wire Wire Line
	1800 5600 1750 5600
Connection ~ 3400 1700
Wire Wire Line
	1800 6000 1800 5800
Wire Wire Line
	1800 5800 1750 5800
Wire Wire Line
	3700 2250 4050 2250
Wire Wire Line
	1250 5800 900  5800
Wire Wire Line
	6650 3250 7400 3250
Wire Wire Line
	1250 5700 900  5700
Wire Wire Line
	2700 1700 2700 1800
Wire Wire Line
	2950 1700 2950 1800
Connection ~ 2950 1700
Wire Wire Line
	3200 1700 3200 1800
Connection ~ 3200 1700
Wire Wire Line
	7250 4850 7250 6250
Connection ~ 7250 5050
Wire Wire Line
	6650 4950 7150 4950
Wire Wire Line
	7250 6250 8950 6250
Wire Wire Line
	3300 5350 4050 5350
Wire Wire Line
	3100 5350 2750 5350
Wire Wire Line
	3300 5650 3350 5650
Wire Wire Line
	3350 5650 3350 5450
Wire Wire Line
	3350 5450 4050 5450
Wire Wire Line
	2750 5650 3100 5650
Wire Wire Line
	9300 2950 9750 2950
Wire Wire Line
	9750 3050 9300 3050
Wire Wire Line
	7150 6350 8950 6350
Wire Wire Line
	7400 3350 6650 3350
Wire Wire Line
	7400 3450 6650 3450
Wire Wire Line
	8550 6150 8950 6150
Wire Wire Line
	8950 6050 8550 6050
Wire Wire Line
	8550 5950 8950 5950
Wire Wire Line
	1900 1700 2100 1700
Connection ~ 2700 1700
Wire Wire Line
	1950 4450 4050 4450
Wire Wire Line
	1950 4450 1950 3850
Wire Wire Line
	1950 3850 850  3850
Wire Wire Line
	850  3850 850  4050
Wire Wire Line
	850  4050 900  4050
Wire Wire Line
	700  4650 4050 4650
Wire Wire Line
	700  4650 700  4150
Wire Wire Line
	700  4150 900  4150
Wire Wire Line
	1750 4550 4050 4550
Wire Wire Line
	1750 4550 1750 4750
Wire Wire Line
	1750 4750 600  4750
Wire Wire Line
	600  4750 600  4250
Wire Wire Line
	600  4250 900  4250
Wire Wire Line
	1850 4750 4050 4750
Wire Wire Line
	1850 4750 1850 4850
Wire Wire Line
	1850 4850 500  4850
Wire Wire Line
	500  4850 500  4450
Wire Wire Line
	500  4450 900  4450
Wire Wire Line
	1800 4250 1400 4250
Wire Wire Line
	1750 3750 1750 4150
Wire Wire Line
	1400 4150 2650 4150
Wire Wire Line
	2650 4150 2650 4200
Connection ~ 1750 4150
Wire Wire Line
	2450 4200 2450 4150
Connection ~ 2450 4150
Wire Wire Line
	2250 4200 2250 4150
Connection ~ 2250 4150
Wire Wire Line
	2050 4200 2050 4150
Connection ~ 2050 4150
Wire Wire Line
	2050 4400 2050 4450
Connection ~ 2050 4450
Wire Wire Line
	2250 4400 2250 4550
Connection ~ 2250 4550
Wire Wire Line
	2450 4400 2450 4650
Connection ~ 2450 4650
Wire Wire Line
	2650 4400 2650 4750
Connection ~ 2650 4750
Wire Wire Line
	3700 3000 4050 3000
Wire Wire Line
	3950 3000 3950 2950
Wire Wire Line
	3700 2700 4050 2700
Connection ~ 3950 3000
Wire Wire Line
	3950 2750 3950 2700
Connection ~ 3950 2700
Wire Wire Line
	3100 2500 3900 2500
Wire Wire Line
	3900 2500 3900 2700
Connection ~ 3900 2700
Wire Wire Line
	1850 2600 2300 2600
Wire Wire Line
	9300 3650 9750 3650
Wire Wire Line
	3400 1700 3400 1550
Wire Wire Line
	3700 1950 3700 2250
Wire Wire Line
	3700 1700 3700 1750
Connection ~ 3700 1700
Wire Wire Line
	3700 2000 3450 2000
Wire Wire Line
	3450 2000 3450 2050
Connection ~ 3700 2000
Wire Wire Line
	8550 4550 8950 4550
Wire Wire Line
	8950 4450 8550 4450
Wire Wire Line
	3500 5650 4050 5650
Wire Wire Line
	4050 5550 3500 5550
Wire Wire Line
	8250 5350 8950 5350
Wire Wire Line
	7650 5450 8950 5450
Wire Wire Line
	7250 5050 6650 5050
Wire Wire Line
	7150 4950 7150 6350
Wire Wire Line
	8250 5350 8250 5150
Wire Wire Line
	8250 5150 6650 5150
Wire Wire Line
	4050 5150 3650 5150
Wire Wire Line
	3650 4350 4050 4350
Wire Wire Line
	3650 4250 4050 4250
Wire Wire Line
	4050 4150 3650 4150
Wire Wire Line
	3650 4050 4050 4050
Wire Wire Line
	8550 5150 8950 5150
Wire Wire Line
	8950 5050 8550 5050
Wire Wire Line
	8550 4950 8950 4950
Wire Wire Line
	8550 5750 8950 5750
Wire Wire Line
	8950 5650 8550 5650
Wire Wire Line
	8550 5550 8950 5550
Wire Wire Line
	5450 1700 5550 1700
Wire Wire Line
	5500 1700 5500 1950
Connection ~ 5500 1700
Wire Wire Line
	3800 3250 4050 3250
Wire Wire Line
	3250 3400 3250 3700
Wire Wire Line
	3250 3650 3500 3650
Wire Wire Line
	3500 3650 3500 3750
Wire Wire Line
	3500 3750 4050 3750
Wire Wire Line
	4050 3850 3500 3850
Wire Wire Line
	3500 3850 3500 3950
Wire Wire Line
	3500 3950 3250 3950
Wire Wire Line
	3250 3900 3250 4250
Wire Wire Line
	3200 3400 3250 3400
Connection ~ 3250 3650
Wire Wire Line
	3250 4250 3200 4250
Connection ~ 3250 3950
Wire Wire Line
	9750 2550 7600 2550
Wire Wire Line
	7600 2550 7600 3150
Wire Wire Line
	7600 3150 6650 3150
Wire Wire Line
	9300 2850 9750 2850
Wire Wire Line
	9750 3350 9300 3350
Wire Wire Line
	9300 3450 9750 3450
Wire Wire Line
	8350 1200 8500 1200
Wire Wire Line
	7100 5550 6650 5550
Wire Wire Line
	7100 5650 6650 5650
Wire Wire Line
	8450 5250 8950 5250
Wire Wire Line
	8400 5850 8950 5850
Wire Wire Line
	6650 3650 8450 3650
Wire Wire Line
	8450 3650 8450 5250
Wire Wire Line
	6650 3750 8400 3750
Wire Wire Line
	8400 3750 8400 5850
Wire Wire Line
	4050 5250 3650 5250
Wire Wire Line
	9300 2750 9750 2750
Wire Wire Line
	6750 3850 6650 3850
Wire Wire Line
	6900 5450 6650 5450
Wire Wire Line
	6900 5350 6650 5350
Wire Wire Line
	6650 3550 7700 3550
Wire Wire Line
	7700 3550 7700 2650
Wire Wire Line
	7700 2650 9750 2650
Wire Wire Line
	2450 1800 2450 1700
Connection ~ 2450 1700
Wire Wire Line
	7000 4850 7000 4950
Connection ~ 7000 4950
Wire Wire Line
	7300 5750 7350 5750
Wire Wire Line
	7300 5250 7300 5750
Wire Wire Line
	7300 5250 6650 5250
Wire Wire Line
	7650 5400 7650 5550
Connection ~ 7650 5450
Wire Wire Line
	7550 5400 7550 5450
Wire Wire Line
	7550 5450 7300 5450
Connection ~ 7300 5450
Wire Wire Line
	7550 5000 7550 5200
Wire Wire Line
	7550 5100 7650 5100
Wire Wire Line
	7650 5100 7650 5200
Connection ~ 7550 5100
$Comp
L Q_PMOS_GSD Q1
U 1 1 57FB4D8A
P 7550 5750
F 0 "Q1" H 7850 5800 50  0000 R CNN
F 1 "NTR4101PT1G" H 8250 5700 50  0000 R CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 7750 5850 50  0001 C CNN
F 3 "" H 7550 5750 50  0000 C CNN
F 4 "300-50-471" H 7550 5750 60  0001 C CNN "1st Distrib. PN"
F 5 "https://www.elfa.se/sv/smasignal-fet-sot-23-20-on-semiconductor-ntr4101pt1g/p/30050471" H 7550 5750 60  0001 C CNN "1st Distrib. Link"
	1    7550 5750
	1    0    0    1   
$EndComp
Text Notes 7700 5650 0    60   ~ 0
"Open-source"\n output
Text Notes 7700 5250 0    60   ~ 0
1 mA drive
Wire Wire Line
	2300 1700 5250 1700
$Comp
L D_Schottky_Small D1
U 1 1 57FBC9C0
P 2200 1700
F 0 "D1" H 2150 1780 50  0000 L CNN
F 1 "SMS240" H 2050 1600 50  0000 L CNN
F 2 "Diodes_SMD:MELF_Standard" V 2200 1700 50  0001 C CNN
F 3 "" V 2200 1700 50  0000 C CNN
F 4 "170-02-496" H 2200 1700 60  0001 C CNN "1st Distrib. PN"
F 5 "https://www.elfa.se/sv/schottkydiod-40-melf-diotec-sms240/p/17002496" H 2200 1700 60  0001 C CNN "1st Distrib. Link"
	1    2200 1700
	-1   0    0    1   
$EndComp
$EndSCHEMATC