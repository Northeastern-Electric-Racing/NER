EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Accumulator/BMS/Charger Connection Diagram"
Date "2019-11-09"
Rev "1.0"
Comp "Northeastern Formula SAE"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Device:Battery BT2
U 1 1 5DC5D68C
P 2750 3400
F 0 "BT2" V 2505 3400 50  0000 C CNN
F 1 "Battery" V 2596 3400 50  0000 C CNN
F 2 "" V 2750 3460 50  0001 C CNN
F 3 "~" V 2750 3460 50  0001 C CNN
	1    2750 3400
	0    1    1    0   
$EndComp
$Comp
L Device:Battery BT3
U 1 1 5DC618EB
P 3400 3400
F 0 "BT3" V 3155 3400 50  0000 C CNN
F 1 "Battery" V 3246 3400 50  0000 C CNN
F 2 "" V 3400 3460 50  0001 C CNN
F 3 "~" V 3400 3460 50  0001 C CNN
	1    3400 3400
	0    1    1    0   
$EndComp
$Comp
L Device:Battery BT4
U 1 1 5DC62472
P 4050 3400
F 0 "BT4" V 3805 3400 50  0000 C CNN
F 1 "Battery" V 3896 3400 50  0000 C CNN
F 2 "" V 4050 3460 50  0001 C CNN
F 3 "~" V 4050 3460 50  0001 C CNN
	1    4050 3400
	0    1    1    0   
$EndComp
$Comp
L Device:Battery BT1
U 1 1 5DC62E71
P 2100 3400
F 0 "BT1" V 1855 3400 50  0000 C CNN
F 1 "Battery" V 1946 3400 50  0000 C CNN
F 2 "" V 2100 3460 50  0001 C CNN
F 3 "~" V 2100 3460 50  0001 C CNN
	1    2100 3400
	0    1    1    0   
$EndComp
$Comp
L Device:Fuse F3
U 1 1 5DC6F57F
P 4100 1350
F 0 "F3" V 3903 1350 50  0000 C CNN
F 1 "300V, ?A" V 3994 1350 50  0000 C CNN
F 2 "" V 4030 1350 50  0001 C CNN
F 3 "~" H 4100 1350 50  0001 C CNN
	1    4100 1350
	0    1    1    0   
$EndComp
$Comp
L Device:Fuse F4
U 1 1 5DC705D2
P 4100 1500
F 0 "F4" V 3903 1500 50  0000 C CNN
F 1 "300V, ?A" V 3994 1500 50  0000 C CNN
F 2 "" V 4030 1500 50  0001 C CNN
F 3 "~" H 4100 1500 50  0001 C CNN
	1    4100 1500
	0    1    1    0   
$EndComp
$Comp
L Device:R R1
U 1 1 5DC70C7D
P 4050 1850
F 0 "R1" V 3843 1850 50  0000 C CNN
F 1 "120" V 3934 1850 50  0000 C CNN
F 2 "" V 3980 1850 50  0001 C CNN
F 3 "~" H 4050 1850 50  0001 C CNN
	1    4050 1850
	0    1    1    0   
$EndComp
Wire Wire Line
	3750 1750 3900 1750
Wire Wire Line
	4200 1900 4200 1850
Wire Wire Line
	3900 1750 3900 1850
Wire Wire Line
	3750 1900 3900 1900
Connection ~ 4200 1900
Wire Wire Line
	4200 1900 4450 1900
Connection ~ 3900 1900
Wire Wire Line
	3900 1900 4200 1900
Connection ~ 3900 1850
Wire Wire Line
	3900 1850 3900 1900
Wire Wire Line
	3900 1750 4450 1750
Connection ~ 3900 1750
$Comp
L power:GND #PWR?
U 1 1 5DC71FC0
P 1100 1350
F 0 "#PWR?" H 1100 1100 50  0001 C CNN
F 1 "GND" V 1105 1222 50  0000 R CNN
F 2 "" H 1100 1350 50  0001 C CNN
F 3 "" H 1100 1350 50  0001 C CNN
	1    1100 1350
	0    1    1    0   
$EndComp
$Comp
L power:AC #PWR?
U 1 1 5DC72C30
P 1100 1600
F 0 "#PWR?" H 1100 1500 50  0001 C CNN
F 1 "AC" V 1100 1829 50  0000 L CNN
F 2 "" H 1100 1600 50  0001 C CNN
F 3 "" H 1100 1600 50  0001 C CNN
	1    1100 1600
	0    -1   -1   0   
$EndComp
$Comp
L power:AC #PWR?
U 1 1 5DC735CC
P 1100 1900
F 0 "#PWR?" H 1100 1800 50  0001 C CNN
F 1 "AC" V 1100 2129 50  0000 L CNN
F 2 "" H 1100 1900 50  0001 C CNN
F 3 "" H 1100 1900 50  0001 C CNN
	1    1100 1900
	0    -1   -1   0   
$EndComp
$Comp
L Device:Fuse F1
U 1 1 5DC73F30
P 1250 1600
F 0 "F1" V 1053 1600 50  0000 C CNN
F 1 "110Vac, 10A" V 1144 1600 50  0000 C CNN
F 2 "" V 1180 1600 50  0001 C CNN
F 3 "~" H 1250 1600 50  0001 C CNN
	1    1250 1600
	0    1    1    0   
$EndComp
$Comp
L Device:Fuse F2
U 1 1 5DC74A56
P 1250 1900
F 0 "F2" V 1053 1900 50  0000 C CNN
F 1 "110Vac, 10A" V 1144 1900 50  0000 C CNN
F 2 "" V 1180 1900 50  0001 C CNN
F 3 "~" H 1250 1900 50  0001 C CNN
	1    1250 1900
	0    1    1    0   
$EndComp
Wire Wire Line
	3750 1350 3950 1350
Wire Wire Line
	3950 1500 3750 1500
$Comp
L Relay:DIPxx-2Axx-21x K1
U 1 1 5DC765C9
P 1950 2000
F 0 "K1" V 2567 2000 50  0000 C CNN
F 1 "DPST Relay" V 2476 2000 50  0000 C CNN
F 2 "Relay_THT:Relay_StandexMeder_DIP_LowProfile" H 2450 1950 50  0001 L CNN
F 3 "" H 1850 2000 50  0001 C CNN
	1    1950 2000
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1100 1350 2500 1350
Wire Wire Line
	1400 1600 1650 1600
Wire Wire Line
	2250 1900 2350 1900
Wire Wire Line
	2350 1900 2350 1750
Wire Wire Line
	2350 1750 2500 1750
Wire Wire Line
	2250 1600 2500 1600
$Comp
L Full-Battery-System-rescue:OrionBMS2-FSAE_Components U2
U 1 1 5DC85CA0
P 2500 4400
F 0 "U2" H 2530 4525 50  0000 C CNN
F 1 "OrionBMS2" H 2530 4434 50  0000 C CNN
F 2 "" H 2500 4400 50  0001 C CNN
F 3 "" H 2500 4400 50  0001 C CNN
	1    2500 4400
	1    0    0    -1  
$EndComp
$Comp
L Full-Battery-System-rescue:OrionThermExp-FSAE_Components U3
U 1 1 5DCA04A6
P 5650 4700
F 0 "U3" H 5650 4825 50  0000 C CNN
F 1 "OrionThermExp" H 5650 4734 50  0000 C CNN
F 2 "" H 5650 4700 50  0001 C CNN
F 3 "" H 5650 4700 50  0001 C CNN
	1    5650 4700
	1    0    0    -1  
$EndComp
$Comp
L Full-Battery-System-rescue:OrionThermExp-FSAE_Components U4
U 1 1 5DCA1679
P 5650 5750
F 0 "U4" H 5650 5875 50  0000 C CNN
F 1 "OrionThermExp" H 5650 5784 50  0000 C CNN
F 2 "" H 5650 5750 50  0001 C CNN
F 3 "" H 5650 5750 50  0001 C CNN
	1    5650 5750
	1    0    0    -1  
$EndComp
$Comp
L Full-Battery-System-rescue:OrionCurrentSens-FSAE_Components U1
U 1 1 5DCA2777
P 4950 3550
F 0 "U1" H 4950 3573 50  0000 C CNN
F 1 "OrionCurrentSens" H 4950 3664 50  0000 C CNN
F 2 "" H 4950 3550 50  0001 C CNN
F 3 "" H 4950 3550 50  0001 C CNN
	1    4950 3550
	-1   0    0    1   
$EndComp
$Comp
L power:+12V #PWR?
U 1 1 5DCA4CCC
P 3850 7350
F 0 "#PWR?" H 3850 7200 50  0001 C CNN
F 1 "+12V" H 3865 7523 50  0000 C CNN
F 2 "" H 3850 7350 50  0001 C CNN
F 3 "" H 3850 7350 50  0001 C CNN
	1    3850 7350
	-1   0    0    1   
$EndComp
$Comp
L power:-12V #PWR?
U 1 1 5DCA59F8
P 4100 7350
F 0 "#PWR?" H 4100 7450 50  0001 C CNN
F 1 "-12V" H 4115 7523 50  0000 C CNN
F 2 "" H 4100 7350 50  0001 C CNN
F 3 "" H 4100 7350 50  0001 C CNN
	1    4100 7350
	-1   0    0    1   
$EndComp
Wire Wire Line
	2250 2300 2350 2300
Wire Wire Line
	2350 2600 1500 2600
Wire Wire Line
	1500 5000 1800 5000
Wire Wire Line
	5200 5200 5050 5200
Wire Wire Line
	5050 5200 5050 5500
Wire Wire Line
	5050 6250 5200 6250
Wire Wire Line
	5050 6250 5050 6550
Connection ~ 5050 6250
Wire Wire Line
	6100 5200 6300 5200
Wire Wire Line
	6300 5200 6300 5500
Wire Wire Line
	6300 6250 6100 6250
Wire Wire Line
	6300 6250 6300 6550
Connection ~ 6300 6250
$Comp
L Device:R R2
U 1 1 5DCAB9C7
P 5650 5500
F 0 "R2" V 5443 5500 50  0000 C CNN
F 1 "120" V 5534 5500 50  0000 C CNN
F 2 "" V 5580 5500 50  0001 C CNN
F 3 "~" H 5650 5500 50  0001 C CNN
	1    5650 5500
	0    1    1    0   
$EndComp
$Comp
L Device:R R3
U 1 1 5DCAC5B1
P 5650 6550
F 0 "R3" V 5443 6550 50  0000 C CNN
F 1 "120" V 5534 6550 50  0000 C CNN
F 2 "" V 5580 6550 50  0001 C CNN
F 3 "~" H 5650 6550 50  0001 C CNN
	1    5650 6550
	0    1    1    0   
$EndComp
Wire Wire Line
	5050 6550 5500 6550
Wire Wire Line
	5800 6550 6300 6550
Wire Wire Line
	5500 5500 5050 5500
Connection ~ 5050 5500
Wire Wire Line
	5050 5500 5050 6250
Wire Wire Line
	5800 5500 6300 5500
Connection ~ 6300 5500
Wire Wire Line
	6300 5500 6300 6250
Wire Wire Line
	5050 6550 5050 6800
Connection ~ 5050 6550
Wire Wire Line
	6300 6550 6300 6800
Connection ~ 6300 6550
Wire Wire Line
	6100 5950 6450 5950
Wire Wire Line
	6450 5950 6450 7300
Wire Wire Line
	6450 7300 4100 7300
Wire Wire Line
	4100 7300 4100 7350
Wire Wire Line
	6450 5950 6450 4900
Wire Wire Line
	6450 4900 6100 4900
Connection ~ 6450 5950
Wire Wire Line
	6100 5850 6400 5850
Wire Wire Line
	6100 4800 6400 4800
Wire Wire Line
	6400 4800 6400 5850
Connection ~ 6400 5850
Wire Wire Line
	6400 5850 6400 7250
Text Label 5050 6800 0    50   ~ 0
CAN_H
Text Label 6300 6800 2    50   ~ 0
CAN_L
Text Label 4450 1900 0    50   ~ 0
CAN_L
Text Label 4450 1750 0    50   ~ 0
CAN_H
Wire Wire Line
	4550 3400 4250 3400
Wire Wire Line
	3850 3400 3650 3400
Wire Wire Line
	3200 3400 3000 3400
Wire Wire Line
	2550 3400 2500 3400
Wire Wire Line
	1750 3800 1750 3400
Wire Wire Line
	1750 3400 1850 3400
Connection ~ 4100 7300
Wire Wire Line
	6400 7250 3850 7250
Wire Wire Line
	4100 7150 4100 7300
Wire Wire Line
	1800 6200 1300 6200
Wire Wire Line
	1800 6300 1300 6300
Text Label 1300 6200 2    50   ~ 0
CAN_H
Text Label 1300 6300 2    50   ~ 0
CAN_L
Wire Wire Line
	1400 1900 1650 1900
Wire Wire Line
	3200 6200 4900 6200
Wire Wire Line
	4900 6200 4900 4000
Wire Wire Line
	4900 4000 5600 4000
Wire Wire Line
	5600 4000 5600 2850
Wire Wire Line
	5600 2850 5150 2850
Wire Wire Line
	5150 2850 5150 2900
Wire Wire Line
	4850 6100 4850 3950
Wire Wire Line
	5550 3950 5550 2800
Wire Wire Line
	5550 2800 4850 2800
Wire Wire Line
	4850 2800 4850 2900
Wire Wire Line
	4850 3950 5550 3950
Wire Wire Line
	3200 6100 4850 6100
Wire Wire Line
	4800 5300 4800 3900
Wire Wire Line
	4800 3900 5500 3900
Wire Wire Line
	5500 3900 5500 2750
Wire Wire Line
	5500 2750 4700 2750
Wire Wire Line
	4700 2750 4700 2900
Wire Wire Line
	3200 5300 4800 5300
Wire Wire Line
	3200 5200 4750 5200
Wire Wire Line
	4750 5200 4750 3850
Wire Wire Line
	4750 3850 5450 3850
Wire Wire Line
	5450 3850 5450 2700
Wire Wire Line
	5450 2700 5000 2700
Wire Wire Line
	5000 2700 5000 2900
Wire Wire Line
	3200 5000 3450 5000
Wire Wire Line
	3450 5000 3450 3900
Wire Wire Line
	3450 3900 2100 3900
Wire Wire Line
	2100 3900 2100 3650
Wire Wire Line
	3450 5000 3500 5000
Wire Wire Line
	3500 5000 3500 3850
Wire Wire Line
	3500 3850 2750 3850
Connection ~ 3450 5000
Wire Wire Line
	3500 5000 3550 5000
Wire Wire Line
	3550 5000 3550 3750
Wire Wire Line
	3550 3750 3400 3750
Wire Wire Line
	3400 3750 3400 3650
Connection ~ 3500 5000
Wire Wire Line
	3550 5000 3600 5000
Wire Wire Line
	3600 5000 3600 3850
Wire Wire Line
	3600 3850 4050 3850
Wire Wire Line
	4050 3850 4050 3650
Connection ~ 3550 5000
Wire Wire Line
	3450 5000 3450 5900
Wire Wire Line
	3450 5900 3200 5900
Wire Wire Line
	3500 5000 3500 5900
Wire Wire Line
	3500 5900 3450 5900
Connection ~ 3450 5900
Wire Wire Line
	3550 5000 3550 5900
Wire Wire Line
	3550 5900 3500 5900
Connection ~ 3500 5900
Wire Wire Line
	3600 5000 3600 5900
Wire Wire Line
	3600 5900 3550 5900
Connection ~ 3600 5000
Connection ~ 3550 5900
Wire Wire Line
	1800 4800 1300 4800
Wire Wire Line
	1800 4900 1300 4900
Wire Wire Line
	1800 6000 1300 6000
NoConn ~ 1800 4500
NoConn ~ 1800 5100
NoConn ~ 1800 5200
NoConn ~ 1800 5300
NoConn ~ 1800 5400
NoConn ~ 1800 5700
NoConn ~ 1800 5800
NoConn ~ 1800 5900
NoConn ~ 1800 6100
NoConn ~ 1800 6400
NoConn ~ 1800 6500
NoConn ~ 1800 6600
NoConn ~ 1800 6700
NoConn ~ 1800 6800
NoConn ~ 1800 7000
NoConn ~ 3200 5700
NoConn ~ 3200 5600
NoConn ~ 3200 4800
NoConn ~ 3200 4700
NoConn ~ 3200 4600
NoConn ~ 3200 4500
NoConn ~ 6100 6150
NoConn ~ 6100 6050
NoConn ~ 6100 5100
NoConn ~ 6100 5000
NoConn ~ 5200 4800
NoConn ~ 5200 5850
Text Notes 3800 5150 1    20   ~ 0
Represents even distribution of primary BMS\nthermistors. BMS should be able to retrieve a rough\nsample in the event of an expansion pack disconnect. \nEach thermistor has individual power and ground,\nreduced in this representation
Wire Wire Line
	3200 6400 3850 6400
Wire Wire Line
	3850 6400 3850 4200
Wire Wire Line
	3850 4200 1850 4200
Wire Wire Line
	1850 4200 1850 3400
Connection ~ 1850 3400
Wire Wire Line
	1850 3400 1900 3400
Wire Wire Line
	3200 6500 3900 6500
Wire Wire Line
	3900 6500 3900 4150
Wire Wire Line
	2000 4150 2000 3600
Wire Wire Line
	3200 6600 3950 6600
Wire Wire Line
	3950 6600 3950 4100
Wire Wire Line
	3950 4100 2200 4100
Wire Wire Line
	2200 4100 2200 4050
Wire Wire Line
	3200 6700 4000 6700
Wire Wire Line
	4000 6700 4000 4050
Wire Wire Line
	4000 4050 2400 4050
Wire Wire Line
	2300 4050 2300 3600
Wire Wire Line
	3200 6900 4050 6900
Wire Wire Line
	4050 6900 4050 4000
Wire Wire Line
	4050 4000 3850 4000
Wire Wire Line
	2500 4000 2500 3400
Connection ~ 2500 3400
Wire Wire Line
	2500 3400 2400 3400
Wire Wire Line
	3200 7000 4100 7000
Wire Wire Line
	4100 7000 4100 3950
Wire Wire Line
	4100 3950 3650 3950
Wire Wire Line
	2650 3950 2650 3600
Wire Wire Line
	3200 4000 3200 3400
Connection ~ 3200 4000
Wire Wire Line
	3200 4000 2500 4000
Connection ~ 3200 3400
Wire Wire Line
	2400 4050 2400 3400
Wire Wire Line
	3000 3950 3000 3400
Connection ~ 3000 3950
Connection ~ 3000 3400
Wire Wire Line
	3000 3400 2950 3400
Wire Wire Line
	3650 3950 3650 3400
Connection ~ 3650 3950
Wire Wire Line
	3650 3950 3000 3950
Connection ~ 3650 3400
Wire Wire Line
	3650 3400 3600 3400
Wire Wire Line
	3850 4000 3850 3400
Connection ~ 3850 4000
Wire Wire Line
	3850 4000 3200 4000
Connection ~ 3850 3400
Wire Wire Line
	4100 3950 4100 3750
Wire Wire Line
	4100 3750 4250 3750
Wire Wire Line
	4250 3750 4250 3400
Connection ~ 4100 3950
Connection ~ 4250 3400
Text Label 2100 3650 1    50   ~ 0
Therm
Text Label 2750 3650 1    50   ~ 0
Therm
Text Label 3400 3650 1    50   ~ 0
Therm
Text Label 4050 3650 1    50   ~ 0
Therm
Text Label 2200 3600 1    50   ~ 0
Tap+
Text Label 2300 3600 1    50   ~ 0
Tap+
Text Label 2000 3600 1    50   ~ 0
Tap+
Text Label 2650 3600 1    50   ~ 0
Tap+
Wire Wire Line
	2750 3850 2750 3650
Wire Wire Line
	2650 3950 3000 3950
Connection ~ 2200 4050
Wire Wire Line
	2200 4050 2200 3600
Connection ~ 2300 4050
Wire Wire Line
	2200 4050 2300 4050
Wire Wire Line
	2000 4150 3900 4150
Text Label 3650 3650 1    50   ~ 0
Tap+
Text Label 4250 3650 1    50   ~ 0
Tap+
Text Label 2400 3600 1    50   ~ 0
Tap+
Connection ~ 2400 3400
Connection ~ 2400 4050
Wire Wire Line
	2300 4050 2400 4050
Wire Wire Line
	2300 3400 2400 3400
Text Label 3850 3650 1    50   ~ 0
Tap-
Text Label 3200 3650 1    50   ~ 0
Tap-
Text Label 3000 3650 1    50   ~ 0
Tap+
Text Label 2500 3650 1    50   ~ 0
Tap-
Text Label 1850 3650 1    50   ~ 0
Tap-
Text Notes 4250 5150 1    20   ~ 0
Represents tap conections to every set of parralel cells \n(one tap per cell). One negative tap for every 12 sets of cells.\nEvery connection should be fused (300V, 5A).
Wire Wire Line
	4250 1500 5750 1500
Wire Wire Line
	4250 1350 5900 1350
Text Label 6300 3400 0    50   ~ 0
Load+
Text Label 6300 3800 0    50   ~ 0
Load-
Text Label 1300 6000 2    50   ~ 0
Telemetry?
Text Label 1300 4900 2    50   ~ 0
Telemetry?
Text Label 1300 4800 2    50   ~ 0
Telemetry?
Wire Wire Line
	5350 3400 5900 3400
Wire Wire Line
	2350 2300 2350 2600
Wire Wire Line
	1750 3800 5750 3800
Wire Wire Line
	5900 1350 5900 3400
Connection ~ 5900 3400
Wire Wire Line
	5900 3400 6300 3400
Wire Wire Line
	5750 1500 5750 3800
Connection ~ 5750 3800
Wire Wire Line
	5750 3800 6300 3800
Wire Wire Line
	1500 2600 1500 5000
Wire Notes Line
	700  1000 700  2650
Wire Notes Line
	700  2650 6200 2650
Wire Notes Line
	6200 2650 6200 1000
Wire Notes Line
	6200 1000 700  1000
Text Notes 3550 950  2    59   ~ 0
Charging Cart
Wire Wire Line
	3850 7250 3850 7350
Wire Wire Line
	850  2300 1650 2300
Wire Wire Line
	850  2300 850  5600
Wire Wire Line
	850  7150 4100 7150
Wire Wire Line
	850  5600 1800 5600
Connection ~ 850  5600
Wire Wire Line
	850  5600 850  7150
Wire Wire Line
	3850 7250 3250 7250
Wire Wire Line
	3250 7250 3250 7450
Connection ~ 3850 7250
$Comp
L Switch:SW_SPST SW1
U 1 1 5DEBF47B
P 2550 7450
F 0 "SW1" H 2550 7225 50  0000 C CNN
F 1 "ChargeSwitch" H 2550 7316 50  0000 C CNN
F 2 "" H 2550 7450 50  0001 C CNN
F 3 "~" H 2550 7450 50  0001 C CNN
	1    2550 7450
	-1   0    0    1   
$EndComp
$Comp
L Switch:SW_SPST SW2
U 1 1 5DEC193C
P 1950 7550
F 0 "SW2" H 1950 7325 50  0000 C CNN
F 1 "RTDSwitch (latch)" H 1950 7416 50  0000 C CNN
F 2 "" H 1950 7550 50  0001 C CNN
F 3 "~" H 1950 7550 50  0001 C CNN
	1    1950 7550
	-1   0    0    1   
$EndComp
Wire Wire Line
	2750 7450 3250 7450
Connection ~ 3250 7450
Wire Wire Line
	3250 7450 3250 7550
Wire Wire Line
	2150 7550 3250 7550
Wire Wire Line
	1750 7550 1550 7550
Wire Wire Line
	1550 7550 1550 4600
Wire Wire Line
	1550 4600 1800 4600
Wire Wire Line
	1800 4700 1600 4700
Wire Wire Line
	1600 4700 1600 7450
Wire Wire Line
	1600 7450 2350 7450
$Comp
L NER:TSM2500 U?
U 1 1 5F581E55
P 3100 1200
F 0 "U?" H 3100 1200 50  0001 C CNN
F 1 "TSM2500" H 3125 1223 50  0000 C CNN
F 2 "" H 3100 1200 50  0001 C CNN
F 3 "" H 3100 1200 50  0001 C CNN
	1    3100 1200
	1    0    0    -1  
$EndComp
$EndSCHEMATC
