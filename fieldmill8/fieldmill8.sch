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
F 2 "SCUBE:M3_FM_PTH" H 1400 5950 50  0001 C CNN
F 3 "" H 1400 5950 50  0000 C CNN
	1    1400 5950
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR26
U 1 1 57ADA565
P 1000 6250
F 0 "#PWR26" H 1000 6000 50  0001 C CNN
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
F 2 "SCUBE:M3_FM_PTH" H 1400 6150 50  0001 C CNN
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
F 2 "SCUBE:M3_FM_PTH" H 1400 6350 50  0001 C CNN
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
F 2 "SCUBE:M3_FM_PTH" H 1400 6550 50  0001 C CNN
F 3 "" H 1400 6550 50  0000 C CNN
	1    1400 6550
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR7
U 1 1 57B04ED7
P 7950 2050
F 0 "#PWR7" H 7950 1800 50  0001 C CNN
F 1 "GND" H 7950 1900 50  0000 C CNN
F 2 "" H 7950 2050 50  0000 C CNN
F 3 "" H 7950 2050 50  0000 C CNN
	1    7950 2050
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
F 2 "SCUBE:M3_FM_PTH" H 1400 7150 50  0001 C CNN
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
F 2 "SCUBE:M3_FM_PTH" H 1400 7350 50  0001 C CNN
F 3 "" H 1400 7350 50  0000 C CNN
	1    1400 7350
	1    0    0    -1  
$EndComp
$Comp
L C_Small C23
U 1 1 57B0EABA
P 7800 2200
F 0 "C23" H 7810 2270 50  0000 L CNN
F 1 "10u" H 7810 2120 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 7800 2200 50  0001 C CNN
F 3 "" H 7800 2200 50  0000 C CNN
	1    7800 2200
	1    0    0    -1  
$EndComp
$Comp
L C_Small C22
U 1 1 57B0EB49
P 7800 1900
F 0 "C22" H 7810 1970 50  0000 L CNN
F 1 "10u" H 7810 1820 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 7800 1900 50  0001 C CNN
F 3 "" H 7800 1900 50  0000 C CNN
	1    7800 1900
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
F 2 "Resistors_SMD:R_0805" H 2500 2550 50  0001 C CNN
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
F 2 "Resistors_SMD:R_0805" H 2650 2850 50  0001 C CNN
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
F 2 "Resistors_SMD:R_0805" H 2500 3050 50  0001 C CNN
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
F 2 "Resistors_SMD:R_0805" H 2650 3350 50  0001 C CNN
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
F 2 "Resistors_SMD:R_0805" H 2500 3600 50  0001 C CNN
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
F 2 "Resistors_SMD:R_0805" H 2650 3900 50  0001 C CNN
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
F 2 "Capacitors_SMD:C_0805" H 2800 2700 50  0001 C CNN
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
F 2 "Capacitors_SMD:C_0805" H 2800 3200 50  0001 C CNN
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
F 2 "Capacitors_SMD:C_0805" H 2800 3750 50  0001 C CNN
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
F 2 "Capacitors_SMD:C_0805" H 4300 4400 50  0001 C CNN
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
F 2 "Capacitors_SMD:C_0805" H 4550 4400 50  0001 C CNN
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
F 2 "Capacitors_SMD:C_0805" H 4750 4400 50  0001 C CNN
F 3 "" H 4750 4400 50  0000 C CNN
	1    4750 4400
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR23
U 1 1 58076CF5
P 4750 4500
F 0 "#PWR23" H 4750 4250 50  0001 C CNN
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
F 2 "Capacitors_SMD:C_0805" H 4450 2150 50  0001 C CNN
F 3 "" H 4450 2150 50  0000 C CNN
	1    4450 2150
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR6
U 1 1 58079052
P 4450 2050
F 0 "#PWR6" H 4450 1800 50  0001 C CNN
F 1 "GND" H 4450 1900 50  0000 C CNN
F 2 "" H 4450 2050 50  0000 C CNN
F 3 "" H 4450 2050 50  0000 C CNN
	1    4450 2050
	-1   0    0    1   
$EndComp
NoConn ~ 4650 2450
$Comp
L GND #PWR12
U 1 1 580791C3
P 4550 2450
F 0 "#PWR12" H 4550 2200 50  0001 C CNN
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
F 2 "Resistors_SMD:R_0805" H 4900 2400 50  0001 C CNN
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
F 2 "Resistors_SMD:R_0805" H 3900 2400 50  0001 C CNN
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
F 2 "Resistors_SMD:R_0805" H 3900 2200 50  0001 C CNN
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
F 2 "Resistors_SMD:R_0805" H 3900 2000 50  0001 C CNN
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
F 2 "Resistors_SMD:R_0805" H 3900 1800 50  0001 C CNN
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
F 2 "Resistors_SMD:R_0805" H 3900 1600 50  0001 C CNN
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
F 2 "Resistors_SMD:R_0805" H 3900 1400 50  0001 C CNN
F 3 "" H 3900 1400 50  0000 C CNN
	1    3900 1400
	0    1    1    0   
$EndComp
$Comp
L GND #PWR9
U 1 1 5807B872
P 3700 2200
F 0 "#PWR9" H 3700 1950 50  0001 C CNN
F 1 "GND" H 3700 2050 50  0000 C CNN
F 2 "" H 3700 2200 50  0000 C CNN
F 3 "" H 3700 2200 50  0000 C CNN
	1    3700 2200
	0    1    1    0   
$EndComp
Text Notes 3100 1250 0    60   ~ 0
ADC is configured via population of these resistors
$Comp
L +3V3 #PWR15
U 1 1 5807C0BC
P 5700 3700
F 0 "#PWR15" H 5700 3550 50  0001 C CNN
F 1 "+3V3" H 5700 3840 50  0000 C CNN
F 2 "" H 5700 3700 50  0000 C CNN
F 3 "" H 5700 3700 50  0000 C CNN
	1    5700 3700
	-1   0    0    1   
$EndComp
Text Label 5500 2950 0    60   ~ 0
f_ADC
Text Label 5500 3050 0    60   ~ 0
/CS_ADC
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
P 5550 3650
F 0 "R1" H 5580 3670 50  0000 L CNN
F 1 "150" H 5580 3610 50  0000 L CNN
F 2 "Resistors_SMD:R_2010" H 5550 3650 50  0001 C CNN
F 3 "" H 5550 3650 50  0000 C CNN
	1    5550 3650
	0    1    1    0   
$EndComp
Text Notes 5550 5050 0    39   ~ 0
IOVDD can be down to 1.65 V,\nbut I/O must be < IOVDD+0.3\nTherefore let IOVDD = 3.0 .. 3.3 V\nI(mA) = 0.8 + 1.0 drive\nShunt <= 166 Ohm\n3.3^2/150 = 73 mW
$Sheet
S 7800 5850 1050 550 
U 58A6604F
F0 "Tachometers" 60
F1 "tachs.sch" 60
F2 "ITACH" I L 7800 6050 60 
F3 "RAW_ITACH" I L 7800 6150 60 
F4 "DIN" I L 7800 5950 60 
$EndSheet
Text Label 6700 2450 0    60   ~ 0
ITACH
$Comp
L VDD #PWR21
U 1 1 58B4831E
P 5400 4350
F 0 "#PWR21" H 5400 4200 50  0001 C CNN
F 1 "VDD" H 5400 4500 50  0000 C CNN
F 2 "" H 5400 4350 50  0000 C CNN
F 3 "" H 5400 4350 50  0000 C CNN
	1    5400 4350
	-1   0    0    1   
$EndComp
$Comp
L VDD #PWR11
U 1 1 58B483F3
P 4350 2450
F 0 "#PWR11" H 4350 2300 50  0001 C CNN
F 1 "VDD" H 4350 2600 50  0000 C CNN
F 2 "" H 4350 2450 50  0000 C CNN
F 3 "" H 4350 2450 50  0000 C CNN
	1    4350 2450
	1    0    0    -1  
$EndComp
$Comp
L VDD #PWR4
U 1 1 58B48814
P 3700 1600
F 0 "#PWR4" H 3700 1450 50  0001 C CNN
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
Text Notes 3750 5950 0    60   ~ 0
SMD hylslister:\n143-56-849 2x10\n300-24-844 2x15\n300-24-852 2x17\n300-24-857 2x20
$Comp
L GND #PWR14
U 1 1 58BD6877
P 3550 3550
F 0 "#PWR14" H 3550 3300 50  0001 C CNN
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
F 2 "Resistors_SMD:R_0805" H 3350 4000 50  0001 C CNN
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
F 2 "Resistors_SMD:R_0805" H 3550 4000 50  0001 C CNN
F 3 "" H 3550 4000 50  0000 C CNN
	1    3550 4000
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR20
U 1 1 58BD7078
P 3550 4100
F 0 "#PWR20" H 3550 3850 50  0001 C CNN
F 1 "GND" H 3550 3950 50  0000 C CNN
F 2 "" H 3550 4100 50  0000 C CNN
F 3 "" H 3550 4100 50  0000 C CNN
	1    3550 4100
	1    0    0    -1  
$EndComp
Text Notes 2150 4700 0    60   ~ 0
AVDD current <= 4.0 mA
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
L +5V #PWR8
U 1 1 58BF21A4
P 9350 2050
F 0 "#PWR8" H 9350 1900 50  0001 C CNN
F 1 "+5V" H 9350 2190 50  0000 C CNN
F 2 "" H 9350 2050 50  0000 C CNN
F 3 "" H 9350 2050 50  0000 C CNN
	1    9350 2050
	1    0    0    -1  
$EndComp
$Comp
L -5V #PWR22
U 1 1 58BF224E
P 9350 4350
F 0 "#PWR22" H 9350 4450 50  0001 C CNN
F 1 "-5V" H 9350 4500 50  0000 C CNN
F 2 "" H 9350 4350 50  0000 C CNN
F 3 "" H 9350 4350 50  0000 C CNN
	1    9350 4350
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR19
U 1 1 58BF22D5
P 8500 4000
F 0 "#PWR19" H 8500 3750 50  0001 C CNN
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
F 2 "Capacitors_SMD:C_1210" H 9150 3800 50  0001 C CNN
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
F 2 "Resistors_SMD:R_0805" H 10450 3550 50  0001 C CNN
F 3 "" H 10450 3550 50  0000 C CNN
	1    10450 3550
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR16
U 1 1 58BF4302
P 10300 3750
F 0 "#PWR16" H 10300 3500 50  0001 C CNN
F 1 "GND" H 10300 3600 50  0000 C CNN
F 2 "" H 10300 3750 50  0000 C CNN
F 3 "" H 10300 3750 50  0000 C CNN
	1    10300 3750
	1    0    0    -1  
$EndComp
Text GLabel 10600 3400 2    60   Input ~ 0
VGND
Text Label 7650 3300 0    60   ~ 0
MOSI
Text Label 6700 2650 0    60   ~ 0
EN_VGND
Text Notes 8850 1350 0    60   ~ 0
VGND circuit\nUse bipolar ADC to set level,\nanalog switch to enable it.\nHaving a switch avoids the problem of\nthe ADC having +- 0.5 LSB uncertainty
$Comp
L DS18B20Z U5
U 1 1 58C3F75A
P 6250 5550
F 0 "U5" H 6250 5800 60  0000 C CNN
F 1 "DS18B20Z" H 6250 5700 39  0000 C CNN
F 2 "Housings_SOIC:SOIC-8_3.9x4.9mm_Pitch1.27mm" H 6250 5550 60  0001 C CNN
F 3 "" H 6250 5550 60  0000 C CNN
	1    6250 5550
	1    0    0    -1  
$EndComp
Text Label 6700 2850 0    60   ~ 0
ONEWIRE
$Comp
L GND #PWR25
U 1 1 58C40103
P 6750 5700
F 0 "#PWR25" H 6750 5450 50  0001 C CNN
F 1 "GND" H 6750 5550 50  0000 C CNN
F 2 "" H 6750 5700 50  0000 C CNN
F 3 "" H 6750 5700 50  0000 C CNN
	1    6750 5700
	0    -1   -1   0   
$EndComp
$Comp
L +3V3 #PWR24
U 1 1 58C40CB6
P 5150 5600
F 0 "#PWR24" H 5150 5450 50  0001 C CNN
F 1 "+3V3" H 5150 5740 50  0000 C CNN
F 2 "" H 5150 5600 50  0000 C CNN
F 3 "" H 5150 5600 50  0000 C CNN
	1    5150 5600
	0    -1   -1   0   
$EndComp
$Comp
L R_Small R12
U 1 1 58C40DC3
P 5300 5600
F 0 "R12" H 5330 5620 50  0000 L CNN
F 1 "120" H 5330 5560 50  0000 L CNN
F 2 "Resistors_SMD:R_2010" H 5300 5600 50  0001 C CNN
F 3 "" H 5300 5600 50  0000 C CNN
	1    5300 5600
	0    1    1    0   
$EndComp
$Comp
L C_Small C2
U 1 1 58C41196
P 5550 5750
F 0 "C2" H 5560 5820 50  0000 L CNN
F 1 "10u" H 5560 5670 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 5550 5750 50  0001 C CNN
F 3 "" H 5550 5750 50  0000 C CNN
	1    5550 5750
	1    0    0    -1  
$EndComp
Text Notes 5500 6100 0    60   ~ 0
(3.3-3.1)/1.5e-3 = 133 Ohm\n3.3^2/120 = 90 mW
$Comp
L PWR_FLAG #FLG4
U 1 1 58C44A30
P 7450 1800
F 0 "#FLG4" H 7450 1895 50  0001 C CNN
F 1 "PWR_FLAG" H 7450 1980 50  0000 C CNN
F 2 "" H 7450 1800 50  0000 C CNN
F 3 "" H 7450 1800 50  0000 C CNN
	1    7450 1800
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG2
U 1 1 58C44C59
P 7250 1600
F 0 "#FLG2" H 7250 1695 50  0001 C CNN
F 1 "PWR_FLAG" H 7250 1780 50  0000 C CNN
F 2 "" H 7250 1600 50  0000 C CNN
F 3 "" H 7250 1600 50  0000 C CNN
	1    7250 1600
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG6
U 1 1 58C457DD
P 5850 3800
F 0 "#FLG6" H 5850 3895 50  0001 C CNN
F 1 "PWR_FLAG" H 5850 3980 50  0000 C CNN
F 2 "" H 5850 3800 50  0000 C CNN
F 3 "" H 5850 3800 50  0000 C CNN
	1    5850 3800
	-1   0    0    1   
$EndComp
$Comp
L PWR_FLAG #FLG8
U 1 1 58C459C4
P 5200 4400
F 0 "#FLG8" H 5200 4495 50  0001 C CNN
F 1 "PWR_FLAG" H 5200 4580 50  0000 C CNN
F 2 "" H 5200 4400 50  0000 C CNN
F 3 "" H 5200 4400 50  0000 C CNN
	1    5200 4400
	-1   0    0    1   
$EndComp
$Comp
L PWR_FLAG #FLG9
U 1 1 58C4625E
P 5450 5550
F 0 "#FLG9" H 5450 5645 50  0001 C CNN
F 1 "PWR_FLAG" H 5450 5730 50  0000 C CNN
F 2 "" H 5450 5550 50  0000 C CNN
F 3 "" H 5450 5550 50  0000 C CNN
	1    5450 5550
	1    0    0    -1  
$EndComp
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
Text Notes 3600 4450 0    20   ~ 0
Used to have 2x1 µF here\nbut vreg has 2x10 µF already
$Comp
L PWR_FLAG #FLG3
U 1 1 58C73E73
P 7050 1800
F 0 "#FLG3" H 7050 1895 50  0001 C CNN
F 1 "PWR_FLAG" H 7050 1980 50  0000 C CNN
F 2 "" H 7050 1800 50  0000 C CNN
F 3 "" H 7050 1800 50  0000 C CNN
	1    7050 1800
	1    0    0    -1  
$EndComp
$Comp
L +24V #PWR1
U 1 1 58C75C1D
P 7400 900
F 0 "#PWR1" H 7400 750 50  0001 C CNN
F 1 "+24V" H 7400 1040 50  0000 C CNN
F 2 "" H 7400 900 50  0000 C CNN
F 3 "" H 7400 900 50  0000 C CNN
	1    7400 900 
	0    1    1    0   
$EndComp
Text Label 6800 1750 1    60   ~ 0
PWM
$Comp
L GND #PWR3
U 1 1 58C75F43
P 6900 1200
F 0 "#PWR3" H 6900 950 50  0001 C CNN
F 1 "GND" H 6900 1050 50  0000 C CNN
F 2 "" H 6900 1200 50  0000 C CNN
F 3 "" H 6900 1200 50  0000 C CNN
	1    6900 1200
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG1
U 1 1 58C76342
P 7250 800
F 0 "#FLG1" H 7250 895 50  0001 C CNN
F 1 "PWR_FLAG" H 7250 980 50  0000 C CNN
F 2 "" H 7250 800 50  0000 C CNN
F 3 "" H 7250 800 50  0000 C CNN
	1    7250 800 
	1    0    0    -1  
$EndComp
$Comp
L C_Small C18
U 1 1 58C7911E
P 9500 3050
F 0 "C18" H 9510 3120 50  0000 L CNN
F 1 "10u" H 9510 2970 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 9500 3050 50  0001 C CNN
F 3 "" H 9500 3050 50  0000 C CNN
	1    9500 3050
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR13
U 1 1 58C798D2
P 9600 3050
F 0 "#PWR13" H 9600 2800 50  0001 C CNN
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
F 1 "10u" H 9510 3820 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 9500 3900 50  0001 C CNN
F 3 "" H 9500 3900 50  0000 C CNN
	1    9500 3900
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR18
U 1 1 58C79B0A
P 9600 3900
F 0 "#PWR18" H 9600 3650 50  0001 C CNN
F 1 "GND" H 9600 3750 50  0000 C CNN
F 2 "" H 9600 3900 50  0000 C CNN
F 3 "" H 9600 3900 50  0000 C CNN
	1    9600 3900
	0    -1   -1   0   
$EndComp
$Comp
L -5V #PWR10
U 1 1 58B4E255
P 7900 2350
F 0 "#PWR10" H 7900 2450 50  0001 C CNN
F 1 "-5V" H 7900 2500 50  0000 C CNN
F 2 "" H 7900 2350 50  0000 C CNN
F 3 "" H 7900 2350 50  0000 C CNN
	1    7900 2350
	0    1    1    0   
$EndComp
$Comp
L +5V #PWR5
U 1 1 58B4E1AF
P 7900 1750
F 0 "#PWR5" H 7900 1600 50  0001 C CNN
F 1 "+5V" H 7900 1890 50  0000 C CNN
F 2 "" H 7900 1750 50  0000 C CNN
F 3 "" H 7900 1750 50  0000 C CNN
	1    7900 1750
	0    1    1    0   
$EndComp
Text Notes 8850 1800 0    60   ~ 0
MAX504 tolerates +-4.5 V, aim for +-4.6 V\nCurrent: 0.4  mA + 2/10k + 0.001 ≃ 1 mA\n(5-4.6)/1e-3 = 400 ≃ 390\n3.3^2/390 = 28 mW
$Comp
L R_Small R34
U 1 1 58CDFB31
P 9350 2200
F 0 "R34" H 9380 2220 50  0000 L CNN
F 1 "390" H 9380 2160 50  0000 L CNN
F 2 "Resistors_SMD:R_2010" H 9350 2200 50  0001 C CNN
F 3 "" H 9350 2200 50  0000 C CNN
	1    9350 2200
	1    0    0    -1  
$EndComp
$Comp
L R_Small R37
U 1 1 58CE0570
P 9350 4200
F 0 "R37" H 9380 4220 50  0000 L CNN
F 1 "390" H 9380 4160 50  0000 L CNN
F 2 "Resistors_SMD:R_2010" H 9350 4200 50  0001 C CNN
F 3 "" H 9350 4200 50  0000 C CNN
	1    9350 4200
	1    0    0    -1  
$EndComp
Text Notes 2700 7450 0    60   ~ 0
AD5551: external ref, bipolar\nAD7304: external ref, quad, bipolar\nAD7249: internal ref, dual, bipolar (+-15 Vsupply!), pricey, W-SOIC finns i lager (farnell)\nAD5722R: alternative to AD7249, TSSOP :(\nDAC2932: fairly complex..\nLTC1650: external ref, +-5V, 16-bit\nSLAS269F: internal ref, octal, bipolar\nDAC714: internal ref, single, bipolar, +-11.4 minimum :(\nMAX526: extern ref, parallel, bipolar\nMAX504ESD: internal ref, bipolar, good accuracy, -40..85°C, in stock @ farnell\nUse SPDT switch to toggle between DAC and GND
$Comp
L PWR_FLAG #FLG7
U 1 1 58CF3BAA
P 9150 4150
F 0 "#FLG7" H 9150 4245 50  0001 C CNN
F 1 "PWR_FLAG" H 9150 4330 50  0000 C CNN
F 2 "" H 9150 4150 50  0000 C CNN
F 3 "" H 9150 4150 50  0000 C CNN
	1    9150 4150
	-1   0    0    1   
$EndComp
$Comp
L PWR_FLAG #FLG5
U 1 1 58CF414B
P 9650 2250
F 0 "#FLG5" H 9650 2345 50  0001 C CNN
F 1 "PWR_FLAG" H 9650 2430 50  0000 C CNN
F 2 "" H 9650 2250 50  0000 C CNN
F 3 "" H 9650 2250 50  0000 C CNN
	1    9650 2250
	1    0    0    -1  
$EndComp
Text GLabel 5450 2800 1    60   Input ~ 0
SCLK
Text GLabel 7700 3500 0    60   Input ~ 0
SCLK
Text GLabel 7350 3700 3    60   Input ~ 0
/CS_DACS
Text Notes 7650 4800 0    60   ~ 0
Daisy chain with optional MAX504 in tachometer circuit
$Comp
L R_Small R38
U 1 1 58D40091
P 6000 3150
F 0 "R38" V 6050 3250 50  0000 L CNN
F 1 "50" V 6000 3100 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" H 6000 3150 50  0001 C CNN
F 3 "" H 6000 3150 50  0000 C CNN
	1    6000 3150
	0    -1   -1   0   
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
	9350 3500 9350 4100
Connection ~ 9350 3300
Wire Wire Line
	9350 2300 9350 3300
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
	3350 6150 3350 4100
Wire Wire Line
	7800 6150 3350 6150
Wire Wire Line
	4250 4200 4150 4200
Connection ~ 7800 1750
Wire Wire Line
	7650 1750 7900 1750
Wire Wire Line
	7650 1850 7650 1750
Wire Wire Line
	6150 1850 7650 1850
Connection ~ 7800 2350
Wire Wire Line
	7650 2350 7900 2350
Connection ~ 7800 2050
Wire Wire Line
	7800 2000 7800 2100
Wire Wire Line
	6150 1950 6700 1950
Wire Wire Line
	6150 2050 7950 2050
Wire Wire Line
	6150 2350 6700 2350
Wire Wire Line
	6150 2450 7250 2450
Wire Wire Line
	7250 2450 7250 6050
Wire Wire Line
	7250 6050 7800 6050
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
	5250 3650 5450 3650
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
	5250 3150 5900 3150
Wire Wire Line
	6100 3150 6650 3150
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
	7600 3400 7950 3400
Wire Wire Line
	7700 3500 7950 3500
Wire Wire Line
	7950 3600 7350 3600
Wire Wire Line
	6150 2550 7350 2550
Wire Wire Line
	10300 3300 10350 3300
Wire Wire Line
	10350 3300 10350 2650
Wire Wire Line
	10350 2650 6150 2650
Wire Wire Line
	5700 5700 5850 5700
Wire Wire Line
	5700 5200 5700 5700
Wire Wire Line
	7150 2850 7150 5200
Wire Wire Line
	6150 2850 7150 2850
Wire Wire Line
	5200 5600 5150 5600
Wire Wire Line
	5400 5600 5850 5600
Wire Wire Line
	5550 5600 5550 5650
Connection ~ 5550 5600
Wire Wire Line
	5550 5850 5550 5900
Wire Wire Line
	5550 5900 6700 5900
Wire Wire Line
	6650 5700 6750 5700
Wire Wire Line
	6700 5900 6700 5700
Connection ~ 6700 5700
Wire Wire Line
	7250 2050 7250 1600
Wire Wire Line
	7450 2250 7450 1800
Wire Wire Line
	5200 4400 5200 4250
Connection ~ 5200 4250
Wire Wire Line
	5450 5550 5450 5600
Connection ~ 5450 5600
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
Wire Wire Line
	4150 4550 4550 4550
Wire Wire Line
	7800 2350 7800 2300
Wire Wire Line
	7800 1800 7800 1750
Wire Wire Line
	5650 3650 6650 3650
Wire Wire Line
	5850 3800 5850 3650
Connection ~ 5850 3650
Wire Wire Line
	5700 3700 5700 3650
Connection ~ 5700 3650
Connection ~ 5400 3650
Connection ~ 6150 3650
Connection ~ 6150 3550
Connection ~ 6150 3450
Connection ~ 6150 3350
Connection ~ 6150 3250
Connection ~ 6150 3150
Connection ~ 6150 3050
Connection ~ 6150 2950
Connection ~ 6650 2450
Connection ~ 6650 2350
Connection ~ 6650 2250
Connection ~ 6650 2150
Connection ~ 6650 2050
Connection ~ 6650 1950
Connection ~ 6650 1850
Wire Wire Line
	7050 1800 7050 1850
Connection ~ 7050 1850
Wire Wire Line
	7150 5200 5700 5200
Wire Wire Line
	6150 1750 6800 1750
Wire Wire Line
	6800 1750 6800 850 
Wire Wire Line
	6150 1650 6700 1650
Connection ~ 6650 1650
Connection ~ 6650 1750
Wire Wire Line
	9350 3900 9400 3900
Connection ~ 9350 3900
Wire Wire Line
	9400 3050 9350 3050
Connection ~ 9350 3050
Wire Wire Line
	9350 2100 9350 2050
Wire Wire Line
	9350 4350 9350 4300
Wire Wire Line
	7600 3400 7600 2850
Wire Wire Line
	7600 2850 9350 2850
Connection ~ 9350 2850
Wire Wire Line
	9150 4150 9150 4000
Wire Wire Line
	9150 4000 9350 4000
Connection ~ 9350 4000
Wire Wire Line
	9650 2250 9650 2400
Wire Wire Line
	9650 2400 9350 2400
Connection ~ 9350 2400
Wire Wire Line
	5450 3150 5450 2800
Connection ~ 5450 3150
Wire Wire Line
	7600 3700 7950 3700
Connection ~ 7350 3600
NoConn ~ 12050 3050
$Comp
L CONN_02X12 P12
U 1 1 58D45A24
P 6400 2100
F 0 "P12" H 6400 2750 50  0000 C CNN
F 1 "CONN_02X12" V 6400 2100 50  0000 C CNN
F 2 "SCUBE:LPPB122NFSP-RC" H 6400 900 50  0001 C CNN
F 3 "" H 6400 900 50  0000 C CNN
	1    6400 2100
	1    0    0    -1  
$EndComp
$Comp
L CONN_02X12 P13
U 1 1 58D46C40
P 6400 3400
F 0 "P13" H 6400 4050 50  0000 C CNN
F 1 "CONN_02X12" V 6400 3400 50  0000 C CNN
F 2 "SCUBE:LPPB122NFSP-RC" H 6400 2200 50  0001 C CNN
F 3 "" H 6400 2200 50  0000 C CNN
	1    6400 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	6100 3750 6650 3750
Wire Wire Line
	6100 3750 6100 3650
Connection ~ 6100 3650
Connection ~ 6150 3750
$Comp
L GND #PWR17
U 1 1 58D4991A
P 6750 3850
F 0 "#PWR17" H 6750 3600 50  0001 C CNN
F 1 "GND" H 6750 3700 50  0000 C CNN
F 2 "" H 6750 3850 50  0000 C CNN
F 3 "" H 6750 3850 50  0000 C CNN
	1    6750 3850
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6150 3850 6750 3850
Connection ~ 6650 3850
Wire Wire Line
	7000 1550 6150 1550
Connection ~ 6700 1550
Connection ~ 6650 1550
Connection ~ 6650 2550
Connection ~ 6650 2650
Wire Wire Line
	7350 2550 7350 3700
Connection ~ 6650 2850
Wire Wire Line
	6150 3950 6700 3950
Wire Wire Line
	6700 3950 6700 3850
Connection ~ 6700 3850
Connection ~ 6650 3950
Wire Wire Line
	6700 1950 6700 1850
Connection ~ 6700 1850
Wire Wire Line
	6150 2150 6700 2150
Wire Wire Line
	6700 2150 6700 2050
Connection ~ 6700 2050
Wire Wire Line
	6150 2250 7650 2250
Wire Wire Line
	6700 2350 6700 2250
Connection ~ 6700 2250
Connection ~ 7250 2050
Wire Wire Line
	7650 2250 7650 2350
Connection ~ 7450 2250
Wire Wire Line
	7800 5950 7600 5950
Wire Wire Line
	7600 5950 7600 3700
$Comp
L CONN_01X05 P11
U 1 1 591211C0
P 6800 650
F 0 "P11" H 6800 950 50  0000 C CNN
F 1 "CONN_01X05" V 6900 650 50  0000 C CNN
F 2 "SCUBE:MOTOR_SMD" H 6800 650 50  0001 C CNN
F 3 "" H 6800 650 50  0000 C CNN
	1    6800 650 
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6700 1650 6700 1550
Wire Wire Line
	7000 850  7000 1550
Wire Wire Line
	7250 800  7250 950 
Wire Wire Line
	7000 900  7400 900 
Connection ~ 7000 900 
Connection ~ 7250 900 
Text Notes 7000 1150 1    60   ~ 0
Gray\nGreen\nWhite\nBlack\nRed
NoConn ~ 6700 850 
NoConn ~ 6600 850 
Wire Wire Line
	6900 1200 6900 850 
$Comp
L C_Small C50
U 1 1 591258E0
P 7250 1050
F 0 "C50" H 7260 1120 50  0000 L CNN
F 1 "10u" H 7260 970 50  0000 L CNN
F 2 "Capacitors_SMD:C_1210" H 7250 1050 50  0001 C CNN
F 3 "" H 7250 1050 50  0000 C CNN
	1    7250 1050
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR2
U 1 1 591265DA
P 7250 1150
F 0 "#PWR2" H 7250 900 50  0001 C CNN
F 1 "GND" H 7250 1000 50  0000 C CNN
F 2 "" H 7250 1150 50  0000 C CNN
F 3 "" H 7250 1150 50  0000 C CNN
	1    7250 1150
	1    0    0    -1  
$EndComp
Text Notes 7450 1100 0    60   ~ 0
50V 10µF 1210
$EndSCHEMATC
