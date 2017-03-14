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
LIBS:fieldmill8-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 9
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
L CONN_01X01 P7
U 1 1 57ADA50A
P 1400 5950
F 0 "P7" H 1400 6050 50  0000 C CNN
F 1 "M3" V 1500 5950 50  0000 C CNN
F 2 "SCUBE:M3_PTH" H 1400 5950 50  0001 C CNN
F 3 "" H 1400 5950 50  0000 C CNN
	1    1400 5950
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR01
U 1 1 57ADA565
P 1000 6250
F 0 "#PWR01" H 1000 6000 50  0001 C CNN
F 1 "GND" H 1000 6100 50  0000 C CNN
F 2 "" H 1000 6250 50  0000 C CNN
F 3 "" H 1000 6250 50  0000 C CNN
	1    1000 6250
	0    1    1    0   
$EndComp
$Comp
L CONN_01X01 P8
U 1 1 57ADC6AB
P 1400 6150
F 0 "P8" H 1400 6250 50  0000 C CNN
F 1 "M3" V 1500 6150 50  0000 C CNN
F 2 "SCUBE:M3_PTH" H 1400 6150 50  0001 C CNN
F 3 "" H 1400 6150 50  0000 C CNN
	1    1400 6150
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X01 P9
U 1 1 57ADC6D7
P 1400 6350
F 0 "P9" H 1400 6450 50  0000 C CNN
F 1 "M3" V 1500 6350 50  0000 C CNN
F 2 "SCUBE:M3_PTH" H 1400 6350 50  0001 C CNN
F 3 "" H 1400 6350 50  0000 C CNN
	1    1400 6350
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X01 P10
U 1 1 57ADC718
P 1400 6550
F 0 "P10" H 1400 6650 50  0000 C CNN
F 1 "M3" V 1500 6550 50  0000 C CNN
F 2 "SCUBE:M3_PTH" H 1400 6550 50  0001 C CNN
F 3 "" H 1400 6550 50  0000 C CNN
	1    1400 6550
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR02
U 1 1 57B04ED7
P 7950 2350
F 0 "#PWR02" H 7950 2100 50  0001 C CNN
F 1 "GND" H 7950 2200 50  0000 C CNN
F 2 "" H 7950 2350 50  0000 C CNN
F 3 "" H 7950 2350 50  0000 C CNN
	1    7950 2350
	0    -1   -1   0   
$EndComp
$Sheet
S 1300 2550 800  300 
U 57B05F2F
F0 "channel1" 60
F1 "channel.sch" 60
F2 "OUT+" I R 2100 2750 60 
F3 "OUT-" I R 2100 2650 60 
F4 "+2V5" I L 1300 2650 60 
F5 "-2V5" I L 1300 2750 60 
$EndSheet
$Sheet
S 1300 3050 800  300 
U 57B0A0EC
F0 "channel2" 60
F1 "channel.sch" 60
F2 "OUT+" I R 2100 3250 60 
F3 "OUT-" I R 2100 3150 60 
F4 "+2V5" I L 1300 3150 60 
F5 "-2V5" I L 1300 3250 60 
$EndSheet
$Sheet
S 1300 3600 800  300 
U 57B0A102
F0 "channel3" 60
F1 "channel.sch" 60
F2 "OUT+" I R 2100 3800 60 
F3 "OUT-" I R 2100 3700 60 
F4 "+2V5" I L 1300 3700 60 
F5 "-2V5" I L 1300 3800 60 
$EndSheet
$Comp
L CONN_01X01 P26
U 1 1 57B0B2D9
P 1400 7150
F 0 "P26" H 1400 7250 50  0000 C CNN
F 1 "M3" V 1500 7150 50  0000 C CNN
F 2 "SCUBE:M3_PTH" H 1400 7150 50  0001 C CNN
F 3 "" H 1400 7150 50  0000 C CNN
	1    1400 7150
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X01 P27
U 1 1 57B0B309
P 1400 7350
F 0 "P27" H 1400 7450 50  0000 C CNN
F 1 "M3" V 1500 7350 50  0000 C CNN
F 2 "SCUBE:M3_PTH" H 1400 7350 50  0001 C CNN
F 3 "" H 1400 7350 50  0000 C CNN
	1    1400 7350
	1    0    0    -1  
$EndComp
$Comp
L C_Small C23
U 1 1 57B0EABA
P 7800 2500
F 0 "C23" H 7810 2570 50  0000 L CNN
F 1 "10u" H 7810 2420 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 7800 2500 50  0001 C CNN
F 3 "" H 7800 2500 50  0000 C CNN
	1    7800 2500
	1    0    0    -1  
$EndComp
$Comp
L C_Small C22
U 1 1 57B0EB49
P 7800 2200
F 0 "C22" H 7810 2270 50  0000 L CNN
F 1 "10u" H 7810 2120 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 7800 2200 50  0001 C CNN
F 3 "" H 7800 2200 50  0000 C CNN
	1    7800 2200
	1    0    0    -1  
$EndComp
$Comp
L ADS131A04 U3
U 1 1 580644B5
P 4400 3300
F 0 "U3" H 4400 3300 60  0000 C CNN
F 1 "ADS131A04" H 4400 3400 60  0000 C CNN
F 2 "Housings_QFP:LQFP-32_5x5mm_Pitch0.5mm" H 4250 3400 60  0001 C CNN
F 3 "" H 4250 3400 60  0000 C CNN
	1    4400 3300
	1    0    0    -1  
$EndComp
$Comp
L R_Small R15
U 1 1 58069626
P 2500 2550
F 0 "R15" H 2530 2570 50  0000 L CNN
F 1 "10k" H 2530 2510 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 2500 2550 50  0001 C CNN
F 3 "" H 2500 2550 50  0000 C CNN
	1    2500 2550
	0    1    1    0   
$EndComp
$Comp
L R_Small R17
U 1 1 580697DA
P 2650 2850
F 0 "R17" H 2680 2870 50  0000 L CNN
F 1 "10k" H 2680 2810 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 2650 2850 50  0001 C CNN
F 3 "" H 2650 2850 50  0000 C CNN
	1    2650 2850
	0    -1   -1   0   
$EndComp
$Comp
L R_Small R26
U 1 1 58069929
P 2500 3050
F 0 "R26" H 2530 3070 50  0000 L CNN
F 1 "10k" H 2530 3010 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 2500 3050 50  0001 C CNN
F 3 "" H 2500 3050 50  0000 C CNN
	1    2500 3050
	0    1    1    0   
$EndComp
$Comp
L R_Small R27
U 1 1 58069A4D
P 2650 3350
F 0 "R27" H 2680 3370 50  0000 L CNN
F 1 "10k" H 2680 3310 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 2650 3350 50  0001 C CNN
F 3 "" H 2650 3350 50  0000 C CNN
	1    2650 3350
	0    -1   -1   0   
$EndComp
$Comp
L R_Small R28
U 1 1 58069AEA
P 2500 3600
F 0 "R28" H 2530 3620 50  0000 L CNN
F 1 "10k" H 2530 3560 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 2500 3600 50  0001 C CNN
F 3 "" H 2500 3600 50  0000 C CNN
	1    2500 3600
	0    1    1    0   
$EndComp
$Comp
L R_Small R29
U 1 1 58069B88
P 2650 3900
F 0 "R29" H 2680 3920 50  0000 L CNN
F 1 "10k" H 2680 3860 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 2650 3900 50  0001 C CNN
F 3 "" H 2650 3900 50  0000 C CNN
	1    2650 3900
	0    -1   -1   0   
$EndComp
$Comp
L C_Small C10
U 1 1 58069C0A
P 2800 2700
F 0 "C10" H 2810 2770 50  0000 L CNN
F 1 "1n" H 2810 2620 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 2800 2700 50  0001 C CNN
F 3 "" H 2800 2700 50  0000 C CNN
	1    2800 2700
	1    0    0    -1  
$EndComp
$Comp
L C_Small C11
U 1 1 58069D62
P 2800 3200
F 0 "C11" H 2810 3270 50  0000 L CNN
F 1 "1n" H 2810 3120 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 2800 3200 50  0001 C CNN
F 3 "" H 2800 3200 50  0000 C CNN
	1    2800 3200
	1    0    0    -1  
$EndComp
$Comp
L C_Small C12
U 1 1 58069E07
P 2800 3750
F 0 "C12" H 2810 3820 50  0000 L CNN
F 1 "1n" H 2810 3670 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 2800 3750 50  0001 C CNN
F 3 "" H 2800 3750 50  0000 C CNN
	1    2800 3750
	1    0    0    -1  
$EndComp
$Comp
L C_Small C13
U 1 1 58075867
P 4300 4400
F 0 "C13" H 4310 4470 50  0000 L CNN
F 1 "1u" H 4310 4320 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 4300 4400 50  0001 C CNN
F 3 "" H 4300 4400 50  0000 C CNN
	1    4300 4400
	0    1    1    0   
$EndComp
$Comp
L C_Small C16
U 1 1 58076106
P 4550 4400
F 0 "C16" H 4560 4470 50  0000 L CNN
F 1 "1u" H 4560 4320 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 4550 4400 50  0001 C CNN
F 3 "" H 4550 4400 50  0000 C CNN
	1    4550 4400
	1    0    0    -1  
$EndComp
$Comp
L C_Small C17
U 1 1 580766A5
P 4750 4400
F 0 "C17" H 4760 4470 50  0000 L CNN
F 1 "1u" H 4760 4320 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 4750 4400 50  0001 C CNN
F 3 "" H 4750 4400 50  0000 C CNN
	1    4750 4400
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR03
U 1 1 58076CF5
P 4750 4500
F 0 "#PWR03" H 4750 4250 50  0001 C CNN
F 1 "GND" H 4750 4350 50  0000 C CNN
F 2 "" H 4750 4500 50  0000 C CNN
F 3 "" H 4750 4500 50  0000 C CNN
	1    4750 4500
	1    0    0    -1  
$EndComp
$Comp
L C_Small C5
U 1 1 58078BF1
P 4450 2150
F 0 "C5" H 4460 2220 50  0000 L CNN
F 1 "1u" H 4460 2070 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 4450 2150 50  0001 C CNN
F 3 "" H 4450 2150 50  0000 C CNN
	1    4450 2150
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR04
U 1 1 58079052
P 4450 2050
F 0 "#PWR04" H 4450 1800 50  0001 C CNN
F 1 "GND" H 4450 1900 50  0000 C CNN
F 2 "" H 4450 2050 50  0000 C CNN
F 3 "" H 4450 2050 50  0000 C CNN
	1    4450 2050
	-1   0    0    1   
$EndComp
NoConn ~ 4650 2450
$Comp
L GND #PWR05
U 1 1 580791C3
P 4550 2450
F 0 "#PWR05" H 4550 2200 50  0001 C CNN
F 1 "GND" H 4550 2300 50  0000 C CNN
F 2 "" H 4550 2450 50  0000 C CNN
F 3 "" H 4550 2450 50  0000 C CNN
	1    4550 2450
	-1   0    0    1   
$EndComp
$Comp
L R_Small R11
U 1 1 580792FA
P 4900 2400
F 0 "R11" H 4930 2420 50  0000 L CNN
F 1 "50" H 4930 2360 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 4900 2400 50  0001 C CNN
F 3 "" H 4900 2400 50  0000 C CNN
	1    4900 2400
	0    -1   -1   0   
$EndComp
$Comp
L R_Small R10
U 1 1 58079FD7
P 3900 2400
F 0 "R10" H 3930 2420 50  0000 L CNN
F 1 "470" H 3930 2360 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 3900 2400 50  0001 C CNN
F 3 "" H 3900 2400 50  0000 C CNN
	1    3900 2400
	0    1    1    0   
$EndComp
$Comp
L R_Small R8
U 1 1 5807A2D4
P 3900 2200
F 0 "R8" H 3930 2220 50  0000 L CNN
F 1 "470" H 3930 2160 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 3900 2200 50  0001 C CNN
F 3 "" H 3900 2200 50  0000 C CNN
	1    3900 2200
	0    1    1    0   
$EndComp
$Comp
L R_Small R7
U 1 1 5807A3B7
P 3900 2000
F 0 "R7" H 3930 2020 50  0000 L CNN
F 1 "470" H 3930 1960 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 3900 2000 50  0001 C CNN
F 3 "" H 3900 2000 50  0000 C CNN
	1    3900 2000
	0    1    1    0   
$EndComp
$Comp
L R_Small R6
U 1 1 5807A4A1
P 3900 1800
F 0 "R6" H 3930 1820 50  0000 L CNN
F 1 "470" H 3930 1760 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 3900 1800 50  0001 C CNN
F 3 "" H 3900 1800 50  0000 C CNN
	1    3900 1800
	0    1    1    0   
$EndComp
$Comp
L R_Small R4
U 1 1 5807A58A
P 3900 1600
F 0 "R4" H 3930 1620 50  0000 L CNN
F 1 "470" H 3930 1560 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 3900 1600 50  0001 C CNN
F 3 "" H 3900 1600 50  0000 C CNN
	1    3900 1600
	0    1    1    0   
$EndComp
$Comp
L R_Small R2
U 1 1 5807A676
P 3900 1400
F 0 "R2" H 3930 1420 50  0000 L CNN
F 1 "470" H 3930 1360 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 3900 1400 50  0001 C CNN
F 3 "" H 3900 1400 50  0000 C CNN
	1    3900 1400
	0    1    1    0   
$EndComp
$Comp
L GND #PWR06
U 1 1 5807B872
P 3700 2200
F 0 "#PWR06" H 3700 1950 50  0001 C CNN
F 1 "GND" H 3700 2050 50  0000 C CNN
F 2 "" H 3700 2200 50  0000 C CNN
F 3 "" H 3700 2200 50  0000 C CNN
	1    3700 2200
	0    1    1    0   
$EndComp
Text Notes 3100 1250 0    60   ~ 0
ADC is configured via population of these resistors
$Comp
L +3V3 #PWR07
U 1 1 5807C0BC
P 5950 3700
F 0 "#PWR07" H 5950 3550 50  0001 C CNN
F 1 "+3V3" H 5950 3840 50  0000 C CNN
F 2 "" H 5950 3700 50  0000 C CNN
F 3 "" H 5950 3700 50  0000 C CNN
	1    5950 3700
	-1   0    0    1   
$EndComp
Text Label 5500 2950 0    60   ~ 0
f_ADC
Text Label 5500 3050 0    60   ~ 0
/CS_ADC
Text Label 5500 3150 0    60   ~ 0
SCLK
Text Label 5500 3250 0    60   ~ 0
MISO
Text Label 5500 3350 0    60   ~ 0
MOSI
Text Label 5500 3450 0    60   ~ 0
/DRDY
Text Label 5500 3550 0    60   ~ 0
/DONE
Text Notes 2400 4050 0    60   ~ 0
8 kHz low-pass
$Comp
L R_Small R1
U 1 1 58A538CF
P 5800 3650
F 0 "R1" H 5830 3670 50  0000 L CNN
F 1 "150" H 5830 3610 50  0000 L CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" H 5800 3650 50  0001 C CNN
F 3 "" H 5800 3650 50  0000 C CNN
	1    5800 3650
	0    1    1    0   
$EndComp
Text Notes 5500 4450 0    39   ~ 0
IOVDD can be down to 1.65 V,\nbut I/O must be < IOVDD+0.3\nTherefore let IOVDD = 3.0 .. 3.3 V\nI(mA) = 0.8 + 1.0 drive\nShunt <= 166 Ohm\n3.3^2/150 = 73 mW
$Sheet
S 7800 5200 1050 550 
U 58A6604F
F0 "Tachometers" 60
F1 "tachs.sch" 60
F2 "ITACH" I L 7800 5300 60 
F3 "RAW_ITACH" I L 7800 5500 60 
$EndSheet
Text Label 6700 2550 0    60   ~ 0
ITACH
$Comp
L VDD #PWR08
U 1 1 58B4831E
P 5400 4350
F 0 "#PWR08" H 5400 4200 50  0001 C CNN
F 1 "VDD" H 5400 4500 50  0000 C CNN
F 2 "" H 5400 4350 50  0000 C CNN
F 3 "" H 5400 4350 50  0000 C CNN
	1    5400 4350
	-1   0    0    1   
$EndComp
$Comp
L VDD #PWR09
U 1 1 58B483F3
P 4350 2450
F 0 "#PWR09" H 4350 2300 50  0001 C CNN
F 1 "VDD" H 4350 2600 50  0000 C CNN
F 2 "" H 4350 2450 50  0000 C CNN
F 3 "" H 4350 2450 50  0000 C CNN
	1    4350 2450
	1    0    0    -1  
$EndComp
$Comp
L VDD #PWR010
U 1 1 58B48814
P 3700 1600
F 0 "#PWR010" H 3700 1450 50  0001 C CNN
F 1 "VDD" H 3700 1750 50  0000 C CNN
F 2 "" H 3700 1600 50  0000 C CNN
F 3 "" H 3700 1600 50  0000 C CNN
	1    3700 1600
	0    -1   -1   0   
$EndComp
$Sheet
S 550  2550 700  300 
U 58B4D07F
F0 "vreg1" 60
F1 "vreg.sch" 60
F2 "+2V5" I R 1250 2650 60 
F3 "-2V5" I R 1250 2750 60 
$EndSheet
$Comp
L +5V #PWR011
U 1 1 58B4E1AF
P 7900 2050
F 0 "#PWR011" H 7900 1900 50  0001 C CNN
F 1 "+5V" H 7900 2190 50  0000 C CNN
F 2 "" H 7900 2050 50  0000 C CNN
F 3 "" H 7900 2050 50  0000 C CNN
	1    7900 2050
	0    1    1    0   
$EndComp
$Comp
L -5V #PWR10
U 1 1 58B4E255
P 7900 2650
F 0 "#PWR10" H 7900 2750 50  0001 C CNN
F 1 "-5V" H 7900 2800 50  0000 C CNN
F 2 "" H 7900 2650 50  0000 C CNN
F 3 "" H 7900 2650 50  0000 C CNN
	1    7900 2650
	0    1    1    0   
$EndComp
Text Notes 4750 6300 0    60   ~ 0
SMD hylslister:\n143-56-849 2x10\n300-24-844 2x15\n300-24-852 2x17\n300-24-857 2x20
$Comp
L GND #PWR012
U 1 1 58BD6877
P 3550 3550
F 0 "#PWR012" H 3550 3300 50  0001 C CNN
F 1 "GND" H 3550 3400 50  0000 C CNN
F 2 "" H 3550 3550 50  0000 C CNN
F 3 "" H 3550 3550 50  0000 C CNN
	1    3550 3550
	0    1    1    0   
$EndComp
$Comp
L R_Small R3
U 1 1 58BD6E21
P 3350 4000
F 0 "R3" H 3380 4020 50  0000 L CNN
F 1 "10k" H 3380 3960 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 3350 4000 50  0001 C CNN
F 3 "" H 3350 4000 50  0000 C CNN
	1    3350 4000
	1    0    0    -1  
$EndComp
$Comp
L R_Small R5
U 1 1 58BD6FB7
P 3550 4000
F 0 "R5" H 3580 4020 50  0000 L CNN
F 1 "10k" H 3580 3960 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 3550 4000 50  0001 C CNN
F 3 "" H 3550 4000 50  0000 C CNN
	1    3550 4000
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR013
U 1 1 58BD7078
P 3550 4100
F 0 "#PWR013" H 3550 3850 50  0001 C CNN
F 1 "GND" H 3550 3950 50  0000 C CNN
F 2 "" H 3550 4100 50  0000 C CNN
F 3 "" H 3550 4100 50  0000 C CNN
	1    3550 4100
	1    0    0    -1  
$EndComp
Text Notes 2150 4700 0    60   ~ 0
AVDD current <= 4.0 mA
Text Notes 2700 7450 0    60   ~ 0
AD5551: external ref, bipolar\nAD7304: external ref, quad, bipolar\nAD7249: internal ref, dual, bipolar (+-15 Vsupply!), pricey, W-SOIC finns i lager (farnell)\nAD5722R: alternative to AD7249, TSSOP :(\nDAC2932: fairly complex..\nLTC1650: external ref, +-5V, 16-bit\nSLAS269F: internal ref, octal, bipolar\nDAC714: internal ref, single, bipolar, +-11.4 minimum :(\nMAX526: extern ref, parallel, bipolar\nMAX504ESD: internal ref, bipolar, good accuracy, -40..85°C, in stock @ farnell\nUse SPDT switch to toggle between DAC and GND
Text Notes 2600 6250 0    60   ~ 0
TODO: DS18B20 SO-8
$Comp
L MAX504 U2
U 1 1 58BF19BF
P 8500 3500
F 0 "U2" H 8500 4000 60  0000 C CNN
F 1 "MAX504" H 8500 3900 60  0000 C CNN
F 2 "Housings_SOIC:SOIC-14_3.9x8.7mm_Pitch1.27mm" H 8500 3500 60  0001 C CNN
F 3 "" H 8500 3500 60  0000 C CNN
	1    8500 3500
	1    0    0    -1  
$EndComp
$Comp
L ADG601 U1
U 1 1 58BF1A78
P 9850 3400
F 0 "U1" H 9850 3700 60  0000 C CNN
F 1 "ADG601" H 9850 3600 60  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-23-6" H 9850 3400 60  0001 C CNN
F 3 "" H 9850 3400 60  0000 C CNN
	1    9850 3400
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR014
U 1 1 58BF21A4
P 9350 2950
F 0 "#PWR014" H 9350 2800 50  0001 C CNN
F 1 "+5V" H 9350 3090 50  0000 C CNN
F 2 "" H 9350 2950 50  0000 C CNN
F 3 "" H 9350 2950 50  0000 C CNN
	1    9350 2950
	1    0    0    -1  
$EndComp
$Comp
L -5V #PWR19
U 1 1 58BF224E
P 9350 4000
F 0 "#PWR19" H 9350 4100 50  0001 C CNN
F 1 "-5V" H 9350 4150 50  0000 C CNN
F 2 "" H 9350 4000 50  0000 C CNN
F 3 "" H 9350 4000 50  0000 C CNN
	1    9350 4000
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR015
U 1 1 58BF22D5
P 8500 4000
F 0 "#PWR015" H 8500 3750 50  0001 C CNN
F 1 "GND" H 8500 3850 50  0000 C CNN
F 2 "" H 8500 4000 50  0000 C CNN
F 3 "" H 8500 4000 50  0000 C CNN
	1    8500 4000
	1    0    0    -1  
$EndComp
$Comp
L C_Small C1
U 1 1 58BF3201
P 9150 3800
F 0 "C1" H 9160 3870 50  0000 L CNN
F 1 "33u" H 9160 3720 50  0000 L CNN
F 2 "Capacitors_SMD:C_1210_HandSoldering" H 9150 3800 50  0001 C CNN
F 3 "" H 9150 3800 50  0000 C CNN
F 4 "Murata" H 9150 3800 60  0001 C CNN "Mfg. Name"
F 5 "GRM32ER71A476KE15L" H 9150 3800 60  0001 C CNN "Mfg. Part Number"
F 6 "165-76-820" H 9150 3800 60  0001 C CNN "1st Distrib. PN"
F 7 "https://www.elfa.se/sv/kondensator-47-uf-10-vdc-1210-murata-grm32er71a476ke15l/p/16576820" H 9150 3800 60  0001 C CNN "1st Distrib. Link"
	1    9150 3800
	1    0    0    -1  
$EndComp
$Comp
L R_Small R9
U 1 1 58BF4228
P 10450 3550
F 0 "R9" H 10480 3570 50  0000 L CNN
F 1 "10k" H 10480 3510 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 10450 3550 50  0001 C CNN
F 3 "" H 10450 3550 50  0000 C CNN
	1    10450 3550
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR016
U 1 1 58BF4302
P 10300 3750
F 0 "#PWR016" H 10300 3500 50  0001 C CNN
F 1 "GND" H 10300 3600 50  0000 C CNN
F 2 "" H 10300 3750 50  0000 C CNN
F 3 "" H 10300 3750 50  0000 C CNN
	1    10300 3750
	1    0    0    -1  
$EndComp
Text GLabel 10600 3400 2    60   Input ~ 0
VGND
$Comp
L +5V #PWR017
U 1 1 58BF5285
P 7650 3400
F 0 "#PWR017" H 7650 3250 50  0001 C CNN
F 1 "+5V" H 7650 3540 50  0000 C CNN
F 2 "" H 7650 3400 50  0000 C CNN
F 3 "" H 7650 3400 50  0000 C CNN
	1    7650 3400
	0    -1   -1   0   
$EndComp
Text Label 7650 3300 0    60   ~ 0
MOSI
Text Label 7650 3500 0    60   ~ 0
SCLK
NoConn ~ 7950 3700
Text Label 6700 2650 0    60   ~ 0
/CS_VGND
Text Label 6700 2750 0    60   ~ 0
EN_VGND
Text Notes 8700 2650 0    60   ~ 0
VGND circuit\nUse bipolar ADC to set level,\nanalog switch to enable it.\nHaving a switch avoids the problem of\nthe ADC having +- 0.5 LSB uncertainty
$Comp
L DS18B20Z U5
U 1 1 58C3F75A
P 6250 5050
F 0 "U5" H 6250 5300 60  0000 C CNN
F 1 "DS18B20Z" H 6250 5200 39  0000 C CNN
F 2 "Housings_SOIC:SOIC-8_3.9x4.9mm_Pitch1.27mm" H 6250 5050 60  0001 C CNN
F 3 "" H 6250 5050 60  0000 C CNN
	1    6250 5050
	1    0    0    -1  
$EndComp
Text Label 6700 2850 0    60   ~ 0
ONEWIRE
$Comp
L GND #PWR018
U 1 1 58C40103
P 6750 5200
F 0 "#PWR018" H 6750 4950 50  0001 C CNN
F 1 "GND" H 6750 5050 50  0000 C CNN
F 2 "" H 6750 5200 50  0000 C CNN
F 3 "" H 6750 5200 50  0000 C CNN
	1    6750 5200
	0    -1   -1   0   
$EndComp
$Comp
L +3V3 #PWR019
U 1 1 58C40CB6
P 5150 5100
F 0 "#PWR019" H 5150 4950 50  0001 C CNN
F 1 "+3V3" H 5150 5240 50  0000 C CNN
F 2 "" H 5150 5100 50  0000 C CNN
F 3 "" H 5150 5100 50  0000 C CNN
	1    5150 5100
	0    -1   -1   0   
$EndComp
$Comp
L R_Small R12
U 1 1 58C40DC3
P 5300 5100
F 0 "R12" H 5330 5120 50  0000 L CNN
F 1 "120" H 5330 5060 50  0000 L CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" H 5300 5100 50  0001 C CNN
F 3 "" H 5300 5100 50  0000 C CNN
	1    5300 5100
	0    1    1    0   
$EndComp
$Comp
L C_Small C2
U 1 1 58C41196
P 5550 5250
F 0 "C2" H 5560 5320 50  0000 L CNN
F 1 "1u" H 5560 5170 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 5550 5250 50  0001 C CNN
F 3 "" H 5550 5250 50  0000 C CNN
	1    5550 5250
	1    0    0    -1  
$EndComp
Text Notes 4900 5750 0    60   ~ 0
(3.3-3.1)/1.5e-3 = 133 Ohm\n3.3^2/120 = 90 mW
$Comp
L PWR_FLAG #FLG020
U 1 1 58C44A30
P 7450 2200
F 0 "#FLG020" H 7450 2295 50  0001 C CNN
F 1 "PWR_FLAG" H 7450 2380 50  0000 C CNN
F 2 "" H 7450 2200 50  0000 C CNN
F 3 "" H 7450 2200 50  0000 C CNN
	1    7450 2200
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG021
U 1 1 58C44C59
P 7250 2000
F 0 "#FLG021" H 7250 2095 50  0001 C CNN
F 1 "PWR_FLAG" H 7250 2180 50  0000 C CNN
F 2 "" H 7250 2000 50  0000 C CNN
F 3 "" H 7250 2000 50  0000 C CNN
	1    7250 2000
	1    0    0    -1  
$EndComp
Connection ~ 10450 3400
Connection ~ 10300 3700
Wire Wire Line
	10450 3700 10300 3700
Wire Wire Line
	10450 3650 10450 3700
Wire Wire Line
	10450 3400 10450 3450
Wire Wire Line
	10300 3400 10600 3400
Wire Wire Line
	10300 3500 10300 3750
Connection ~ 9150 3650
Wire Wire Line
	7950 2950 7950 3200
Wire Wire Line
	9150 2950 7950 2950
Connection ~ 9100 3400
Wire Wire Line
	9100 3200 9100 3400
Wire Wire Line
	9050 3200 9100 3200
Connection ~ 9050 3950
Wire Wire Line
	9150 3950 9150 3900
Connection ~ 9050 3650
Wire Wire Line
	9150 3650 9050 3650
Wire Wire Line
	9150 2950 9150 3700
Wire Wire Line
	9050 3600 9050 3700
Connection ~ 8500 3950
Wire Wire Line
	8500 4000 8500 3950
Wire Wire Line
	7950 3950 7950 3800
Wire Wire Line
	7950 3950 9150 3950
Wire Wire Line
	9050 3950 9050 3800
Connection ~ 9350 3500
Wire Wire Line
	9350 4000 9350 3500
Connection ~ 9350 3300
Wire Wire Line
	9350 2950 9350 3300
Wire Wire Line
	9050 3400 9400 3400
Wire Wire Line
	9050 3500 9400 3500
Wire Wire Line
	9050 3300 9400 3300
Connection ~ 3450 3800
Wire Wire Line
	3450 3650 3450 3800
Wire Wire Line
	3550 3650 3450 3650
Wire Wire Line
	3350 3800 3350 3900
Wire Wire Line
	3350 3800 3550 3800
Wire Wire Line
	3550 3800 3550 3900
Wire Wire Line
	3350 5500 3350 4100
Wire Wire Line
	7800 5500 3350 5500
Wire Wire Line
	4250 4200 4150 4200
Connection ~ 7800 2050
Wire Wire Line
	7650 2050 7900 2050
Wire Wire Line
	7650 2250 7650 2050
Wire Wire Line
	6150 2250 7650 2250
Connection ~ 7800 2650
Wire Wire Line
	7650 2450 7650 2650
Wire Wire Line
	7650 2650 7900 2650
Connection ~ 7800 2350
Wire Wire Line
	7800 2300 7800 2400
Wire Wire Line
	6150 2350 7950 2350
Wire Wire Line
	6150 2550 7250 2550
Wire Wire Line
	7250 2550 7250 5300
Wire Wire Line
	7250 5300 7800 5300
Wire Wire Line
	2250 3700 2250 3600
Wire Wire Line
	2100 3700 2250 3700
Wire Wire Line
	2250 3800 2100 3800
Wire Wire Line
	2250 3900 2250 3800
Wire Wire Line
	2250 2550 2400 2550
Wire Wire Line
	2250 2650 2250 2550
Wire Wire Line
	2100 2650 2250 2650
Wire Wire Line
	2250 2750 2100 2750
Wire Wire Line
	2250 2850 2250 2750
Wire Wire Line
	2550 2850 2250 2850
Wire Wire Line
	2250 3050 2400 3050
Wire Wire Line
	2250 3150 2250 3050
Wire Wire Line
	2100 3150 2250 3150
Wire Wire Line
	2250 3250 2100 3250
Wire Wire Line
	2250 3350 2250 3250
Wire Wire Line
	2550 3350 2250 3350
Wire Wire Line
	5250 3650 5700 3650
Connection ~ 5400 4250
Wire Wire Line
	2250 3900 2550 3900
Wire Wire Line
	5400 3650 5400 4350
Wire Wire Line
	5250 3550 6650 3550
Wire Wire Line
	5350 2950 6650 2950
Wire Wire Line
	5350 2400 5350 2950
Wire Wire Line
	5000 2400 5350 2400
Wire Wire Line
	4750 2400 4750 2450
Wire Wire Line
	4800 2400 4750 2400
Wire Wire Line
	5250 3050 6650 3050
Wire Wire Line
	5250 3150 6650 3150
Wire Wire Line
	5250 3250 6650 3250
Wire Wire Line
	5250 3350 6650 3350
Wire Wire Line
	5250 3450 6650 3450
Connection ~ 3750 2200
Wire Wire Line
	3700 2200 3800 2200
Wire Wire Line
	3750 2400 3800 2400
Wire Wire Line
	3750 2000 3750 2400
Wire Wire Line
	3800 2000 3750 2000
Connection ~ 3750 1600
Wire Wire Line
	3700 1600 3800 1600
Wire Wire Line
	3750 1800 3800 1800
Wire Wire Line
	3750 1400 3750 1800
Wire Wire Line
	3800 1400 3750 1400
Connection ~ 4250 2000
Wire Wire Line
	4250 1400 4000 1400
Wire Wire Line
	4250 2000 4000 2000
Wire Wire Line
	4250 1400 4250 2450
Connection ~ 4150 2200
Wire Wire Line
	4150 1600 4000 1600
Wire Wire Line
	4150 2200 4000 2200
Wire Wire Line
	4150 1600 4150 2450
Connection ~ 4050 2400
Wire Wire Line
	4050 1800 4000 1800
Wire Wire Line
	4050 2400 4000 2400
Wire Wire Line
	4050 1800 4050 2450
Wire Wire Line
	4450 2250 4450 2450
Connection ~ 4450 4400
Connection ~ 4450 4550
Wire Wire Line
	4550 4550 4550 4500
Connection ~ 4150 4550
Wire Wire Line
	4050 4300 4050 4150
Wire Wire Line
	3550 4300 4050 4300
Wire Wire Line
	3550 4300 3550 5050
Connection ~ 4750 4250
Connection ~ 4750 4200
Wire Wire Line
	4650 4200 4750 4200
Wire Wire Line
	4650 4150 4650 4200
Wire Wire Line
	4750 4150 4750 4300
Wire Wire Line
	4750 4250 5400 4250
Wire Wire Line
	4550 4300 4550 4150
Wire Wire Line
	4350 4250 4350 4150
Wire Wire Line
	4200 4250 4350 4250
Wire Wire Line
	4200 4400 4200 4250
Wire Wire Line
	4450 4400 4400 4400
Wire Wire Line
	4450 4150 4450 4550
Connection ~ 4150 4200
Wire Wire Line
	4150 4150 4150 5150
Wire Wire Line
	4250 4200 4250 4150
Connection ~ 2800 2550
Connection ~ 2800 2850
Connection ~ 2800 3050
Connection ~ 2800 3350
Connection ~ 2800 3600
Wire Wire Line
	2250 3600 2400 3600
Connection ~ 2800 3900
Wire Wire Line
	2800 3900 2800 3850
Wire Wire Line
	2750 3900 3100 3900
Wire Wire Line
	3100 3900 3100 3450
Wire Wire Line
	3100 3450 3550 3450
Wire Wire Line
	3050 3350 3550 3350
Wire Wire Line
	3050 3600 3050 3350
Wire Wire Line
	2600 3600 3050 3600
Wire Wire Line
	2800 3650 2800 3600
Wire Wire Line
	2800 2550 2800 2600
Wire Wire Line
	2600 2550 3100 2550
Wire Wire Line
	3100 2550 3100 2950
Wire Wire Line
	3100 2950 3550 2950
Wire Wire Line
	2800 2850 2800 2800
Wire Wire Line
	2750 2850 3050 2850
Wire Wire Line
	3050 2850 3050 3050
Wire Wire Line
	3050 3050 3550 3050
Wire Wire Line
	3000 3250 3550 3250
Wire Wire Line
	3000 3350 3000 3250
Wire Wire Line
	2750 3350 3000 3350
Wire Wire Line
	2800 3300 2800 3350
Wire Wire Line
	2800 3050 2800 3100
Wire Wire Line
	2600 3050 3000 3050
Wire Wire Line
	3000 3050 3000 3150
Wire Wire Line
	3000 3150 3550 3150
Connection ~ 1100 7150
Wire Wire Line
	1100 7150 1200 7150
Connection ~ 1100 6550
Wire Wire Line
	1100 7350 1200 7350
Connection ~ 1100 6150
Wire Wire Line
	1200 6150 1100 6150
Connection ~ 1100 6350
Wire Wire Line
	1100 6350 1200 6350
Connection ~ 1100 6250
Wire Wire Line
	1100 6550 1200 6550
Wire Wire Line
	1100 5950 1200 5950
Wire Wire Line
	1100 5950 1100 7350
Wire Wire Line
	1100 6250 1000 6250
Wire Wire Line
	7650 3300 7950 3300
Wire Wire Line
	7650 3400 7950 3400
Wire Wire Line
	7650 3500 7950 3500
Wire Wire Line
	7950 3600 7350 3600
Wire Wire Line
	7350 3600 7350 2650
Wire Wire Line
	7350 2650 6150 2650
Wire Wire Line
	10300 3300 10350 3300
Wire Wire Line
	10350 3300 10350 2750
Wire Wire Line
	10350 2750 6150 2750
Wire Wire Line
	5700 5200 5850 5200
Wire Wire Line
	5700 4700 5700 5200
Wire Wire Line
	7150 2850 7150 4700
Wire Wire Line
	6150 2850 7150 2850
Wire Wire Line
	5200 5100 5150 5100
Wire Wire Line
	5400 5100 5850 5100
Wire Wire Line
	5550 5100 5550 5150
Connection ~ 5550 5100
Wire Wire Line
	5550 5350 5550 5400
Wire Wire Line
	5550 5400 6700 5400
Wire Wire Line
	6650 5200 6750 5200
Wire Wire Line
	6700 5400 6700 5200
Connection ~ 6700 5200
Wire Wire Line
	7250 2000 7250 2350
Connection ~ 7250 2350
Wire Wire Line
	7450 2450 7450 2200
Connection ~ 7450 2450
$Comp
L PWR_FLAG #FLG022
U 1 1 58C457DD
P 6100 3800
F 0 "#FLG022" H 6100 3895 50  0001 C CNN
F 1 "PWR_FLAG" H 6100 3980 50  0000 C CNN
F 2 "" H 6100 3800 50  0000 C CNN
F 3 "" H 6100 3800 50  0000 C CNN
	1    6100 3800
	-1   0    0    1   
$EndComp
$Comp
L PWR_FLAG #FLG023
U 1 1 58C459C4
P 5200 4400
F 0 "#FLG023" H 5200 4495 50  0001 C CNN
F 1 "PWR_FLAG" H 5200 4580 50  0000 C CNN
F 2 "" H 5200 4400 50  0000 C CNN
F 3 "" H 5200 4400 50  0000 C CNN
	1    5200 4400
	-1   0    0    1   
$EndComp
Wire Wire Line
	5200 4400 5200 4250
Connection ~ 5200 4250
$Comp
L PWR_FLAG #FLG024
U 1 1 58C4625E
P 5450 5050
F 0 "#FLG024" H 5450 5145 50  0001 C CNN
F 1 "PWR_FLAG" H 5450 5230 50  0000 C CNN
F 2 "" H 5450 5050 50  0000 C CNN
F 3 "" H 5450 5050 50  0000 C CNN
	1    5450 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 5050 5450 5100
Connection ~ 5450 5100
Wire Wire Line
	1250 3700 1300 3700
Wire Wire Line
	1300 3800 1250 3800
Wire Wire Line
	1250 3150 1300 3150
Wire Wire Line
	1300 3250 1250 3250
Wire Wire Line
	1250 2650 1300 2650
Wire Wire Line
	1300 2750 1250 2750
Wire Wire Line
	3550 5050 3250 5050
Wire Wire Line
	4150 5150 3250 5150
$Sheet
S 550  3050 700  300 
U 58C4A8D4
F0 "vreg2" 60
F1 "vreg.sch" 60
F2 "+2V5" I R 1250 3150 60 
F3 "-2V5" I R 1250 3250 60 
$EndSheet
$Sheet
S 550  3600 700  300 
U 58C4AA7C
F0 "vreg3" 60
F1 "vreg.sch" 60
F2 "+2V5" I R 1250 3700 60 
F3 "-2V5" I R 1250 3800 60 
$EndSheet
$Sheet
S 2550 4950 700  300 
U 58C4ACF0
F0 "vreg4" 60
F1 "vreg.sch" 60
F2 "+2V5" I R 3250 5050 60 
F3 "-2V5" I R 3250 5150 60 
$EndSheet
Wire Wire Line
	4150 4550 4550 4550
Text Notes 3600 4450 0    20   ~ 0
Used to have 2x1 µF here\nbut vreg has 2x2.2 µF already
Wire Wire Line
	6150 2450 7650 2450
Wire Wire Line
	7800 2650 7800 2600
Wire Wire Line
	7800 2100 7800 2050
Wire Wire Line
	5900 3650 6650 3650
Wire Wire Line
	6100 3800 6100 3650
Connection ~ 6100 3650
Wire Wire Line
	5950 3700 5950 3650
Connection ~ 5950 3650
Connection ~ 5400 3650
Connection ~ 6150 3650
Connection ~ 6150 3550
Connection ~ 6150 3450
Connection ~ 6150 3350
Connection ~ 6150 3250
Connection ~ 6150 3150
Connection ~ 6150 3050
Connection ~ 6150 2950
Connection ~ 6650 2850
Connection ~ 6650 2750
Connection ~ 6650 2650
Connection ~ 6650 2550
Connection ~ 6650 2450
Connection ~ 6650 2350
Connection ~ 6650 2250
$Comp
L CONN_02X17 P12
U 1 1 58C72DB3
P 6400 2850
F 0 "P12" H 6400 3750 50  0000 C CNN
F 1 "CONN_02X17" V 6400 2850 50  0000 C CNN
F 2 "" H 6400 1750 50  0001 C CNN
F 3 "" H 6400 1750 50  0000 C CNN
	1    6400 2850
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG025
U 1 1 58C73E73
P 7050 2200
F 0 "#FLG025" H 7050 2295 50  0001 C CNN
F 1 "PWR_FLAG" H 7050 2380 50  0000 C CNN
F 2 "" H 7050 2200 50  0000 C CNN
F 3 "" H 7050 2200 50  0000 C CNN
	1    7050 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	7050 2200 7050 2250
Connection ~ 7050 2250
Wire Wire Line
	7150 4700 5700 4700
Wire Wire Line
	6800 2150 6150 2150
Wire Wire Line
	6800 1000 6800 2150
Wire Wire Line
	6700 2050 6150 2050
Wire Wire Line
	6700 1000 6700 2050
Connection ~ 6650 2050
Connection ~ 6650 2150
$Comp
L +24V #PWR026
U 1 1 58C75C1D
P 6600 1700
F 0 "#PWR026" H 6600 1550 50  0001 C CNN
F 1 "+24V" H 6600 1840 50  0000 C CNN
F 2 "" H 6600 1700 50  0000 C CNN
F 3 "" H 6600 1700 50  0000 C CNN
	1    6600 1700
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6600 1700 6700 1700
Connection ~ 6700 1700
Text Label 6800 1950 1    60   ~ 0
PWM
$Comp
L GND #PWR027
U 1 1 58C75F43
P 6900 1550
F 0 "#PWR027" H 6900 1300 50  0001 C CNN
F 1 "GND" H 6900 1400 50  0000 C CNN
F 2 "" H 6900 1550 50  0000 C CNN
F 3 "" H 6900 1550 50  0000 C CNN
	1    6900 1550
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG028
U 1 1 58C76342
P 6500 1550
F 0 "#FLG028" H 6500 1645 50  0001 C CNN
F 1 "PWR_FLAG" H 6500 1730 50  0000 C CNN
F 2 "" H 6500 1550 50  0000 C CNN
F 3 "" H 6500 1550 50  0000 C CNN
	1    6500 1550
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6500 1550 6700 1550
Connection ~ 6700 1550
$Comp
L CONN_02X03 P11
U 1 1 58C768A6
P 6800 1250
F 0 "P11" H 6800 1450 50  0000 C CNN
F 1 "MOTOR" H 6800 1050 50  0000 C CNN
F 2 "" H 6800 50  50  0001 C CNN
F 3 "" H 6800 50  50  0000 C CNN
	1    6800 1250
	0    1    1    0   
$EndComp
Connection ~ 6700 1500
Connection ~ 6800 1500
Wire Wire Line
	6900 1000 6900 1550
Connection ~ 6900 1500
$Comp
L C_Small C18
U 1 1 58C7911E
P 9500 3050
F 0 "C18" H 9510 3120 50  0000 L CNN
F 1 "100n" H 9510 2970 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 9500 3050 50  0001 C CNN
F 3 "" H 9500 3050 50  0000 C CNN
	1    9500 3050
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR029
U 1 1 58C798D2
P 9600 3050
F 0 "#PWR029" H 9600 2800 50  0001 C CNN
F 1 "GND" H 9600 2900 50  0000 C CNN
F 2 "" H 9600 3050 50  0000 C CNN
F 3 "" H 9600 3050 50  0000 C CNN
	1    9600 3050
	0    -1   -1   0   
$EndComp
$Comp
L C_Small C19
U 1 1 58C799DF
P 9500 3900
F 0 "C19" H 9510 3970 50  0000 L CNN
F 1 "100n" H 9510 3820 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 9500 3900 50  0001 C CNN
F 3 "" H 9500 3900 50  0000 C CNN
	1    9500 3900
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR030
U 1 1 58C79B0A
P 9600 3900
F 0 "#PWR030" H 9600 3650 50  0001 C CNN
F 1 "GND" H 9600 3750 50  0000 C CNN
F 2 "" H 9600 3900 50  0000 C CNN
F 3 "" H 9600 3900 50  0000 C CNN
	1    9600 3900
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9400 3900 9350 3900
Connection ~ 9350 3900
Wire Wire Line
	9400 3050 9350 3050
Connection ~ 9350 3050
$EndSCHEMATC
