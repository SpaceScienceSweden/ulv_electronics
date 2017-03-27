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
Sheet 3 4
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
L +24V #PWR030
U 1 1 58CF3CA7
P 4700 1000
F 0 "#PWR030" H 4700 850 50  0001 C CNN
F 1 "+24V" H 4700 1140 50  0000 C CNN
F 2 "" H 4700 1000 50  0000 C CNN
F 3 "" H 4700 1000 50  0000 C CNN
	1    4700 1000
	0    -1   -1   0   
$EndComp
$Comp
L +5V #PWR031
U 1 1 58CF3CAD
P 4700 1300
F 0 "#PWR031" H 4700 1150 50  0001 C CNN
F 1 "+5V" H 4700 1440 50  0000 C CNN
F 2 "" H 4700 1300 50  0000 C CNN
F 3 "" H 4700 1300 50  0000 C CNN
	1    4700 1300
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR032
U 1 1 58CF3CB3
P 4550 1500
F 0 "#PWR032" H 4550 1250 50  0001 C CNN
F 1 "GND" H 4550 1350 50  0000 C CNN
F 2 "" H 4550 1500 50  0000 C CNN
F 3 "" H 4550 1500 50  0000 C CNN
	1    4550 1500
	0    1    1    0   
$EndComp
$Comp
L -5V #PWR33
U 1 1 58CF3CB9
P 4700 1700
F 0 "#PWR33" H 4700 1800 50  0001 C CNN
F 1 "-5V" H 4700 1850 50  0000 C CNN
F 2 "" H 4700 1700 50  0000 C CNN
F 3 "" H 4700 1700 50  0000 C CNN
	1    4700 1700
	0    -1   -1   0   
$EndComp
Text GLabel 5000 1200 0    60   Input ~ 0
PWM0
Text GLabel 6350 1200 0    60   Input ~ 0
PWM1
Text GLabel 7700 1200 0    60   Input ~ 0
PWM2
Text GLabel 5000 1900 0    60   Input ~ 0
TACH0
Text GLabel 6350 1900 0    60   Input ~ 0
TACH1
Text GLabel 7700 1900 0    60   Input ~ 0
TACH2
Text GLabel 5000 2000 0    60   Input ~ 0
/CS_VGND0
Text GLabel 6350 2000 0    60   Input ~ 0
/CS_VGND1
Text GLabel 7700 2000 0    60   Input ~ 0
/CS_VGND2
Text GLabel 5000 2100 0    60   Input ~ 0
EN_VGND0
Text GLabel 6350 2100 0    60   Input ~ 0
EN_VGND1
Text GLabel 7700 2100 0    60   Input ~ 0
EN_VGND2
Text GLabel 4950 4400 0    60   Input ~ 0
ONEWIRE
Text GLabel 4950 4600 0    60   Input ~ 0
/CS_ADC0
Text GLabel 6300 4600 0    60   Input ~ 0
/CS_ADC1
Text GLabel 7650 4600 0    60   Input ~ 0
/CS_ADC2
Text GLabel 4950 4700 0    60   Input ~ 0
SCLK
Text GLabel 4950 4800 0    60   Input ~ 0
MISO
Text GLabel 4950 4900 0    60   Input ~ 0
MOSI
Text GLabel 4950 5000 0    60   Input ~ 0
/DRDY0
Text GLabel 6300 5000 0    60   Input ~ 0
/DRDY1
Text GLabel 7650 5000 0    60   Input ~ 0
/DRDY2
Text GLabel 4950 5100 0    60   Input ~ 0
/DONE0
Text GLabel 6300 5100 0    60   Input ~ 0
/DONE1
Text GLabel 7650 5100 0    60   Input ~ 0
/DONE2
$Comp
L +3.3V #PWR033
U 1 1 58CF4033
P 4550 5200
F 0 "#PWR033" H 4550 5050 50  0001 C CNN
F 1 "+3.3V" H 4550 5340 50  0000 C CNN
F 2 "" H 4550 5200 50  0000 C CNN
F 3 "" H 4550 5200 50  0000 C CNN
	1    4550 5200
	0    -1   -1   0   
$EndComp
$Comp
L 74AHC1G125GW U5
U 1 1 58D2F1DF
P 4450 3600
F 0 "U5" H 4450 3800 60  0000 C CNN
F 1 "74AHC1G125GW" H 4450 3400 60  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-23-5" H 4450 3600 60  0001 C CNN
F 3 "" H 4450 3600 60  0000 C CNN
	1    4450 3600
	0    1    1    0   
$EndComp
Text GLabel 4200 2850 0    60   Input ~ 0
f_ADC
Connection ~ 5050 1000
Connection ~ 5050 1200
Connection ~ 5050 1300
Connection ~ 5050 1500
Connection ~ 5050 1700
Connection ~ 5050 1900
Connection ~ 5050 2000
Connection ~ 5050 2100
Connection ~ 5000 4400
Connection ~ 5000 4500
Connection ~ 5000 4600
Connection ~ 5000 4700
Connection ~ 5000 4800
Connection ~ 5000 4900
Connection ~ 5000 5000
Connection ~ 5000 5100
Connection ~ 5000 5200
Connection ~ 5550 1000
Connection ~ 5550 1300
Connection ~ 5550 1500
Connection ~ 5550 1700
Connection ~ 6400 1000
Connection ~ 6400 1200
Connection ~ 6400 1300
Connection ~ 6400 1500
Connection ~ 6400 1700
Connection ~ 6400 1900
Connection ~ 6400 2000
Connection ~ 6400 2100
Connection ~ 6350 4400
Connection ~ 6350 4500
Connection ~ 6350 4600
Connection ~ 6350 4700
Connection ~ 6350 4800
Connection ~ 6350 4900
Connection ~ 6350 5000
Connection ~ 6350 5100
Connection ~ 6350 5200
Connection ~ 6900 1000
Connection ~ 6900 1300
Connection ~ 6900 1500
Connection ~ 6900 1700
Connection ~ 7750 1000
Connection ~ 7750 1200
Connection ~ 7750 1300
Connection ~ 7750 1500
Connection ~ 7750 1700
Connection ~ 7750 1900
Connection ~ 7750 2000
Connection ~ 7750 2100
Connection ~ 7700 4400
Connection ~ 7700 4500
Connection ~ 7700 4600
Connection ~ 7700 4700
Connection ~ 7700 4800
Connection ~ 7700 4900
Connection ~ 7700 5000
Connection ~ 7700 5100
Connection ~ 7700 5200
Wire Wire Line
	5000 1200 5550 1200
Wire Wire Line
	4700 1000 8250 1000
Wire Wire Line
	6350 1200 6900 1200
Wire Wire Line
	7700 1200 8250 1200
Wire Wire Line
	4700 1300 8250 1300
Wire Wire Line
	4550 1500 8250 1500
Wire Wire Line
	4700 1700 8250 1700
Wire Wire Line
	5000 1900 5550 1900
Connection ~ 5500 5200
Connection ~ 5500 4700
Connection ~ 5500 4800
Connection ~ 5500 4900
Connection ~ 6850 4700
Connection ~ 6850 4800
Connection ~ 6850 4900
Connection ~ 6850 5200
Wire Wire Line
	5000 2000 5550 2000
Wire Wire Line
	5000 2100 5550 2100
Wire Wire Line
	4950 4400 8200 4400
Connection ~ 6850 4400
Wire Wire Line
	4950 4600 5500 4600
Wire Wire Line
	4950 4700 8200 4700
Wire Wire Line
	4950 4800 8200 4800
Wire Wire Line
	4950 4900 8200 4900
Wire Wire Line
	4950 5000 5500 5000
Wire Wire Line
	4950 5100 5500 5100
Wire Wire Line
	4550 5200 8200 5200
Wire Wire Line
	6350 1900 6900 1900
Wire Wire Line
	6350 2000 6900 2000
Wire Wire Line
	6350 2100 6900 2100
Wire Wire Line
	6300 4600 6850 4600
Wire Wire Line
	6300 5000 6850 5000
Wire Wire Line
	6300 5100 6850 5100
Wire Wire Line
	7700 1900 8250 1900
Wire Wire Line
	7700 2000 8250 2000
Wire Wire Line
	7700 2100 8250 2100
Wire Wire Line
	7650 4600 8200 4600
Wire Wire Line
	7650 5000 8200 5000
Wire Wire Line
	7650 5100 8200 5100
$Comp
L C_Small C12
U 1 1 58D2F591
P 4800 3600
F 0 "C12" H 4810 3670 50  0000 L CNN
F 1 "100n" H 4810 3520 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 4800 3600 50  0001 C CNN
F 3 "" H 4800 3600 50  0000 C CNN
	1    4800 3600
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR034
U 1 1 58D2F60F
P 4350 3100
F 0 "#PWR034" H 4350 2850 50  0001 C CNN
F 1 "GND" H 4350 2950 50  0000 C CNN
F 2 "" H 4350 3100 50  0000 C CNN
F 3 "" H 4350 3100 50  0000 C CNN
	1    4350 3100
	-1   0    0    1   
$EndComp
$Comp
L +3.3V #PWR035
U 1 1 58D2F6C5
P 5050 4050
F 0 "#PWR035" H 5050 3900 50  0001 C CNN
F 1 "+3.3V" H 5050 4190 50  0000 C CNN
F 2 "" H 5050 4050 50  0000 C CNN
F 3 "" H 5050 4050 50  0000 C CNN
	1    5050 4050
	0    1    1    0   
$EndComp
$Comp
L R_Small R2
U 1 1 58D2F798
P 4950 4050
F 0 "R2" H 4980 4070 50  0000 L CNN
F 1 "300" H 4980 4010 50  0000 L CNN
F 2 "Resistors_SMD:R_2010" H 4950 4050 50  0001 C CNN
F 3 "" H 4950 4050 50  0000 C CNN
	1    4950 4050
	0    1    1    0   
$EndComp
Text Notes 5050 2600 0    60   ~ 0
Clock drivers\nSupply 1 mA between 3.0..3.3 V\n(3.3-3.0)/1 mA = 300
Connection ~ 5500 4400
Wire Wire Line
	8200 5300 4950 5300
Wire Wire Line
	4950 5300 4950 5200
Connection ~ 4950 5200
Connection ~ 5000 5300
Connection ~ 5500 5300
Connection ~ 6350 5300
Connection ~ 6850 5300
Connection ~ 7700 5300
$Comp
L GND #PWR036
U 1 1 58D426EF
P 4550 5400
F 0 "#PWR036" H 4550 5150 50  0001 C CNN
F 1 "GND" H 4550 5250 50  0000 C CNN
F 2 "" H 4550 5400 50  0000 C CNN
F 3 "" H 4550 5400 50  0000 C CNN
	1    4550 5400
	0    1    1    0   
$EndComp
Wire Wire Line
	4550 5400 8200 5400
Wire Wire Line
	8200 5500 4950 5500
Wire Wire Line
	4950 5500 4950 5400
Connection ~ 4950 5400
Connection ~ 5000 5400
Connection ~ 5000 5500
Connection ~ 5500 5400
Connection ~ 5500 5500
Connection ~ 6350 5400
Connection ~ 6350 5500
Connection ~ 6850 5400
Connection ~ 6850 5500
Connection ~ 7700 5400
Connection ~ 7700 5500
$Comp
L CONN_02X12 P1
U 1 1 58D42ABF
P 5300 1550
F 0 "P1" H 5300 2200 50  0000 C CNN
F 1 "CONN_02X12" V 5300 1550 50  0000 C CNN
F 2 "SCUBE:FTSH-112-01-L-D-RA" H 5300 350 50  0001 C CNN
F 3 "" H 5300 350 50  0000 C CNN
F 4 "Samtec" H 5300 1550 60  0001 C CNN "Mfg. Name"
F 5 "FTSH-112-04-L-D-RA" H 5300 1550 60  0001 C CNN "Mfg. Part Number"
F 6 "1767213" H 5300 1550 60  0001 C CNN "1st Distrib. PN"
F 7 "http://se.farnell.com/samtec/ftsh-112-04-l-d-ra/header-1-27mm-2x12way-r-a/dp/1767213" H 5300 1550 60  0001 C CNN "1st Distrib. Link"
	1    5300 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	8250 1100 5000 1100
Wire Wire Line
	5000 1100 5000 1000
Connection ~ 5000 1000
Connection ~ 5050 1100
Connection ~ 5550 1100
Connection ~ 6400 1100
Connection ~ 6900 1100
Connection ~ 7750 1100
Wire Wire Line
	8250 1400 5000 1400
Wire Wire Line
	5000 1400 5000 1300
Connection ~ 5000 1300
Connection ~ 5050 1400
Connection ~ 5550 1400
Connection ~ 6400 1400
Connection ~ 6900 1400
Connection ~ 7750 1400
Wire Wire Line
	8250 1600 5000 1600
Wire Wire Line
	5000 1600 5000 1500
Connection ~ 5000 1500
Connection ~ 5050 1600
Connection ~ 5550 1600
Connection ~ 6400 1600
Connection ~ 6900 1600
Connection ~ 7750 1600
Wire Wire Line
	8250 1800 5000 1800
Wire Wire Line
	5000 1800 5000 1700
Connection ~ 5000 1700
Connection ~ 5050 1800
Connection ~ 5550 1800
Connection ~ 6400 1800
Connection ~ 6900 1800
Connection ~ 7750 1800
Wire Wire Line
	4350 3100 4350 3200
Wire Wire Line
	4350 3150 4800 3150
Wire Wire Line
	4800 3150 4800 3500
Connection ~ 4350 3150
Wire Wire Line
	4800 3700 4800 4050
Wire Wire Line
	4550 4050 4850 4050
Wire Wire Line
	4550 4050 4550 4000
Connection ~ 4800 4050
$Comp
L 74AHC1G125GW U6
U 1 1 58D44358
P 5800 3600
F 0 "U6" H 5800 3800 60  0000 C CNN
F 1 "74AHC1G125GW" H 5800 3400 60  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-23-5" H 5800 3600 60  0001 C CNN
F 3 "" H 5800 3600 60  0000 C CNN
	1    5800 3600
	0    1    1    0   
$EndComp
$Comp
L C_Small C13
U 1 1 58D4435E
P 6150 3600
F 0 "C13" H 6160 3670 50  0000 L CNN
F 1 "100n" H 6160 3520 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 6150 3600 50  0001 C CNN
F 3 "" H 6150 3600 50  0000 C CNN
	1    6150 3600
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR037
U 1 1 58D44364
P 5700 3100
F 0 "#PWR037" H 5700 2850 50  0001 C CNN
F 1 "GND" H 5700 2950 50  0000 C CNN
F 2 "" H 5700 3100 50  0000 C CNN
F 3 "" H 5700 3100 50  0000 C CNN
	1    5700 3100
	-1   0    0    1   
$EndComp
$Comp
L +3.3V #PWR038
U 1 1 58D4436A
P 6400 4050
F 0 "#PWR038" H 6400 3900 50  0001 C CNN
F 1 "+3.3V" H 6400 4190 50  0000 C CNN
F 2 "" H 6400 4050 50  0000 C CNN
F 3 "" H 6400 4050 50  0000 C CNN
	1    6400 4050
	0    1    1    0   
$EndComp
$Comp
L R_Small R3
U 1 1 58D44370
P 6300 4050
F 0 "R3" H 6330 4070 50  0000 L CNN
F 1 "300" H 6330 4010 50  0000 L CNN
F 2 "Resistors_SMD:R_2010" H 6300 4050 50  0001 C CNN
F 3 "" H 6300 4050 50  0000 C CNN
	1    6300 4050
	0    1    1    0   
$EndComp
Wire Wire Line
	5700 3100 5700 3200
Wire Wire Line
	5700 3150 6150 3150
Wire Wire Line
	6150 3150 6150 3500
Connection ~ 5700 3150
Wire Wire Line
	6150 3700 6150 4050
Wire Wire Line
	5900 4050 6200 4050
Wire Wire Line
	5900 4050 5900 4000
Connection ~ 6150 4050
$Comp
L 74AHC1G125GW U7
U 1 1 58D44468
P 7150 3600
F 0 "U7" H 7150 3800 60  0000 C CNN
F 1 "74AHC1G125GW" H 7150 3400 60  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-23-5" H 7150 3600 60  0001 C CNN
F 3 "" H 7150 3600 60  0000 C CNN
	1    7150 3600
	0    1    1    0   
$EndComp
$Comp
L C_Small C14
U 1 1 58D4446E
P 7500 3600
F 0 "C14" H 7510 3670 50  0000 L CNN
F 1 "100n" H 7510 3520 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 7500 3600 50  0001 C CNN
F 3 "" H 7500 3600 50  0000 C CNN
	1    7500 3600
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR039
U 1 1 58D44474
P 7050 3100
F 0 "#PWR039" H 7050 2850 50  0001 C CNN
F 1 "GND" H 7050 2950 50  0000 C CNN
F 2 "" H 7050 3100 50  0000 C CNN
F 3 "" H 7050 3100 50  0000 C CNN
	1    7050 3100
	-1   0    0    1   
$EndComp
$Comp
L +3.3V #PWR040
U 1 1 58D4447A
P 7750 4050
F 0 "#PWR040" H 7750 3900 50  0001 C CNN
F 1 "+3.3V" H 7750 4190 50  0000 C CNN
F 2 "" H 7750 4050 50  0000 C CNN
F 3 "" H 7750 4050 50  0000 C CNN
	1    7750 4050
	0    1    1    0   
$EndComp
$Comp
L R_Small R4
U 1 1 58D44480
P 7650 4050
F 0 "R4" H 7680 4070 50  0000 L CNN
F 1 "300" H 7680 4010 50  0000 L CNN
F 2 "Resistors_SMD:R_2010" H 7650 4050 50  0001 C CNN
F 3 "" H 7650 4050 50  0000 C CNN
	1    7650 4050
	0    1    1    0   
$EndComp
Wire Wire Line
	7050 3100 7050 3200
Wire Wire Line
	7050 3150 7500 3150
Wire Wire Line
	7500 3150 7500 3500
Connection ~ 7050 3150
Wire Wire Line
	7500 3700 7500 4050
Wire Wire Line
	7250 4050 7550 4050
Wire Wire Line
	7250 4050 7250 4000
Connection ~ 7500 4050
Wire Wire Line
	4350 4000 4350 4500
Wire Wire Line
	4350 4500 5500 4500
Wire Wire Line
	5700 4000 5700 4500
Wire Wire Line
	5700 4500 6850 4500
Wire Wire Line
	7050 4000 7050 4500
Wire Wire Line
	7050 4500 8200 4500
Wire Wire Line
	4200 2850 7150 2850
Wire Wire Line
	7150 2850 7150 3200
Wire Wire Line
	5800 3200 5800 2850
Connection ~ 5800 2850
Wire Wire Line
	4450 3200 4450 2850
Connection ~ 4450 2850
$Comp
L CONN_02X12 P5
U 1 1 58D45863
P 6650 1550
F 0 "P5" H 6650 2200 50  0000 C CNN
F 1 "CONN_02X12" V 6650 1550 50  0000 C CNN
F 2 "SCUBE:FTSH-112-01-L-D-RA" H 6650 350 50  0001 C CNN
F 3 "" H 6650 350 50  0000 C CNN
F 4 "Samtec" H 6650 1550 60  0001 C CNN "Mfg. Name"
F 5 "FTSH-112-04-L-D-RA" H 6650 1550 60  0001 C CNN "Mfg. Part Number"
F 6 "1767213" H 6650 1550 60  0001 C CNN "1st Distrib. PN"
F 7 "http://se.farnell.com/samtec/ftsh-112-04-l-d-ra/header-1-27mm-2x12way-r-a/dp/1767213" H 6650 1550 60  0001 C CNN "1st Distrib. Link"
	1    6650 1550
	1    0    0    -1  
$EndComp
$Comp
L CONN_02X12 P6
U 1 1 58D458BC
P 8000 1550
F 0 "P6" H 8000 2200 50  0000 C CNN
F 1 "CONN_02X12" V 8000 1550 50  0000 C CNN
F 2 "SCUBE:FTSH-112-01-L-D-RA" H 8000 350 50  0001 C CNN
F 3 "" H 8000 350 50  0000 C CNN
F 4 "Samtec" H 8000 1550 60  0001 C CNN "Mfg. Name"
F 5 "FTSH-112-04-L-D-RA" H 8000 1550 60  0001 C CNN "Mfg. Part Number"
F 6 "1767213" H 8000 1550 60  0001 C CNN "1st Distrib. PN"
F 7 "http://se.farnell.com/samtec/ftsh-112-04-l-d-ra/header-1-27mm-2x12way-r-a/dp/1767213" H 8000 1550 60  0001 C CNN "1st Distrib. Link"
	1    8000 1550
	1    0    0    -1  
$EndComp
$Comp
L CONN_02X12 P7
U 1 1 58D4595A
P 5250 4950
F 0 "P7" H 5250 5600 50  0000 C CNN
F 1 "CONN_02X12" V 5250 4950 50  0000 C CNN
F 2 "SCUBE:FTSH-112-01-L-D-RA" H 5250 3750 50  0001 C CNN
F 3 "" H 5250 3750 50  0000 C CNN
F 4 "Samtec" H 5250 4950 60  0001 C CNN "Mfg. Name"
F 5 "FTSH-112-04-L-D-RA" H 5250 4950 60  0001 C CNN "Mfg. Part Number"
F 6 "1767213" H 5250 4950 60  0001 C CNN "1st Distrib. PN"
F 7 "http://se.farnell.com/samtec/ftsh-112-04-l-d-ra/header-1-27mm-2x12way-r-a/dp/1767213" H 5250 4950 60  0001 C CNN "1st Distrib. Link"
	1    5250 4950
	1    0    0    -1  
$EndComp
$Comp
L CONN_02X12 P12
U 1 1 58D45A7C
P 6600 4950
F 0 "P12" H 6600 5600 50  0000 C CNN
F 1 "CONN_02X12" V 6600 4950 50  0000 C CNN
F 2 "SCUBE:FTSH-112-01-L-D-RA" H 6600 3750 50  0001 C CNN
F 3 "" H 6600 3750 50  0000 C CNN
F 4 "Samtec" H 6600 4950 60  0001 C CNN "Mfg. Name"
F 5 "FTSH-112-04-L-D-RA" H 6600 4950 60  0001 C CNN "Mfg. Part Number"
F 6 "1767213" H 6600 4950 60  0001 C CNN "1st Distrib. PN"
F 7 "http://se.farnell.com/samtec/ftsh-112-04-l-d-ra/header-1-27mm-2x12way-r-a/dp/1767213" H 6600 4950 60  0001 C CNN "1st Distrib. Link"
	1    6600 4950
	1    0    0    -1  
$EndComp
$Comp
L CONN_02X12 P13
U 1 1 58D45AE0
P 7950 4950
F 0 "P13" H 7950 5600 50  0000 C CNN
F 1 "CONN_02X12" V 7950 4950 50  0000 C CNN
F 2 "SCUBE:FTSH-112-01-L-D-RA" H 7950 3750 50  0001 C CNN
F 3 "" H 7950 3750 50  0000 C CNN
F 4 "Samtec" H 7950 4950 60  0001 C CNN "Mfg. Name"
F 5 "FTSH-112-04-L-D-RA" H 7950 4950 60  0001 C CNN "Mfg. Part Number"
F 6 "1767213" H 7950 4950 60  0001 C CNN "1st Distrib. PN"
F 7 "http://se.farnell.com/samtec/ftsh-112-04-l-d-ra/header-1-27mm-2x12way-r-a/dp/1767213" H 7950 4950 60  0001 C CNN "1st Distrib. Link"
	1    7950 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	4550 3200 4550 3150
Connection ~ 4550 3150
Wire Wire Line
	5900 3200 5900 3150
Connection ~ 5900 3150
Wire Wire Line
	7250 3200 7250 3150
Connection ~ 7250 3150
Text Notes 6650 2700 0    39   ~ 0
A few words on impedance:\nThe 74AHC1G125GW can drive 3.3/0.025 = 132 Ohm\nA 0.3 mm trace has 127 Ohm impedance, so would match well\n0.5 mm is a bit lower, around 110 Ohm\nHence we don't need to do much to avoid reflection,\nwhich matches the problem-free behavior we've had so far
$EndSCHEMATC
