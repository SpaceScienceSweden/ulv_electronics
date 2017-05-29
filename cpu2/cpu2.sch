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
Sheet 1 4
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
L ATMEGA128-A-SCUBE IC1
U 1 1 577D516F
P 5350 3550
F 0 "IC1" H 4200 5450 50  0000 L BNN
F 1 "ATMEGA128L-8AN" H 6100 1600 50  0000 L BNN
F 2 "SCUBE:ATmegaS128" H 5350 3550 50  0000 C CIN
F 3 "" H 5350 3550 50  0000 C CNN
	1    5350 3550
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR01
U 1 1 577D63F7
P 5300 5750
F 0 "#PWR01" H 5300 5500 50  0001 C CNN
F 1 "GND" H 5300 5600 50  0000 C CNN
F 2 "" H 5300 5750 50  0000 C CNN
F 3 "" H 5300 5750 50  0000 C CNN
	1    5300 5750
	1    0    0    -1  
$EndComp
$Comp
L ATMEGA128-A-SCUBE IC2
U 1 1 577F7479
P 5350 3550
F 0 "IC2" H 4350 5450 50  0000 L BNN
F 1 "ATMEGA128L-8AN" H 6100 1600 50  0000 L BNN
F 2 "Housings_QFP:TQFP-64_14x14mm_Pitch0.8mm" H 5350 3550 50  0000 C CIN
F 3 "" H 5350 3550 50  0000 C CNN
	1    5350 3550
	1    0    0    -1  
$EndComp
$Comp
L CONN_02X03 P2
U 1 1 577F7E75
P 1150 5300
F 0 "P2" H 1150 5500 50  0000 C CNN
F 1 "ISP" H 1150 5100 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x03" H 1150 4100 50  0001 C CNN
F 3 "" H 1150 4100 50  0000 C CNN
	1    1150 5300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR02
U 1 1 577F83F5
P 1450 5600
F 0 "#PWR02" H 1450 5350 50  0001 C CNN
F 1 "GND" H 1450 5450 50  0000 C CNN
F 2 "" H 1450 5600 50  0000 C CNN
F 3 "" H 1450 5600 50  0000 C CNN
	1    1450 5600
	1    0    0    -1  
$EndComp
$Comp
L R_Small R1
U 1 1 577F8670
P 3700 1450
F 0 "R1" H 3730 1470 50  0000 L CNN
F 1 "10k" H 3730 1410 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" H 3700 1450 50  0001 C CNN
F 3 "" H 3700 1450 50  0000 C CNN
	1    3700 1450
	-1   0    0    1   
$EndComp
$Comp
L +3.3V #PWR03
U 1 1 57A6CBE5
P 2200 1100
F 0 "#PWR03" H 2200 950 50  0001 C CNN
F 1 "+3.3V" H 2200 1240 50  0000 C CNN
F 2 "" H 2200 1100 50  0000 C CNN
F 3 "" H 2200 1100 50  0000 C CNN
	1    2200 1100
	0    -1   -1   0   
$EndComp
$Comp
L C_Small C2
U 1 1 57A6D540
P 2950 1500
F 0 "C2" H 2960 1570 50  0000 L CNN
F 1 "100n" H 2960 1420 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 2950 1500 50  0001 C CNN
F 3 "" H 2950 1500 50  0000 C CNN
	1    2950 1500
	1    0    0    -1  
$EndComp
$Comp
L C_Small C1
U 1 1 57A6D575
P 2700 1500
F 0 "C1" H 2710 1570 50  0000 L CNN
F 1 "100n" H 2710 1420 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 2700 1500 50  0001 C CNN
F 3 "" H 2700 1500 50  0000 C CNN
	1    2700 1500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR04
U 1 1 57A6D5DF
P 2950 1600
F 0 "#PWR04" H 2950 1350 50  0001 C CNN
F 1 "GND" H 2950 1450 50  0000 C CNN
F 2 "" H 2950 1600 50  0000 C CNN
F 3 "" H 2950 1600 50  0000 C CNN
	1    2950 1600
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR05
U 1 1 57A6D607
P 2700 1600
F 0 "#PWR05" H 2700 1350 50  0001 C CNN
F 1 "GND" H 2700 1450 50  0000 C CNN
F 2 "" H 2700 1600 50  0000 C CNN
F 3 "" H 2700 1600 50  0000 C CNN
	1    2700 1600
	1    0    0    -1  
$EndComp
$Comp
L Crystal_Small Y1
U 1 1 57F3D15D
P 3950 2450
F 0 "Y1" H 3950 2550 50  0000 C CNN
F 1 "7.3728 MHz" V 4200 2450 50  0000 C BNN
F 2 "Crystals:Crystal_HC49-SD_SMD" H 3950 2450 50  0001 C CNN
F 3 "" H 3950 2450 50  0000 C CNN
F 4 "	174-52-030" H 3950 2450 60  0001 C CNN "1st Distrib. PN"
F 5 "https://www.elfa.se/sv/kristall-hc49-4h-mhz-iqd-lf-xtal003151/p/17452030?q=*&sort=Price:asc&filter_Frekvens~~MHz=8&filter_Category3=Kristaller+%2F+Oscillatorer&filter_Category4=Kristaller&filter_Buyable=1&page=3&origPageSize=50&simi=97.5" H 3950 2450 60  0001 C CNN "1st Distrib. Link"
	1    3950 2450
	0    1    1    0   
$EndComp
$Comp
L C_Small C6
U 1 1 57F3D2D0
P 3700 2600
F 0 "C6" H 3710 2670 50  0000 L CNN
F 1 "22p" H 3710 2520 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 3700 2600 50  0001 C CNN
F 3 "" H 3700 2600 50  0000 C CNN
	1    3700 2600
	0    -1   -1   0   
$EndComp
$Comp
L C_Small C5
U 1 1 57F3D374
P 3700 2300
F 0 "C5" H 3710 2370 50  0000 L CNN
F 1 "22p" H 3710 2220 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 3700 2300 50  0001 C CNN
F 3 "" H 3700 2300 50  0000 C CNN
	1    3700 2300
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR06
U 1 1 57F3D551
P 3600 2300
F 0 "#PWR06" H 3600 2050 50  0001 C CNN
F 1 "GND" H 3600 2150 50  0000 C CNN
F 2 "" H 3600 2300 50  0000 C CNN
F 3 "" H 3600 2300 50  0000 C CNN
	1    3600 2300
	0    1    1    0   
$EndComp
$Comp
L GND #PWR07
U 1 1 57F3D591
P 3600 2600
F 0 "#PWR07" H 3600 2350 50  0001 C CNN
F 1 "GND" H 3600 2450 50  0000 C CNN
F 2 "" H 3600 2600 50  0000 C CNN
F 3 "" H 3600 2600 50  0000 C CNN
	1    3600 2600
	0    1    1    0   
$EndComp
$Comp
L C_Small C4
U 1 1 57F3E5D3
P 3450 1750
F 0 "C4" H 3460 1820 50  0000 L CNN
F 1 "100n" H 3460 1670 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 3450 1750 50  0001 C CNN
F 3 "" H 3450 1750 50  0000 C CNN
	1    3450 1750
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR08
U 1 1 57F3E635
P 3450 1850
F 0 "#PWR08" H 3450 1600 50  0001 C CNN
F 1 "GND" H 3450 1700 50  0000 C CNN
F 2 "" H 3450 1850 50  0000 C CNN
F 3 "" H 3450 1850 50  0000 C CNN
	1    3450 1850
	1    0    0    -1  
$EndComp
Text Notes 4350 7450 0    60   ~ 0
These pins are purposefully assigned so\nTACHn (ICP1, TIMER1_CAPT=12) has higher\npriority than /DRDYn (ICP3, TIMER3_CAPT=26)
$Comp
L L_Small L1
U 1 1 57F5D4DA
P 5350 1300
F 0 "L1" H 5380 1340 50  0000 L CNN
F 1 "10u" H 5380 1260 50  0000 L CNN
F 2 "Capacitors_SMD:C_1210" H 5350 1300 50  0001 C CNN
F 3 "" H 5350 1300 50  0000 C CNN
F 4 "300-63-549" H 5350 1300 60  0001 C CNN "1st Distrib. PN"
F 5 "https://www.elfa.se/sv/drossel-smd-10-uh-850-ma-20-wuerth-elektronik-74479887310a/p/30063549" H 5350 1300 60  0001 C CNN "1st Distrib. Link"
	1    5350 1300
	0    -1   -1   0   
$EndComp
$Comp
L C_Small C7
U 1 1 57F5D755
P 5650 1300
F 0 "C7" H 5660 1370 50  0000 L CNN
F 1 "100n" H 5660 1220 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 5650 1300 50  0001 C CNN
F 3 "" H 5650 1300 50  0000 C CNN
	1    5650 1300
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR09
U 1 1 57F5D863
P 5750 1300
F 0 "#PWR09" H 5750 1050 50  0001 C CNN
F 1 "GND" H 5750 1150 50  0000 C CNN
F 2 "" H 5750 1300 50  0000 C CNN
F 3 "" H 5750 1300 50  0000 C CNN
	1    5750 1300
	0    -1   -1   0   
$EndComp
$Comp
L C_Small C8
U 1 1 57F5DD88
P 3700 2850
F 0 "C8" H 3710 2920 50  0000 L CNN
F 1 "100n" H 3710 2770 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 3700 2850 50  0001 C CNN
F 3 "" H 3700 2850 50  0000 C CNN
	1    3700 2850
	0    1    1    0   
$EndComp
$Comp
L GND #PWR010
U 1 1 57F5DEF6
P 3600 2850
F 0 "#PWR010" H 3600 2600 50  0001 C CNN
F 1 "GND" H 3600 2700 50  0000 C CNN
F 2 "" H 3600 2850 50  0000 C CNN
F 3 "" H 3600 2850 50  0000 C CNN
	1    3600 2850
	0    1    1    0   
$EndComp
Text Notes 3300 3200 0    60   ~ 0
XMEM pins
Text Notes 7000 3900 0    60   ~ 0
XMEM pins
Text Notes 7050 2250 0    60   ~ 0
XMEM pins
Text GLabel 4050 3050 0    60   Input ~ 0
/WR
Text GLabel 4050 3150 0    60   Input ~ 0
/RD
Text GLabel 4050 3250 0    60   Input ~ 0
ALE
$Sheet
S 8500 700  700  400 
U 57F7FC80
F0 "xmem" 60
F1 "xmem.sch" 60
$EndSheet
Text GLabel 6650 1850 2    60   Input ~ 0
AD0
Text GLabel 6650 1950 2    60   Input ~ 0
AD1
Text GLabel 6650 2050 2    60   Input ~ 0
AD2
Text GLabel 6650 2150 2    60   Input ~ 0
AD3
Text GLabel 6650 2250 2    60   Input ~ 0
AD4
Text GLabel 6650 2350 2    60   Input ~ 0
AD5
Text GLabel 6650 2450 2    60   Input ~ 0
AD6
Text GLabel 6650 2550 2    60   Input ~ 0
AD7
Text GLabel 6650 3650 2    60   Input ~ 0
A8
Text GLabel 6650 3750 2    60   Input ~ 0
A9
Text GLabel 6650 3850 2    60   Input ~ 0
A10
Text GLabel 6650 3950 2    60   Input ~ 0
A11
Text GLabel 6650 4050 2    60   Input ~ 0
A12
Text GLabel 6650 4150 2    60   Input ~ 0
A13
Text GLabel 6650 4250 2    60   Input ~ 0
A14
Text GLabel 6650 4350 2    60   Input ~ 0
A15
Text Notes 8150 550  0    60   ~ 0
We could do some bankswitching here
$Comp
L +3.3V #PWR011
U 1 1 57FA76AD
P 1450 5050
F 0 "#PWR011" H 1450 4900 50  0001 C CNN
F 1 "+3.3V" H 1450 5190 50  0000 C CNN
F 2 "" H 1450 5050 50  0000 C CNN
F 3 "" H 1450 5050 50  0000 C CNN
	1    1450 5050
	1    0    0    -1  
$EndComp
Text Notes 350  -300 0    60   ~ 0
Things to do on this board:\nMake input capture work for us, on tachometer and ADC interrupts. There needs to be something mux-ish to switch between FMs\nAdd two or more µSD card slots\nUse some things like JTAG and 32 kHz pins for other pins (but leave footprints in place for now)\nRoute some more CPU pins to board edge headers\nAdd some eFuses\nAdd RS-485 driver, maybe RS-485 pins (we might have two CPUs)
$Comp
L DS18B20Z U4
U 1 1 58CEFCB9
P 10150 5600
F 0 "U4" H 10150 5850 60  0000 C CNN
F 1 "DS18B20Z" H 10150 5750 39  0000 C CNN
F 2 "SMD_Packages:SOIC-8-N" H 10150 5600 60  0001 C CNN
F 3 "" H 10150 5600 60  0000 C CNN
	1    10150 5600
	1    0    0    -1  
$EndComp
$Sheet
S 9800 750  1050 600 
U 58CF3A37
F0 "connectors" 60
F1 "connectors.sch" 60
$EndSheet
$Comp
L Micro_SD_Card CON1
U 1 1 58CF56C1
P 10150 2600
F 0 "CON1" H 9500 3200 50  0000 C CNN
F 1 "502774-0891" H 10800 3200 50  0000 R CNN
F 2 "SCUBE:Molex_502774-0891" H 11300 2900 50  0001 C CNN
F 3 "http://www.molex.com/pdm_docs/sd/5027740891_sd.pdf" H 10000 1850 50  0000 C CNN
F 4 "Molex" H 10150 2600 60  0001 C CNN "Mfg. Name"
F 5 "502774-0891" H 10150 2600 60  0001 C CNN "Mfg. Part Number"
F 6 "300-76-403" H 10150 2600 60  0001 C CNN "1st Distrib. PN"
F 7 "https://www.elfa.se/sv/minneskortskontaktdon-microsd-skaermad-push-push-smt-molex-502774-0891/p/30076403" H 10150 2600 60  0001 C CNN "1st Distrib. Link"
	1    10150 2600
	1    0    0    -1  
$EndComp
Text GLabel 3800 7100 3    60   Input ~ 0
TACH0
Text GLabel 3900 7100 3    60   Input ~ 0
TACH1
Text GLabel 3100 2100 0    60   Input ~ 0
f_ADC
$Comp
L CONN_01X01 P8
U 1 1 58CF8A21
P 1000 6850
F 0 "P8" H 1000 6950 50  0000 C CNN
F 1 "M6" V 1100 6850 50  0000 C CNN
F 2 "SCUBE:M6_PTH" H 1000 6850 50  0001 C CNN
F 3 "" H 1000 6850 50  0000 C CNN
	1    1000 6850
	-1   0    0    1   
$EndComp
$Comp
L CONN_01X01 P9
U 1 1 58CF8B3D
P 1000 7050
F 0 "P9" H 1000 7150 50  0000 C CNN
F 1 "M6" V 1100 7050 50  0000 C CNN
F 2 "SCUBE:M6_PTH" H 1000 7050 50  0001 C CNN
F 3 "" H 1000 7050 50  0000 C CNN
	1    1000 7050
	-1   0    0    1   
$EndComp
$Comp
L CONN_01X01 P10
U 1 1 58CF8BAE
P 1000 7250
F 0 "P10" H 1000 7350 50  0000 C CNN
F 1 "M6" V 1100 7250 50  0000 C CNN
F 2 "SCUBE:M6_PTH" H 1000 7250 50  0001 C CNN
F 3 "" H 1000 7250 50  0000 C CNN
	1    1000 7250
	-1   0    0    1   
$EndComp
$Comp
L CONN_01X01 P11
U 1 1 58CF8C94
P 1000 7450
F 0 "P11" H 1000 7550 50  0000 C CNN
F 1 "M6" V 1100 7450 50  0000 C CNN
F 2 "SCUBE:M6_PTH" H 1000 7450 50  0001 C CNN
F 3 "" H 1000 7450 50  0000 C CNN
	1    1000 7450
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR012
U 1 1 58CF8CEE
P 1300 7150
F 0 "#PWR012" H 1300 6900 50  0001 C CNN
F 1 "GND" H 1300 7000 50  0000 C CNN
F 2 "" H 1300 7150 50  0000 C CNN
F 3 "" H 1300 7150 50  0000 C CNN
	1    1300 7150
	0    -1   -1   0   
$EndComp
Text Notes 1850 800  0    60   ~ 0
Supply current > 10 mA (table 162)\nPick 27 mA, same as SRAM\n(3.3-3.0)/0.027 = 11
$Sheet
S 9300 3600 1200 900 
U 58D7FBB9
F0 "power" 60
F1 "power.sch" 60
F2 "RS485_RX" I L 9300 3700 60 
F3 "RS485_DE" I L 9300 3800 60 
F4 "RS485_TX" I L 9300 3900 60 
F5 "EN_24V_5V" I L 9300 4000 60 
$EndSheet
Text GLabel 9350 5750 0    60   Input ~ 0
ONEWIRE
$Comp
L GND #PWR013
U 1 1 58D97DE8
P 9450 5900
F 0 "#PWR013" H 9450 5650 50  0001 C CNN
F 1 "GND" H 9450 5750 50  0000 C CNN
F 2 "" H 9450 5900 50  0000 C CNN
F 3 "" H 9450 5900 50  0000 C CNN
	1    9450 5900
	1    0    0    -1  
$EndComp
$Comp
L C_Small C34
U 1 1 58D97F20
P 9450 5600
F 0 "C34" H 9460 5670 50  0000 L CNN
F 1 "100n" H 9460 5520 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 9450 5600 50  0001 C CNN
F 3 "" H 9450 5600 50  0000 C CNN
	1    9450 5600
	1    0    0    -1  
$EndComp
$Comp
L R_Small R7
U 1 1 58D98427
P 9450 5200
F 0 "R7" H 9480 5220 50  0000 L CNN
F 1 "120" H 9480 5160 50  0000 L CNN
F 2 "Resistors_SMD:R_2010" H 9450 5200 50  0001 C CNN
F 3 "" H 9450 5200 50  0000 C CNN
	1    9450 5200
	1    0    0    -1  
$EndComp
Text Notes 9650 5300 0    60   ~ 0
(3.3-3.1)/1.5e-3 = 133 Ohm\n3.3^2/120 = 90 mW
$Comp
L +3.3V #PWR014
U 1 1 58D9978C
P 9450 5100
F 0 "#PWR014" H 9450 4950 50  0001 C CNN
F 1 "+3.3V" H 9450 5240 50  0000 C CNN
F 2 "" H 9450 5100 50  0000 C CNN
F 3 "" H 9450 5100 50  0000 C CNN
	1    9450 5100
	1    0    0    -1  
$EndComp
Text GLabel 6650 2850 2    60   Input ~ 0
SCLK
Text GLabel 6650 2950 2    60   Input ~ 0
MOSI
Text GLabel 6650 3050 2    60   Input ~ 0
MISO
Text GLabel 6650 3250 2    60   Input ~ 0
PWM0
Text GLabel 6650 3350 2    60   Input ~ 0
PWM1
Text GLabel 6650 3450 2    60   Input ~ 0
PWM2
Text GLabel 4000 7100 3    60   Input ~ 0
TACH2
$Comp
L R_Small R10
U 1 1 58D9BAD0
P 2450 1300
F 0 "R10" H 2480 1320 50  0000 L CNN
F 1 "22" H 2480 1260 50  0000 L CNN
F 2 "Resistors_SMD:R_2010" H 2450 1300 50  0001 C CNN
F 3 "" H 2450 1300 50  0000 C CNN
	1    2450 1300
	0    -1   -1   0   
$EndComp
$Comp
L R_Small R9
U 1 1 58D9BD77
P 2450 1100
F 0 "R9" H 2480 1120 50  0000 L CNN
F 1 "22" H 2480 1060 50  0000 L CNN
F 2 "Resistors_SMD:R_2010" H 2450 1100 50  0001 C CNN
F 3 "" H 2450 1100 50  0000 C CNN
	1    2450 1100
	0    -1   -1   0   
$EndComp
Text GLabel 9250 2400 0    60   Input ~ 0
/SD_CS
NoConn ~ 9250 2300
Text GLabel 9250 2500 0    60   Input ~ 0
MOSI
$Comp
L +3.3V #PWR015
U 1 1 58D9EE8B
P 8050 2350
F 0 "#PWR015" H 8050 2200 50  0001 C CNN
F 1 "+3.3V" H 8050 2490 50  0000 C CNN
F 2 "" H 8050 2350 50  0000 C CNN
F 3 "" H 8050 2350 50  0000 C CNN
	1    8050 2350
	0    -1   -1   0   
$EndComp
Text GLabel 9250 2700 0    60   Input ~ 0
SCLK
$Comp
L GND #PWR016
U 1 1 58D9EFE2
P 8650 2900
F 0 "#PWR016" H 8650 2650 50  0001 C CNN
F 1 "GND" H 8650 2750 50  0000 C CNN
F 2 "" H 8650 2900 50  0000 C CNN
F 3 "" H 8650 2900 50  0000 C CNN
	1    8650 2900
	1    0    0    -1  
$EndComp
$Comp
L C_Small C11
U 1 1 58D9F14E
P 8650 2700
F 0 "C11" H 8660 2770 50  0000 L CNN
F 1 "100n" H 8660 2620 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 8650 2700 50  0001 C CNN
F 3 "" H 8650 2700 50  0000 C CNN
	1    8650 2700
	1    0    0    -1  
$EndComp
Text GLabel 9250 2900 0    60   Input ~ 0
MISO
Text GLabel 9250 3000 0    60   Input ~ 0
SD_IRQ
Text Notes 7900 1950 0    60   ~ 0
AVR has high >= 0.6*VCC = 1.8 V\nµSD allows down to 2.0 V supply\nTake 2.5 V as a good value\n60 mA max\n(3.3-2.5)/0.06 = 13 Ohm
$Comp
L R_Small R11
U 1 1 58D9FF73
P 8250 2350
F 0 "R11" H 8280 2370 50  0000 L CNN
F 1 "22" H 8280 2310 50  0000 L CNN
F 2 "Resistors_SMD:R_2010" H 8250 2350 50  0001 C CNN
F 3 "" H 8250 2350 50  0000 C CNN
	1    8250 2350
	0    -1   -1   0   
$EndComp
$Comp
L R_Small R12
U 1 1 58DA0009
P 8250 2550
F 0 "R12" H 8280 2570 50  0000 L CNN
F 1 "22" H 8280 2510 50  0000 L CNN
F 2 "Resistors_SMD:R_2010" H 8250 2550 50  0001 C CNN
F 3 "" H 8250 2550 50  0000 C CNN
	1    8250 2550
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR017
U 1 1 58DA1771
P 10950 3200
F 0 "#PWR017" H 10950 2950 50  0001 C CNN
F 1 "GND" H 10950 3050 50  0000 C CNN
F 2 "" H 10950 3200 50  0000 C CNN
F 3 "" H 10950 3200 50  0000 C CNN
	1    10950 3200
	0    -1   -1   0   
$EndComp
$Comp
L 74LS153 U1
U 1 1 58DA2A34
P 3850 6250
F 0 "U1" H 3850 6550 50  0000 C CNN
F 1 "CD74AC153M96" H 3850 6400 50  0000 C CNN
F 2 "Housings_SOIC:SOIC-16_3.9x9.9mm_Pitch1.27mm" H 3850 6250 50  0001 C CNN
F 3 "" H 3850 6250 50  0000 C CNN
F 4 "2334932" H 3850 6250 60  0001 C CNN "1st Distrib. PN"
F 5 "http://se.farnell.com/texas-instruments/cd74ac153m96/data-selector-mux-dual-4-1-soic/dp/2334932" H 3850 6250 60  0001 C CNN "1st Distrib. Link"
	1    3850 6250
	0    -1   -1   0   
$EndComp
Text GLabel 4050 3350 0    60   Input ~ 0
/EN_XMEM
Text GLabel 3150 7100 3    60   Input ~ 0
/DRDY0
Text GLabel 3250 7100 3    60   Input ~ 0
/DRDY1
Text GLabel 3350 7100 3    60   Input ~ 0
/DRDY2
$Comp
L GND #PWR018
U 1 1 58DA64F3
P 3600 7000
F 0 "#PWR018" H 3600 6750 50  0001 C CNN
F 1 "GND" H 3600 6850 50  0000 C CNN
F 2 "" H 3600 7000 50  0000 C CNN
F 3 "" H 3600 7000 50  0000 C CNN
	1    3600 7000
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR019
U 1 1 58DA657D
P 4250 7000
F 0 "#PWR019" H 4250 6750 50  0001 C CNN
F 1 "GND" H 4250 6850 50  0000 C CNN
F 2 "" H 4250 7000 50  0000 C CNN
F 3 "" H 4250 7000 50  0000 C CNN
	1    4250 7000
	1    0    0    -1  
$EndComp
$Comp
L R_Small R16
U 1 1 58DA7C95
P 850 4850
F 0 "R16" H 880 4870 50  0000 L CNN
F 1 "120" H 880 4810 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" H 850 4850 50  0001 C CNN
F 3 "" H 850 4850 50  0000 C CNN
	1    850  4850
	1    0    0    -1  
$EndComp
$Comp
L R_Small R13
U 1 1 58DA8043
P 600 4850
F 0 "R13" H 630 4870 50  0000 L CNN
F 1 "120" H 630 4810 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" H 600 4850 50  0001 C CNN
F 3 "" H 600 4850 50  0000 C CNN
	1    600  4850
	1    0    0    -1  
$EndComp
$Comp
L R_Small R17
U 1 1 58DA835C
P 1700 4850
F 0 "R17" H 1730 4870 50  0000 L CNN
F 1 "120" H 1730 4810 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" H 1700 4850 50  0001 C CNN
F 3 "" H 1700 4850 50  0000 C CNN
	1    1700 4850
	1    0    0    -1  
$EndComp
Text GLabel 4050 5150 0    60   Input ~ 0
SD_IRQ
Text GLabel 6650 3150 2    60   Input ~ 0
/SD_CS
Text GLabel 3950 3550 0    60   Input ~ 0
ONEWIRE
Text Notes 6800 4950 0    60   ~ 0
Input capture
Text GLabel 6650 4550 2    60   Input ~ 0
/CS_ADC0
Text GLabel 6650 4650 2    60   Input ~ 0
/CS_ADC1
Text GLabel 4050 4350 0    60   Input ~ 0
/CS_ADC2
Text GLabel 4050 4750 0    60   Input ~ 0
/CS_VGND0
Text GLabel 4050 4850 0    60   Input ~ 0
/CS_VGND1
Text GLabel 4050 4950 0    60   Input ~ 0
/CS_VGND2
Text GLabel 2950 4900 0    60   Input ~ 0
EN_VGND0
Text GLabel 2950 5050 0    60   Input ~ 0
EN_VGND1
Text GLabel 2950 5200 0    60   Input ~ 0
EN_VGND2
$Comp
L +3.3V #PWR020
U 1 1 58DBE525
P 1100 3400
F 0 "#PWR020" H 1100 3250 50  0001 C CNN
F 1 "+3.3V" H 1100 3540 50  0000 C CNN
F 2 "" H 1100 3400 50  0000 C CNN
F 3 "" H 1100 3400 50  0000 C CNN
	1    1100 3400
	1    0    0    -1  
$EndComp
$Comp
L +24V #PWR021
U 1 1 58DBE597
P 1350 3400
F 0 "#PWR021" H 1350 3250 50  0001 C CNN
F 1 "+24V" H 1350 3540 50  0000 C CNN
F 2 "" H 1350 3400 50  0000 C CNN
F 3 "" H 1350 3400 50  0000 C CNN
	1    1350 3400
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR022
U 1 1 58DBE694
P 1850 3400
F 0 "#PWR022" H 1850 3250 50  0001 C CNN
F 1 "+5V" H 1850 3540 50  0000 C CNN
F 2 "" H 1850 3400 50  0000 C CNN
F 3 "" H 1850 3400 50  0000 C CNN
	1    1850 3400
	1    0    0    -1  
$EndComp
$Comp
L -5V #PWR18
U 1 1 58DBE706
P 2100 4300
F 0 "#PWR18" H 2100 4400 50  0001 C CNN
F 1 "-5V" H 2100 4450 50  0000 C CNN
F 2 "" H 2100 4300 50  0000 C CNN
F 3 "" H 2100 4300 50  0000 C CNN
	1    2100 4300
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR023
U 1 1 58DBE778
P 1100 4400
F 0 "#PWR023" H 1100 4150 50  0001 C CNN
F 1 "GND" H 1100 4250 50  0000 C CNN
F 2 "" H 1100 4400 50  0000 C CNN
F 3 "" H 1100 4400 50  0000 C CNN
	1    1100 4400
	1    0    0    -1  
$EndComp
$Comp
L R_Small R20
U 1 1 58DBE902
P 1100 3500
F 0 "R20" H 1130 3520 50  0000 L CNN
F 1 "18k" H 1130 3460 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" H 1100 3500 50  0001 C CNN
F 3 "" H 1100 3500 50  0000 C CNN
	1    1100 3500
	1    0    0    -1  
$EndComp
$Comp
L R_Small R21
U 1 1 58DBEB7E
P 1350 3500
F 0 "R21" H 1380 3520 50  0000 L CNN
F 1 "150k" H 1380 3460 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" H 1350 3500 50  0001 C CNN
F 3 "" H 1350 3500 50  0000 C CNN
	1    1350 3500
	1    0    0    -1  
$EndComp
$Comp
L R_Small R22
U 1 1 58DBEC1B
P 1850 3500
F 0 "R22" H 1880 3520 50  0000 L CNN
F 1 "18k" H 1880 3460 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" H 1850 3500 50  0001 C CNN
F 3 "" H 1850 3500 50  0000 C CNN
	1    1850 3500
	1    0    0    -1  
$EndComp
$Comp
L R_Small R23
U 1 1 58DBECB9
P 2100 3500
F 0 "R23" H 2130 3520 50  0000 L CNN
F 1 "10k" H 2130 3460 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" H 2100 3500 50  0001 C CNN
F 3 "" H 2100 3500 50  0000 C CNN
	1    2100 3500
	1    0    0    -1  
$EndComp
$Comp
L R_Small R24
U 1 1 58DBEE5F
P 1100 4200
F 0 "R24" H 1130 4220 50  0000 L CNN
F 1 "18k" H 1130 4160 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" H 1100 4200 50  0001 C CNN
F 3 "" H 1100 4200 50  0000 C CNN
	1    1100 4200
	1    0    0    -1  
$EndComp
$Comp
L R_Small R25
U 1 1 58DBEF1D
P 1350 4200
F 0 "R25" H 1380 4220 50  0000 L CNN
F 1 "10k" H 1380 4160 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" H 1350 4200 50  0001 C CNN
F 3 "" H 1350 4200 50  0000 C CNN
	1    1350 4200
	1    0    0    -1  
$EndComp
$Comp
L R_Small R26
U 1 1 58DBEFC6
P 1850 4200
F 0 "R26" H 1880 4220 50  0000 L CNN
F 1 "10k" H 1880 4160 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" H 1850 4200 50  0001 C CNN
F 3 "" H 1850 4200 50  0000 C CNN
	1    1850 4200
	1    0    0    -1  
$EndComp
$Comp
L R_Small R27
U 1 1 58DBF074
P 2100 4200
F 0 "R27" H 2130 4220 50  0000 L CNN
F 1 "22k" H 2130 4160 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" H 2100 4200 50  0001 C CNN
F 3 "" H 2100 4200 50  0000 C CNN
	1    2100 4200
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR024
U 1 1 58DBFED8
P 2100 3400
F 0 "#PWR024" H 2100 3250 50  0001 C CNN
F 1 "+3.3V" H 2100 3540 50  0000 C CNN
F 2 "" H 2100 3400 50  0000 C CNN
F 3 "" H 2100 3400 50  0000 C CNN
	1    2100 3400
	1    0    0    -1  
$EndComp
Text Notes 1300 3150 0    39   ~ 0
"The ADC is optimized for analog\nsignals with an output impedance\nof approximately 10kΩ or less."
Text Notes 3200 3750 0    60   ~ 0
0..40 V
Text Notes 3200 3650 0    60   ~ 0
0..5 V
Text Notes 3200 3950 0    60   ~ 0
0..7 V
Text Notes 3200 4050 0    60   ~ 0
-7..0 V
$Comp
L R_Small R36
U 1 1 58DA86A6
P 3350 3450
F 0 "R36" H 3380 3470 50  0000 L CNN
F 1 "4k7" H 3380 3410 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" H 3350 3450 50  0001 C CNN
F 3 "" H 3350 3450 50  0000 C CNN
	1    3350 3450
	0    -1   -1   0   
$EndComp
$Comp
L +3.3V #PWR025
U 1 1 58DA8B72
P 3250 3450
F 0 "#PWR025" H 3250 3300 50  0001 C CNN
F 1 "+3.3V" H 3250 3590 50  0000 C CNN
F 2 "" H 3250 3450 50  0000 C CNN
F 3 "" H 3250 3450 50  0000 C CNN
	1    3250 3450
	0    -1   -1   0   
$EndComp
$Comp
L PWR_FLAG #FLG026
U 1 1 58DB2C09
P 4350 1200
F 0 "#FLG026" H 4350 1295 50  0001 C CNN
F 1 "PWR_FLAG" H 4350 1380 50  0000 C CNN
F 2 "" H 4350 1200 50  0000 C CNN
F 3 "" H 4350 1200 50  0000 C CNN
	1    4350 1200
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG027
U 1 1 58DB2D7E
P 5500 1150
F 0 "#FLG027" H 5500 1245 50  0001 C CNN
F 1 "PWR_FLAG" H 5500 1330 50  0000 C CNN
F 2 "" H 5500 1150 50  0000 C CNN
F 3 "" H 5500 1150 50  0000 C CNN
	1    5500 1150
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG028
U 1 1 58DB2FB1
P 9300 5450
F 0 "#FLG028" H 9300 5545 50  0001 C CNN
F 1 "PWR_FLAG" H 9300 5630 50  0000 C CNN
F 2 "" H 9300 5450 50  0000 C CNN
F 3 "" H 9300 5450 50  0000 C CNN
	1    9300 5450
	0    -1   -1   0   
$EndComp
$Comp
L PWR_FLAG #FLG029
U 1 1 58DB46E9
P 8650 2200
F 0 "#FLG029" H 8650 2295 50  0001 C CNN
F 1 "PWR_FLAG" H 8650 2380 50  0000 C CNN
F 2 "" H 8650 2200 50  0000 C CNN
F 3 "" H 8650 2200 50  0000 C CNN
	1    8650 2200
	1    0    0    -1  
$EndComp
Text GLabel 1600 3400 1    60   Input ~ 0
VIN
$Comp
L R_Small R37
U 1 1 58DB8DCE
P 1600 3500
F 0 "R37" H 1630 3520 50  0000 L CNN
F 1 "150k" H 1630 3460 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" H 1600 3500 50  0001 C CNN
F 3 "" H 1600 3500 50  0000 C CNN
	1    1600 3500
	1    0    0    -1  
$EndComp
$Comp
L R_Small R38
U 1 1 58DB8E7A
P 1600 4200
F 0 "R38" H 1630 4220 50  0000 L CNN
F 1 "10k" H 1630 4160 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" H 1600 4200 50  0001 C CNN
F 3 "" H 1600 4200 50  0000 C CNN
	1    1600 4200
	1    0    0    -1  
$EndComp
Text Notes 3200 3850 0    60   ~ 0
0..40 V
Text Notes 9700 1950 0    60   ~ 0
NOTE: reverse-mount
Text GLabel 3900 1800 1    60   Input ~ 0
/RESET
Text GLabel 850  5450 3    60   Input ~ 0
/RESET
Text GLabel 600  4600 1    60   Input ~ 0
SCLK
Text GLabel 750  5450 3    60   Input ~ 0
PDO
Text GLabel 1750 5300 2    60   Input ~ 0
PDI
Wire Wire Line
	850  5400 900  5400
Wire Wire Line
	850  5450 850  5400
Wire Wire Line
	600  4600 600  4750
Connection ~ 3900 1850
Wire Wire Line
	3900 1800 3900 1850
Connection ~ 1600 3850
Wire Wire Line
	4050 3850 1600 3850
Wire Wire Line
	1850 3950 4050 3950
Wire Wire Line
	2100 4050 4050 4050
Wire Wire Line
	1600 3600 1600 4100
Connection ~ 1100 4350
Connection ~ 1600 4350
Wire Wire Line
	1600 4350 1600 4300
Connection ~ 8650 2350
Connection ~ 4000 7050
Wire Wire Line
	4100 7050 4000 7050
Wire Wire Line
	4100 7000 4100 7050
Wire Wire Line
	4000 7000 4000 7100
Wire Wire Line
	3900 7000 3900 7100
Wire Wire Line
	3800 7000 3800 7100
Connection ~ 3350 7050
Wire Wire Line
	3450 7050 3350 7050
Wire Wire Line
	3450 7000 3450 7050
Wire Wire Line
	3350 7000 3350 7100
Wire Wire Line
	3250 7000 3250 7100
Wire Wire Line
	3150 7000 3150 7100
Connection ~ 4350 1300
Wire Wire Line
	4350 1300 4350 1200
Connection ~ 3400 5050
Wire Wire Line
	3200 5050 4050 5050
Wire Wire Line
	3400 4900 3400 5200
Connection ~ 4000 3450
Wire Wire Line
	4000 3550 4000 3450
Wire Wire Line
	3950 3550 4000 3550
Wire Wire Line
	3450 3450 4050 3450
Connection ~ 1100 3650
Wire Wire Line
	4050 3650 1100 3650
Connection ~ 1350 3750
Wire Wire Line
	4050 3750 1350 3750
Connection ~ 1850 3950
Connection ~ 2100 4050
Wire Wire Line
	1850 4350 1850 4300
Wire Wire Line
	1100 4350 1850 4350
Wire Wire Line
	1100 4300 1100 4400
Wire Wire Line
	2100 3600 2100 4100
Wire Wire Line
	1100 3600 1100 4100
Wire Wire Line
	1350 3600 1350 4100
Wire Wire Line
	1850 3600 1850 4100
Connection ~ 1350 4350
Wire Wire Line
	1350 4300 1350 4350
Wire Wire Line
	4450 7150 4450 7000
Wire Wire Line
	6800 7150 4450 7150
Wire Wire Line
	6800 5150 6800 7150
Wire Wire Line
	6650 5150 6800 5150
Wire Wire Line
	6700 5250 6650 5250
Wire Wire Line
	6700 7050 6700 5250
Wire Wire Line
	4550 7050 6700 7050
Wire Wire Line
	4550 7000 4550 7050
Wire Wire Line
	3350 5250 3350 5500
Wire Wire Line
	4050 5250 3350 5250
Wire Wire Line
	4000 5450 4000 5500
Wire Wire Line
	4900 5450 4000 5450
Wire Wire Line
	4900 6000 4900 5450
Wire Wire Line
	7450 4950 6650 4950
Wire Wire Line
	7450 6000 7450 4950
Wire Wire Line
	4900 6000 7450 6000
Wire Wire Line
	9200 5050 6650 5050
Wire Wire Line
	9200 3800 9300 3800
Wire Wire Line
	9200 5050 9200 3800
Wire Wire Line
	1700 4750 1700 4550
Wire Wire Line
	1700 5300 1700 4950
Wire Wire Line
	600  4950 600  5450
Wire Wire Line
	900  5300 600  5300
Wire Wire Line
	850  5200 850  4950
Wire Wire Line
	8650 2200 8650 2600
Wire Wire Line
	8100 2550 8100 2350
Connection ~ 8650 2850
Wire Wire Line
	8450 2850 8850 2850
Wire Wire Line
	8850 2850 8850 2800
Wire Wire Line
	8850 2800 9250 2800
Wire Wire Line
	8850 2600 9250 2600
Wire Wire Line
	8850 2550 8850 2600
Wire Wire Line
	8650 2800 8650 2900
Connection ~ 8650 2550
Wire Wire Line
	8350 2550 8850 2550
Wire Wire Line
	8350 2350 8650 2350
Connection ~ 8100 2350
Wire Wire Line
	8050 2350 8150 2350
Wire Wire Line
	8150 2550 8100 2550
Connection ~ 2300 1100
Wire Wire Line
	2300 1300 2300 1100
Wire Wire Line
	2350 1300 2300 1300
Wire Wire Line
	2200 1100 2350 1100
Connection ~ 2700 1300
Connection ~ 2650 1300
Wire Wire Line
	2650 1100 2650 1300
Wire Wire Line
	2550 1100 2650 1100
Wire Wire Line
	9100 3900 9300 3900
Wire Wire Line
	9100 4850 9100 3900
Wire Wire Line
	9000 3700 9300 3700
Wire Wire Line
	9000 4750 9000 3700
Wire Wire Line
	7800 4000 9300 4000
Wire Wire Line
	7800 2750 7800 4000
Connection ~ 9450 5850
Wire Wire Line
	10600 5850 9450 5850
Wire Wire Line
	10600 5750 10600 5850
Wire Wire Line
	10550 5750 10600 5750
Wire Wire Line
	9450 5700 9450 5900
Connection ~ 9450 5450
Wire Wire Line
	9450 5300 9450 5500
Wire Wire Line
	9300 5450 9650 5450
Wire Wire Line
	9650 5450 9650 5650
Wire Wire Line
	9650 5650 9750 5650
Wire Wire Line
	9350 5750 9750 5750
Connection ~ 1250 7250
Wire Wire Line
	1250 7250 1200 7250
Connection ~ 1250 7050
Wire Wire Line
	1200 7050 1250 7050
Connection ~ 1250 7150
Wire Wire Line
	1250 7450 1200 7450
Wire Wire Line
	1250 6850 1200 6850
Wire Wire Line
	1250 6850 1250 7450
Wire Wire Line
	1250 7150 1300 7150
Wire Wire Line
	850  4650 4050 4650
Wire Wire Line
	1700 4550 4050 4550
Wire Wire Line
	2550 1300 5250 1300
Wire Wire Line
	6650 4850 9100 4850
Wire Wire Line
	6650 2750 7800 2750
Wire Wire Line
	3800 2850 4050 2850
Connection ~ 5500 1300
Wire Wire Line
	5500 1150 5500 1550
Wire Wire Line
	5450 1300 5550 1300
Wire Wire Line
	9000 4750 6650 4750
Connection ~ 3700 1600
Wire Wire Line
	3450 1600 3450 1650
Wire Wire Line
	3700 1600 3450 1600
Connection ~ 3700 1300
Wire Wire Line
	3700 1300 3700 1350
Wire Wire Line
	3700 1550 3700 1850
Connection ~ 3900 2300
Wire Wire Line
	3900 2100 3900 2300
Wire Wire Line
	3100 2100 3900 2100
Connection ~ 3950 2300
Wire Wire Line
	3950 2300 3950 2350
Connection ~ 3950 2600
Wire Wire Line
	3800 2300 4050 2300
Wire Wire Line
	3950 2600 3950 2550
Wire Wire Line
	3800 2600 4050 2600
Connection ~ 2950 1300
Wire Wire Line
	2950 1300 2950 1400
Wire Wire Line
	2700 1300 2700 1400
Wire Wire Line
	3700 1850 4050 1850
Wire Wire Line
	1450 5400 1400 5400
Wire Wire Line
	1450 5600 1450 5400
Wire Wire Line
	1450 5200 1400 5200
Wire Wire Line
	1450 5050 1450 5200
Wire Wire Line
	750  5200 900  5200
Wire Wire Line
	1400 5300 1750 5300
Connection ~ 5300 5650
Wire Wire Line
	5500 5650 5500 5550
Connection ~ 5200 5650
Wire Wire Line
	5200 5550 5200 5650
Wire Wire Line
	5300 5650 5300 5750
Wire Wire Line
	5100 5650 5500 5650
Wire Wire Line
	5100 5550 5100 5650
Connection ~ 5200 1300
Connection ~ 5100 1300
Wire Wire Line
	5200 1300 5200 1550
Wire Wire Line
	5100 1300 5100 1550
Text GLabel 600  5450 3    60   Input ~ 0
SCLK_OUT
Connection ~ 600  5300
Connection ~ 1700 5300
Wire Wire Line
	850  4650 850  4750
Wire Wire Line
	750  5450 750  5200
Connection ~ 850  5200
$Comp
L CONN_01X02 P3
U 1 1 590F3AD7
P 1300 6100
F 0 "P3" H 1300 6250 50  0000 C CNN
F 1 "CONN_01X02" V 1400 6100 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02" H 1300 6100 50  0001 C CNN
F 3 "" H 1300 6100 50  0000 C CNN
	1    1300 6100
	0    -1   -1   0   
$EndComp
$Comp
L LED_Small D1
U 1 1 590F3C05
P 2250 6100
F 0 "D1" H 2200 6225 50  0000 L CNN
F 1 "LED_Small" H 2075 6000 50  0000 L CNN
F 2 "LEDs:LED_0805" V 2250 6100 50  0001 C CNN
F 3 "" V 2250 6100 50  0000 C CNN
	1    2250 6100
	-1   0    0    1   
$EndComp
$Comp
L LED_Small D7
U 1 1 590F3CB7
P 2250 6400
F 0 "D7" H 2200 6525 50  0000 L CNN
F 1 "LED_Small" H 2075 6300 50  0000 L CNN
F 2 "LEDs:LED_0805" V 2250 6400 50  0001 C CNN
F 3 "" V 2250 6400 50  0000 C CNN
	1    2250 6400
	-1   0    0    1   
$EndComp
$Comp
L R_Small R3
U 1 1 590F45A1
P 2550 6100
F 0 "R3" H 2580 6120 50  0000 L CNN
F 1 "1k2" H 2580 6060 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" H 2550 6100 50  0001 C CNN
F 3 "" H 2550 6100 50  0000 C CNN
	1    2550 6100
	0    -1   -1   0   
$EndComp
$Comp
L R_Small R4
U 1 1 590F49F8
P 2550 6400
F 0 "R4" H 2580 6420 50  0000 L CNN
F 1 "1k2" H 2580 6360 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" H 2550 6400 50  0001 C CNN
F 3 "" H 2550 6400 50  0000 C CNN
	1    2550 6400
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR030
U 1 1 590F4A86
P 2650 6100
F 0 "#PWR030" H 2650 5850 50  0001 C CNN
F 1 "GND" H 2650 5950 50  0000 C CNN
F 2 "" H 2650 6100 50  0000 C CNN
F 3 "" H 2650 6100 50  0000 C CNN
	1    2650 6100
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR031
U 1 1 590F4B3A
P 2650 6400
F 0 "#PWR031" H 2650 6150 50  0001 C CNN
F 1 "GND" H 2650 6250 50  0000 C CNN
F 2 "" H 2650 6400 50  0000 C CNN
F 3 "" H 2650 6400 50  0000 C CNN
	1    2650 6400
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2350 6100 2450 6100
Wire Wire Line
	2350 6400 2450 6400
Wire Wire Line
	1150 6450 1600 6450
Wire Wire Line
	1600 6450 1600 6400
Wire Wire Line
	1600 6400 2150 6400
Wire Wire Line
	1150 6350 1550 6350
Wire Wire Line
	1550 6350 1550 6100
Wire Wire Line
	1550 6100 2150 6100
Wire Wire Line
	1250 6300 1250 6350
Connection ~ 1250 6350
Wire Wire Line
	1350 6300 1350 6450
Connection ~ 1350 6450
Text Notes 6950 4100 0    47   ~ 0
Header + LEDs for debugging
Text GLabel 1800 7150 3    60   Input ~ 0
EN_VGND0
Text GLabel 1950 7150 3    60   Input ~ 0
EN_VGND1
$Comp
L R_Small R14
U 1 1 590F6909
P 3100 4900
F 0 "R14" H 3130 4920 50  0000 L CNN
F 1 "0" H 3130 4860 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" H 3100 4900 50  0001 C CNN
F 3 "" H 3100 4900 50  0000 C CNN
	1    3100 4900
	0    1    1    0   
$EndComp
$Comp
L R_Small R15
U 1 1 590F6C7D
P 3100 5050
F 0 "R15" H 3130 5070 50  0000 L CNN
F 1 "0" H 3130 5010 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" H 3100 5050 50  0001 C CNN
F 3 "" H 3100 5050 50  0000 C CNN
	1    3100 5050
	0    1    1    0   
$EndComp
Wire Wire Line
	3400 5200 2950 5200
Wire Wire Line
	3400 4900 3200 4900
Wire Wire Line
	3000 4900 2950 4900
Wire Wire Line
	2950 5050 3000 5050
$Comp
L R_Small R39
U 1 1 590F7E55
P 1800 7000
F 0 "R39" H 1830 7020 50  0000 L CNN
F 1 "0" H 1830 6960 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" H 1800 7000 50  0001 C CNN
F 3 "" H 1800 7000 50  0000 C CNN
	1    1800 7000
	-1   0    0    1   
$EndComp
Wire Wire Line
	1800 7100 1800 7150
$Comp
L R_Small R40
U 1 1 590F89D9
P 1950 7000
F 0 "R40" H 1980 7020 50  0000 L CNN
F 1 "0" H 1980 6960 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" H 1950 7000 50  0001 C CNN
F 3 "" H 1950 7000 50  0000 C CNN
	1    1950 7000
	1    0    0    -1  
$EndComp
Wire Wire Line
	1950 7100 1950 7150
Wire Wire Line
	1800 6900 1800 6100
Connection ~ 1800 6100
Text Notes 2000 6800 0    47   ~ 0
We might need to control\neach EN_VGND individually
$Comp
L C_Small C9
U 1 1 590F9B1A
P 3200 1500
F 0 "C9" H 3210 1570 50  0000 L CNN
F 1 "10u" H 3210 1420 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 3200 1500 50  0001 C CNN
F 3 "" H 3200 1500 50  0000 C CNN
	1    3200 1500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR032
U 1 1 590F9C64
P 3200 1600
F 0 "#PWR032" H 3200 1350 50  0001 C CNN
F 1 "GND" H 3200 1450 50  0000 C CNN
F 2 "" H 3200 1600 50  0000 C CNN
F 3 "" H 3200 1600 50  0000 C CNN
	1    3200 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 1400 3200 1300
Connection ~ 3200 1300
$Comp
L C_Small C10
U 1 1 590FA430
P 8450 2700
F 0 "C10" H 8460 2770 50  0000 L CNN
F 1 "10u" H 8460 2620 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 8450 2700 50  0001 C CNN
F 3 "" H 8450 2700 50  0000 C CNN
	1    8450 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	8450 2850 8450 2800
Wire Wire Line
	8450 2600 8450 2550
Connection ~ 8450 2550
Wire Wire Line
	1950 6900 1950 6400
Connection ~ 1950 6400
Text GLabel 4050 4150 0    60   Input ~ 0
PF5
Text GLabel 4050 4250 0    60   Input ~ 0
PF6
Text GLabel 1150 6350 0    60   Input ~ 0
PF5
Text GLabel 1150 6450 0    60   Input ~ 0
PF6
Text Notes 2350 4250 0    60   ~ 0
PF5 and PF6 might be use for\nmore analog inputs in cpu3
$EndSCHEMATC
