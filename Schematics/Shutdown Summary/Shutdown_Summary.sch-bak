EESchema Schematic File Version 4
LIBS:Shutdown_Summary-cache
EELAYER 30 0
EELAYER END
$Descr B 17000 11000
encoding utf-8
Sheet 1 2
Title "Shutdown Circuit Summary"
Date "2021-10-17"
Rev "2"
Comp "Northeastern Electric Racing"
Comment1 "https://github.com/Northeastern-Electric-Racing/NER"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text GLabel 2800 8900 3    50   UnSpc ~ 0
CHASSIS_GND
$Comp
L Connector:Conn_01x01_Female J1
U 1 1 76703874
P 4500 8150
AR Path="/76703874" Ref="J1"  Part="1" 
AR Path="/766EFABD/76703874" Ref="J1"  Part="1" 
F 0 "J1" V 4400 8000 50  0000 L CNN
F 1 "GND" V 4300 7950 50  0000 L CNN
F 2 "" H 4500 8150 50  0001 C CNN
F 3 "~" H 4500 8150 50  0001 C CNN
	1    4500 8150
	0    -1   1    0   
$EndComp
Text Notes 5300 8600 0    50   ~ 0
TSMP and Shutdown Reset Container
Text GLabel 4500 7350 1    50   UnSpc ~ 0
CHASSIS_GND
$Comp
L Switch:SW_DPST SW5
U 1 1 7670387C
P 5500 8100
AR Path="/7670387C" Ref="SW5"  Part="1" 
AR Path="/766EFABD/7670387C" Ref="SW5"  Part="1" 
F 0 "SW5" H 5500 7900 50  0000 C CNN
F 1 "Latching Circuit Reset" H 5500 7750 50  0000 C CNN
F 2 "" H 5500 8100 50  0001 C CNN
F 3 "~" H 5500 8100 50  0001 C CNN
	1    5500 8100
	1    0    0    -1  
$EndComp
Wire Wire Line
	5150 7800 5350 7800
Wire Wire Line
	5850 7800 5650 7800
Wire Wire Line
	5750 7900 5550 7900
Wire Wire Line
	5750 8000 5750 7900
Wire Wire Line
	5700 8000 5750 8000
Wire Wire Line
	5250 7900 5450 7900
Wire Wire Line
	5250 8000 5250 7900
Wire Wire Line
	5300 8000 5250 8000
Wire Notes Line
	6700 8500 6700 7450
Wire Notes Line
	4250 7450 4250 8500
Wire Wire Line
	4500 7350 4500 7950
Text Label 2850 6000 0    50   ~ 0
CoolingPumpPower
Wire Notes Line
	6700 7450 4250 7450
Wire Notes Line
	4250 8500 6700 8500
$Comp
L Device:Battery_Cell BT1
U 1 1 76703891
P 2800 8500
AR Path="/76703891" Ref="BT1"  Part="1" 
AR Path="/766EFABD/76703891" Ref="BT1"  Part="1" 
F 0 "BT1" V 2455 8550 50  0000 C CNN
F 1 "GLV Battery" V 2546 8550 50  0000 C CNN
F 2 "" V 2800 8560 50  0001 C CNN
F 3 "~" V 2800 8560 50  0001 C CNN
F 4 "12V" V 2637 8550 50  0000 C CNN "Voltage"
	1    2800 8500
	1    0    0    -1  
$EndComp
$Comp
L Device:CircuitBreaker_1P CB1
U 1 1 76703898
P 2800 7550
AR Path="/76703898" Ref="CB1"  Part="1" 
AR Path="/766EFABD/76703898" Ref="CB1"  Part="1" 
F 0 "CB1" V 2444 7550 50  0000 C CNN
F 1 "GLV Main Breaker" V 2535 7550 50  0000 C CNN
F 2 "" H 2800 7550 50  0001 C CNN
F 3 "~" H 2800 7550 50  0001 C CNN
F 4 "30A" V 2626 7550 50  0000 C CNN "Current"
	1    2800 7550
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_SPST SW3
U 1 1 7670389E
P 2800 6600
AR Path="/7670389E" Ref="SW3"  Part="1" 
AR Path="/766EFABD/7670389E" Ref="SW3"  Part="1" 
F 0 "SW3" H 2800 6835 50  0000 C CNN
F 1 "GLVMS" H 2800 6744 50  0000 C CNN
F 2 "" H 2800 6600 50  0001 C CNN
F 3 "~" H 2800 6600 50  0001 C CNN
	1    2800 6600
	0    -1   -1   0   
$EndComp
$Comp
L Switch:SW_Push_Open SW2
U 1 1 767038A4
P 2800 4500
AR Path="/767038A4" Ref="SW2"  Part="1" 
AR Path="/766EFABD/767038A4" Ref="SW2"  Part="1" 
F 0 "SW2" H 2800 4310 50  0000 C CNN
F 1 "Side BRB" H 2800 4401 50  0000 C CNN
F 2 "" H 2800 4700 50  0001 C CNN
F 3 "~" H 2800 4700 50  0001 C CNN
	1    2800 4500
	0    1    1    0   
$EndComp
$Comp
L Switch:SW_Push_Open SW1
U 1 1 767038AA
P 2800 3750
AR Path="/767038AA" Ref="SW1"  Part="1" 
AR Path="/766EFABD/767038AA" Ref="SW1"  Part="1" 
F 0 "SW1" H 2800 3965 50  0000 C CNN
F 1 "Side BRB" H 2800 3874 50  0000 C CNN
F 2 "" H 2800 3950 50  0001 C CNN
F 3 "~" H 2800 3950 50  0001 C CNN
	1    2800 3750
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2800 8900 2800 8600
Wire Wire Line
	2800 8300 2800 7850
Wire Wire Line
	2800 7250 2800 6800
Wire Wire Line
	2800 4300 2800 3950
Wire Wire Line
	8000 2850 8000 2700
Wire Wire Line
	8450 2850 8450 2700
Text GLabel 8000 2850 3    50   UnSpc ~ 0
CHASSIS_GND
Text GLabel 8450 2850 3    50   UnSpc ~ 0
CHASSIS_GND
$Comp
L Switch:SW_Push_Open SW6
U 1 1 767038B8
P 9150 2200
AR Path="/767038B8" Ref="SW6"  Part="1" 
AR Path="/766EFABD/767038B8" Ref="SW6"  Part="1" 
F 0 "SW6" H 9150 2415 50  0000 C CNN
F 1 "Cockpit BRB" H 9150 2324 50  0000 C CNN
F 2 "" H 9150 2400 50  0001 C CNN
F 3 "~" H 9150 2400 50  0001 C CNN
	1    9150 2200
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_SPST SW7
U 1 1 767038BE
P 9850 2200
AR Path="/767038BE" Ref="SW7"  Part="1" 
AR Path="/766EFABD/767038BE" Ref="SW7"  Part="1" 
F 0 "SW7" H 9850 2435 50  0000 C CNN
F 1 "TSMS" H 9850 2344 50  0000 C CNN
F 2 "" H 9850 2200 50  0001 C CNN
F 3 "~" H 9850 2200 50  0001 C CNN
	1    9850 2200
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D5
U 1 1 767038C4
P 8000 2550
AR Path="/767038C4" Ref="D5"  Part="1" 
AR Path="/766EFABD/767038C4" Ref="D5"  Part="1" 
F 0 "D5" V 8039 2433 50  0000 R CNN
F 1 "SSOK" V 7948 2433 50  0000 R CNN
F 2 "" H 8000 2550 50  0001 C CNN
F 3 "~" H 8000 2550 50  0001 C CNN
	1    8000 2550
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D6
U 1 1 767038CA
P 8450 2550
AR Path="/767038CA" Ref="D6"  Part="1" 
AR Path="/766EFABD/767038CA" Ref="D6"  Part="1" 
F 0 "D6" V 8489 2433 50  0000 R CNN
F 1 "SSOK" V 8398 2433 50  0000 R CNN
F 2 "" H 8450 2550 50  0001 C CNN
F 3 "~" H 8450 2550 50  0001 C CNN
	1    8450 2550
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8000 2400 8000 2200
Wire Wire Line
	8450 2400 8450 2200
Wire Wire Line
	5850 7800 5850 8200
Wire Wire Line
	5700 8200 5850 8200
Wire Wire Line
	5150 7800 5150 8200
Wire Wire Line
	5150 8200 5300 8200
$Sheet
S 7450 5550 950  550 
U 767038D9
F0 "IMD Container" 50
F1 "IMD_Container.sch" 50
F2 "HV_Sense+" B R 8400 5600 50 
F3 "HV_Sense-" B R 8400 5700 50 
F4 "GLV" I L 7450 6050 50 
F5 "GND2" U L 7450 5800 50 
F6 "GND1" U L 7450 5700 50 
F7 "GND" U L 7450 5600 50 
F8 "IMD_Fault" O L 7450 5950 50 
$EndSheet
Text GLabel 7200 5600 0    50   UnSpc ~ 0
CHASSIS_GND
Wire Wire Line
	7200 5600 7450 5600
Text GLabel 7200 5700 0    50   UnSpc ~ 0
CHASSIS_GND
Wire Wire Line
	7200 5700 7450 5700
Text GLabel 7200 5800 0    50   UnSpc ~ 0
CHASSIS_GND
Wire Wire Line
	7200 5800 7450 5800
Wire Wire Line
	7450 5950 6200 5950
Wire Wire Line
	4150 6050 7450 6050
Text GLabel 5750 5400 0    50   UnSpc ~ 0
CHASSIS_GND
Wire Wire Line
	3400 2300 4250 2300
$Comp
L Switch:SW_SPST SW4
U 1 1 767038E9
P 4450 2300
AR Path="/767038E9" Ref="SW4"  Part="1" 
AR Path="/766EFABD/767038E9" Ref="SW4"  Part="1" 
F 0 "SW4" H 4450 2535 50  0000 C CNN
F 1 "Brake Over-Travel Switch" H 4450 2444 50  0000 C CNN
F 2 "" H 4450 2300 50  0001 C CNN
F 3 "~" H 4450 2300 50  0001 C CNN
	1    4450 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2800 3550 2800 2950
$Comp
L NER:FuseBox_PSZACCEPS052H U1
U 1 1 767038F0
P 2800 2050
AR Path="/767038F0" Ref="U1"  Part="1" 
AR Path="/766EFABD/767038F0" Ref="U1"  Part="1" 
F 0 "U1" V 2754 2078 50  0000 L CNN
F 1 "FuseBox_PSZACCEPS052H" V 2845 2078 50  0000 L CNN
F 2 "" H 2800 2200 50  0001 C CNN
F 3 "" H 2800 2200 50  0001 C CNN
	1    2800 2050
	1    0    0    -1  
$EndComp
$Comp
L Relay:G5V-2 K?
U 1 1 767038F6
P 6900 4500
AR Path="/5F45AFB3/767038F6" Ref="K?"  Part="1" 
AR Path="/767038F6" Ref="K4"  Part="1" 
AR Path="/766EFABD/767038F6" Ref="K4"  Part="1" 
F 0 "K4" V 6133 4500 50  0000 C CNN
F 1 "Omron DPDT Relay" V 6224 4500 50  0000 C CNN
F 2 "Relay_THT:Relay_DPDT_Omron_G5V-2" H 7550 4450 50  0001 L CNN
F 3 "http://omronfs.omron.com/en_US/ecb/products/pdf/en-g5v_2.pdf" H 6900 4500 50  0001 C CNN
	1    6900 4500
	0    1    1    0   
$EndComp
$Comp
L Relay:G5V-2 K?
U 1 1 767038FC
P 6900 2300
AR Path="/5F45AFB3/767038FC" Ref="K?"  Part="1" 
AR Path="/767038FC" Ref="K3"  Part="1" 
AR Path="/766EFABD/767038FC" Ref="K3"  Part="1" 
F 0 "K3" V 6133 2300 50  0000 C CNN
F 1 "Omron DPDT Relay" V 6224 2300 50  0000 C CNN
F 2 "Relay_THT:Relay_DPDT_Omron_G5V-2" H 7550 2250 50  0001 L CNN
F 3 "http://omronfs.omron.com/en_US/ecb/products/pdf/en-g5v_2.pdf" H 6900 2300 50  0001 C CNN
	1    6900 2300
	0    1    -1   0   
$EndComp
$Comp
L Diode:1N4001 D?
U 1 1 76703902
P 6850 3450
AR Path="/5F45AFB3/76703902" Ref="D?"  Part="1" 
AR Path="/76703902" Ref="D3"  Part="1" 
AR Path="/766EFABD/76703902" Ref="D3"  Part="1" 
F 0 "D3" H 6850 3666 50  0000 C CNN
F 1 "1N4001" H 6850 3575 50  0000 C CNN
F 2 "Diode_THT:D_DO-41_SOD81_P10.16mm_Horizontal" H 6850 3275 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88503/1n4001.pdf" H 6850 3450 50  0001 C CNN
	1    6850 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	7000 3450 7400 3450
Wire Wire Line
	7200 2700 7400 2700
Wire Wire Line
	7200 4100 7400 4100
Connection ~ 7400 4100
$Comp
L Relay:G5V-2 K?
U 1 1 7670390C
P 5400 4500
AR Path="/5F45AFB3/7670390C" Ref="K?"  Part="1" 
AR Path="/7670390C" Ref="K2"  Part="1" 
AR Path="/766EFABD/7670390C" Ref="K2"  Part="1" 
F 0 "K2" V 4633 4500 50  0000 C CNN
F 1 "Omron DPDT Relay" V 4724 4500 50  0000 C CNN
F 2 "Relay_THT:Relay_DPDT_Omron_G5V-2" H 6050 4450 50  0001 L CNN
F 3 "http://omronfs.omron.com/en_US/ecb/products/pdf/en-g5v_2.pdf" H 5400 4500 50  0001 C CNN
	1    5400 4500
	0    1    1    0   
$EndComp
$Comp
L Diode:1N4001 D?
U 1 1 76703912
P 5350 3450
AR Path="/5F45AFB3/76703912" Ref="D?"  Part="1" 
AR Path="/76703912" Ref="D1"  Part="1" 
AR Path="/766EFABD/76703912" Ref="D1"  Part="1" 
F 0 "D1" H 5350 3666 50  0000 C CNN
F 1 "1N4001" H 5350 3575 50  0000 C CNN
F 2 "Diode_THT:D_DO-41_SOD81_P10.16mm_Horizontal" H 5350 3275 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88503/1n4001.pdf" H 5350 3450 50  0001 C CNN
	1    5350 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	5500 3450 5900 3450
Wire Wire Line
	5700 4100 5900 4100
Connection ~ 5900 4100
Wire Wire Line
	5900 5400 7400 5400
Wire Wire Line
	7400 4100 7400 5400
Wire Wire Line
	5900 4100 5900 5400
Connection ~ 4850 4100
Wire Wire Line
	4850 4100 5100 4100
Wire Wire Line
	4850 3450 5200 3450
Connection ~ 6400 4100
Wire Wire Line
	6400 4100 6600 4100
Wire Wire Line
	6400 3450 6700 3450
Wire Wire Line
	6400 2700 6600 2700
NoConn ~ 7200 2400
NoConn ~ 7200 1800
NoConn ~ 7200 4400
NoConn ~ 7200 4800
NoConn ~ 7200 5000
NoConn ~ 6600 4900
NoConn ~ 5700 4800
NoConn ~ 5700 5000
NoConn ~ 5100 4900
NoConn ~ 5700 4400
Wire Wire Line
	6500 2200 6500 2300
Wire Wire Line
	6500 2300 6600 2300
Wire Wire Line
	7300 4600 7300 5250
Wire Wire Line
	7300 5250 6400 5250
Wire Wire Line
	6400 5250 6400 4100
Wire Wire Line
	7200 4600 7300 4600
Wire Wire Line
	5800 4600 5800 5250
Wire Wire Line
	5700 4600 5800 4600
Wire Wire Line
	4850 5250 5800 5250
Wire Wire Line
	4850 4100 4850 5250
Connection ~ 4850 3450
Wire Wire Line
	4850 3450 4850 4100
Connection ~ 5900 3450
Wire Wire Line
	5900 3450 5900 4100
Wire Wire Line
	4850 2700 4850 3450
Connection ~ 6400 3450
Wire Wire Line
	6400 3450 6400 4100
Connection ~ 7400 3450
Wire Wire Line
	7400 3450 7400 4100
Wire Wire Line
	7400 2700 7400 3450
Wire Wire Line
	6400 2700 6400 3450
$Comp
L Connector:Conn_01x01_Female J3
U 1 1 76703944
P 6400 8150
AR Path="/76703944" Ref="J3"  Part="1" 
AR Path="/766EFABD/76703944" Ref="J3"  Part="1" 
F 0 "J3" V 6300 8000 50  0000 L CNN
F 1 "TS-" V 6200 7950 50  0000 L CNN
F 2 "" H 6400 8150 50  0001 C CNN
F 3 "~" H 6400 8150 50  0001 C CNN
	1    6400 8150
	0    -1   1    0   
$EndComp
$Comp
L Relay:MSxx-1Bxx-75 K?
U 1 1 7670394A
P 12200 5400
AR Path="/5F45B05E/7670394A" Ref="K?"  Part="1" 
AR Path="/7670394A" Ref="K7"  Part="1" 
AR Path="/766EFABD/7670394A" Ref="K7"  Part="1" 
F 0 "K7" V 11633 5400 50  0000 C CNN
F 1 "SPST-NC (Discharge)" V 11724 5400 50  0000 C CNN
F 2 "Relay_THT:Relay_SPST_StandexMeder_MS_Form1AB" H 12550 5350 50  0001 L CNN
F 3 "https://standexelectronics.com/de/produkte/ms-reed-relais/" H 12200 5400 50  0001 C CNN
	1    12200 5400
	0    -1   1    0   
$EndComp
$Comp
L Relay:DIPxx-1Axx-11x K?
U 1 1 76703950
P 13250 3850
AR Path="/5F45B05E/76703950" Ref="K?"  Part="1" 
AR Path="/76703950" Ref="K9"  Part="1" 
AR Path="/766EFABD/76703950" Ref="K9"  Part="1" 
F 0 "K9" V 12683 3850 50  0000 C CNN
F 1 "SPST-NO (AIR)" V 12774 3850 50  0000 C CNN
F 2 "Relay_THT:Relay_StandexMeder_DIP_LowProfile" H 13600 3800 50  0001 L CNN
F 3 "https://standexelectronics.com/wp-content/uploads/datasheet_reed_relay_DIP.pdf" H 13250 3850 50  0001 C CNN
	1    13250 3850
	0    -1   1    0   
$EndComp
$Comp
L Relay:DIPxx-1Axx-11x K?
U 1 1 76703956
P 13250 2400
AR Path="/5F45B05E/76703956" Ref="K?"  Part="1" 
AR Path="/76703956" Ref="K8"  Part="1" 
AR Path="/766EFABD/76703956" Ref="K8"  Part="1" 
F 0 "K8" V 12683 2400 50  0000 C CNN
F 1 "SPST-NO (Precharge)" V 12774 2400 50  0000 C CNN
F 2 "Relay_THT:Relay_StandexMeder_DIP_LowProfile" H 13600 2350 50  0001 L CNN
F 3 "https://standexelectronics.com/wp-content/uploads/datasheet_reed_relay_DIP.pdf" H 13250 2400 50  0001 C CNN
	1    13250 2400
	0    -1   1    0   
$EndComp
Wire Wire Line
	13550 2200 13900 2200
Wire Wire Line
	12500 5200 13900 5200
$Comp
L Device:R R?
U 1 1 7670395F
P 11850 2600
AR Path="/5F45B05E/7670395F" Ref="R?"  Part="1" 
AR Path="/7670395F" Ref="R4"  Part="1" 
AR Path="/766EFABD/7670395F" Ref="R4"  Part="1" 
F 0 "R4" V 11650 2550 50  0000 L CNN
F 1 "600" V 11750 2500 50  0000 L CNN
F 2 "" V 11780 2600 50  0001 C CNN
F 3 "~" H 11850 2600 50  0001 C CNN
	1    11850 2600
	0    -1   1    0   
$EndComp
Text Label 12300 4050 2    50   ~ 0
10_2
Text Label 11300 2200 2    50   ~ 0
26_20
Text Label 11100 5600 2    50   ~ 0
13_2
Text Label 13950 2600 0    50   ~ 0
27_20
Text Label 11150 2600 2    50   ~ 0
28_20
Wire Wire Line
	11900 5200 11300 5200
$Comp
L Relay:DIPxx-1Axx-11x K?
U 1 1 7670396B
P 11850 3450
AR Path="/5F45B05E/7670396B" Ref="K?"  Part="1" 
AR Path="/7670396B" Ref="K6"  Part="1" 
AR Path="/766EFABD/7670396B" Ref="K6"  Part="1" 
F 0 "K6" V 11283 3450 50  0000 C CNN
F 1 "SPST-NO (AIR Control)" V 11374 3450 50  0000 C CNN
F 2 "Relay_THT:Relay_StandexMeder_DIP_LowProfile" H 12200 3400 50  0001 L CNN
F 3 "https://standexelectronics.com/wp-content/uploads/datasheet_reed_relay_DIP.pdf" H 11850 3450 50  0001 C CNN
	1    11850 3450
	0    -1   1    0   
$EndComp
Wire Wire Line
	14300 2600 13550 2600
Wire Wire Line
	13100 7400 11300 7400
Text Label 12800 5600 2    50   ~ 0
12_2
Wire Wire Line
	13700 7400 13900 7400
$Comp
L Relay:DIPxx-1Axx-11x K?
U 1 1 76703975
P 13400 7600
AR Path="/5F45B05E/76703975" Ref="K?"  Part="1" 
AR Path="/76703975" Ref="K10"  Part="1" 
AR Path="/766EFABD/76703975" Ref="K10"  Part="1" 
F 0 "K10" V 12833 7600 50  0000 C CNN
F 1 "SPST-NO (AIR)" V 12924 7600 50  0000 C CNN
F 2 "Relay_THT:Relay_StandexMeder_DIP_LowProfile" H 13750 7550 50  0001 L CNN
F 3 "https://standexelectronics.com/wp-content/uploads/datasheet_reed_relay_DIP.pdf" H 13400 7600 50  0001 C CNN
	1    13400 7600
	0    -1   1    0   
$EndComp
$Comp
L Device:Battery BT2
U 1 1 76703985
P 14700 2900
AR Path="/76703985" Ref="BT2"  Part="1" 
AR Path="/766EFABD/76703985" Ref="BT2"  Part="1" 
F 0 "BT2" H 14808 2946 50  0000 L CNN
F 1 "Segment 4" H 14808 2855 50  0000 L CNN
F 2 "" V 14700 2960 50  0001 C CNN
F 3 "~" V 14700 2960 50  0001 C CNN
	1    14700 2900
	1    0    0    -1  
$EndComp
$Comp
L Device:Battery BT3
U 1 1 7670398B
P 14700 4250
AR Path="/7670398B" Ref="BT3"  Part="1" 
AR Path="/766EFABD/7670398B" Ref="BT3"  Part="1" 
F 0 "BT3" H 14808 4296 50  0000 L CNN
F 1 "Segment 3" H 14808 4205 50  0000 L CNN
F 2 "" V 14700 4310 50  0001 C CNN
F 3 "~" V 14700 4310 50  0001 C CNN
	1    14700 4250
	1    0    0    -1  
$EndComp
$Comp
L Device:Battery BT4
U 1 1 76703991
P 14700 5750
AR Path="/76703991" Ref="BT4"  Part="1" 
AR Path="/766EFABD/76703991" Ref="BT4"  Part="1" 
F 0 "BT4" H 14808 5796 50  0000 L CNN
F 1 "Segment 2" H 14808 5705 50  0000 L CNN
F 2 "" V 14700 5810 50  0001 C CNN
F 3 "~" V 14700 5810 50  0001 C CNN
	1    14700 5750
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_SPST SW8
U 1 1 76703997
P 14700 3550
AR Path="/76703997" Ref="SW8"  Part="1" 
AR Path="/766EFABD/76703997" Ref="SW8"  Part="1" 
F 0 "SW8" V 14746 3462 50  0000 R CNN
F 1 "SMD/HVD 3" V 14655 3462 50  0000 R CNN
F 2 "" H 14700 3550 50  0001 C CNN
F 3 "~" H 14700 3550 50  0001 C CNN
	1    14700 3550
	0    -1   -1   0   
$EndComp
$Comp
L Switch:SW_SPST SW9
U 1 1 7670399D
P 14700 4950
AR Path="/7670399D" Ref="SW9"  Part="1" 
AR Path="/766EFABD/7670399D" Ref="SW9"  Part="1" 
F 0 "SW9" V 14746 4862 50  0000 R CNN
F 1 "SMD/HVD 2" V 14655 4862 50  0000 R CNN
F 2 "" H 14700 4950 50  0001 C CNN
F 3 "~" H 14700 4950 50  0001 C CNN
	1    14700 4950
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9350 2200 9650 2200
Wire Wire Line
	7950 2000 7800 2000
Wire Wire Line
	6100 2000 6000 2000
Text GLabel 7950 2000 2    50   UnSpc ~ 0
CHASSIS_GND
Text GLabel 6100 2000 2    50   UnSpc ~ 0
CHASSIS_GND
$Comp
L Device:LED D4
U 1 1 767039A8
P 7650 2000
AR Path="/767039A8" Ref="D4"  Part="1" 
AR Path="/766EFABD/767039A8" Ref="D4"  Part="1" 
F 0 "D4" H 7650 1700 50  0000 R CNN
F 1 "IMD Fault Indicator" H 8000 1800 50  0000 R CNN
F 2 "" H 7650 2000 50  0001 C CNN
F 3 "~" H 7650 2000 50  0001 C CNN
	1    7650 2000
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D2
U 1 1 767039AE
P 5850 2000
AR Path="/767039AE" Ref="D2"  Part="1" 
AR Path="/766EFABD/767039AE" Ref="D2"  Part="1" 
F 0 "D2" H 5700 1700 50  0000 R CNN
F 1 "BMS Fault Indcator" H 5950 1800 50  0000 R CNN
F 2 "" H 5850 2000 50  0001 C CNN
F 3 "~" H 5850 2000 50  0001 C CNN
	1    5850 2000
	-1   0    0    1   
$EndComp
Wire Wire Line
	7200 2000 7500 2000
Wire Wire Line
	4150 2450 3400 2450
Text Label 10400 3050 2    50   ~ 0
MotorController_PrechargeControl
Text Label 10400 3250 2    50   ~ 0
MotorController_AIRControl
$Comp
L Device:R R?
U 1 1 767039B9
P 8100 7250
AR Path="/5F45B05E/767039B9" Ref="R?"  Part="1" 
AR Path="/767039B9" Ref="R2"  Part="1" 
AR Path="/766EFABD/767039B9" Ref="R2"  Part="1" 
F 0 "R2" H 8170 7296 50  0000 L CNN
F 1 "10k" H 8170 7205 50  0000 L CNN
F 2 "" V 8030 7250 50  0001 C CNN
F 3 "~" H 8100 7250 50  0001 C CNN
	1    8100 7250
	0    -1   1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 767039BF
P 8100 7150
AR Path="/5F45B05E/767039BF" Ref="R?"  Part="1" 
AR Path="/767039BF" Ref="R1"  Part="1" 
AR Path="/766EFABD/767039BF" Ref="R1"  Part="1" 
F 0 "R1" H 8170 7196 50  0000 L CNN
F 1 "10k" H 8170 7105 50  0000 L CNN
F 2 "" V 8030 7150 50  0001 C CNN
F 3 "~" H 8100 7150 50  0001 C CNN
	1    8100 7150
	0    -1   -1   0   
$EndComp
$Comp
L Device:Fuse F?
U 1 1 767039C5
P 9100 5600
AR Path="/5F45B05E/767039C5" Ref="F?"  Part="1" 
AR Path="/767039C5" Ref="F1"  Part="1" 
AR Path="/766EFABD/767039C5" Ref="F1"  Part="1" 
F 0 "F1" H 9041 5554 50  0000 R CNN
F 1 "Fuse" H 9041 5645 50  0000 R CNN
F 2 "" V 9030 5600 50  0001 C CNN
F 3 "~" H 9100 5600 50  0001 C CNN
	1    9100 5600
	0    -1   1    0   
$EndComp
$Comp
L Device:Fuse F?
U 1 1 767039CB
P 9100 5700
AR Path="/5F45B05E/767039CB" Ref="F?"  Part="1" 
AR Path="/767039CB" Ref="F2"  Part="1" 
AR Path="/766EFABD/767039CB" Ref="F2"  Part="1" 
F 0 "F2" H 9041 5654 50  0000 R CNN
F 1 "Fuse" H 9041 5745 50  0000 R CNN
F 2 "" V 9030 5700 50  0001 C CNN
F 3 "~" H 9100 5700 50  0001 C CNN
	1    9100 5700
	0    1    -1   0   
$EndComp
$Comp
L NER:2-Pos_Generic J?
U 1 1 767039D1
P 8850 4250
AR Path="/5F45B05E/767039D1" Ref="J?"  Part="1" 
AR Path="/767039D1" Ref="J4"  Part="1" 
AR Path="/766EFABD/767039D1" Ref="J4"  Part="1" 
F 0 "J4" H 8850 4375 50  0000 C CNN
F 1 "Main TS Connector" H 8850 4284 50  0000 C CNN
F 2 "" H 8850 4250 50  0001 C CNN
F 3 "" H 8850 4250 50  0001 C CNN
	1    8850 4250
	1    0    0    1   
$EndComp
Wire Wire Line
	8450 4050 8600 4050
Wire Wire Line
	8450 4150 8600 4150
$Comp
L Switch:SW_SPST SW10
U 1 1 767039D9
P 14700 6500
AR Path="/767039D9" Ref="SW10"  Part="1" 
AR Path="/766EFABD/767039D9" Ref="SW10"  Part="1" 
F 0 "SW10" V 14746 6412 50  0000 R CNN
F 1 "SMD/HVD 1" V 14655 6412 50  0000 R CNN
F 2 "" H 14700 6500 50  0001 C CNN
F 3 "~" H 14700 6500 50  0001 C CNN
	1    14700 6500
	0    -1   -1   0   
$EndComp
$Comp
L Device:Battery BT5
U 1 1 767039DF
P 14700 7350
AR Path="/767039DF" Ref="BT5"  Part="1" 
AR Path="/766EFABD/767039DF" Ref="BT5"  Part="1" 
F 0 "BT5" H 14808 7396 50  0000 L CNN
F 1 "Segement 1 " H 14808 7305 50  0000 L CNN
F 2 "" V 14700 7410 50  0001 C CNN
F 3 "~" V 14700 7410 50  0001 C CNN
	1    14700 7350
	1    0    0    -1  
$EndComp
Wire Wire Line
	14700 7800 14700 7550
Text Label 8300 5050 2    50   ~ 0
TSAL_Isolation+
Text Label 8300 5150 2    50   ~ 0
TSAL_Isolation-
Text Label 8450 4050 2    50   ~ 0
MotorController_TS+
Text Label 8450 4150 2    50   ~ 0
MotorController_TS-
$Comp
L Relay:DIPxx-1Axx-11x K?
U 1 1 76703A0B
P 11850 2000
AR Path="/5F45B05E/76703A0B" Ref="K?"  Part="1" 
AR Path="/76703A0B" Ref="K5"  Part="1" 
AR Path="/766EFABD/76703A0B" Ref="K5"  Part="1" 
F 0 "K5" V 11283 2000 50  0000 C CNN
F 1 "SPST-NO (Precharge Control)" V 11374 2000 50  0000 C CNN
F 2 "Relay_THT:Relay_StandexMeder_DIP_LowProfile" H 12200 1950 50  0001 L CNN
F 3 "https://standexelectronics.com/wp-content/uploads/datasheet_reed_relay_DIP.pdf" H 11850 2000 50  0001 C CNN
	1    11850 2000
	0    -1   1    0   
$EndComp
Wire Wire Line
	11300 3650 11550 3650
Wire Wire Line
	10400 3250 11550 3250
Wire Wire Line
	10600 1800 11550 1800
Wire Wire Line
	12150 3650 12950 3650
Wire Wire Line
	12150 3250 12450 3250
Wire Wire Line
	12450 1800 12150 1800
Wire Wire Line
	5900 2700 5900 3450
Wire Wire Line
	6500 1600 6500 1900
NoConn ~ 5650 1800
Wire Wire Line
	5650 2200 6500 2200
NoConn ~ 5650 2400
Wire Wire Line
	4850 2700 5050 2700
Wire Wire Line
	5650 2700 5900 2700
$Comp
L Relay:G5V-2 K?
U 1 1 76703A21
P 5350 2300
AR Path="/5F45AFB3/76703A21" Ref="K?"  Part="1" 
AR Path="/76703A21" Ref="K1"  Part="1" 
AR Path="/766EFABD/76703A21" Ref="K1"  Part="1" 
F 0 "K1" V 4583 2300 50  0000 C CNN
F 1 "Omron DPDT Relay" V 4674 2300 50  0000 C CNN
F 2 "Relay_THT:Relay_DPDT_Omron_G5V-2" H 6000 2250 50  0001 L CNN
F 3 "http://omronfs.omron.com/en_US/ecb/products/pdf/en-g5v_2.pdf" H 5350 2300 50  0001 C CNN
	1    5350 2300
	0    1    -1   0   
$EndComp
Text Label 14200 4050 2    50   ~ 0
11_2
Text GLabel 13800 4850 0    50   UnSpc ~ 0
CHASSIS_GND
Wire Wire Line
	13900 4850 13800 4850
Text Label 4650 5950 0    50   ~ 0
BMS_MPEnable
Wire Wire Line
	4650 2300 5050 2300
Wire Wire Line
	3400 2150 3750 2150
Wire Wire Line
	3750 2150 3750 1900
Wire Wire Line
	3750 1600 3750 1900
Connection ~ 3750 1900
Wire Wire Line
	3750 1900 5050 1900
Wire Wire Line
	4150 2450 4150 6050
Wire Wire Line
	3750 1600 6500 1600
Wire Wire Line
	6500 1900 6600 1900
Wire Wire Line
	5650 2000 5700 2000
Wire Wire Line
	7200 2200 8000 2200
$Comp
L Connector:Conn_01x01_Female J2
U 1 1 76703A36
P 6300 8150
AR Path="/76703A36" Ref="J2"  Part="1" 
AR Path="/766EFABD/76703A36" Ref="J2"  Part="1" 
F 0 "J2" V 6200 8250 50  0000 L CNN
F 1 "TS+" V 6100 8200 50  0000 L CNN
F 2 "" H 6300 8150 50  0001 C CNN
F 3 "~" H 6300 8150 50  0001 C CNN
	1    6300 8150
	0    -1   1    0   
$EndComp
Wire Wire Line
	6300 7950 6300 7150
Wire Wire Line
	6300 7150 7950 7150
Wire Wire Line
	6400 7950 6400 7250
Wire Wire Line
	6400 7250 7950 7250
Wire Wire Line
	5350 5750 5350 7800
Connection ~ 8000 2200
Connection ~ 8450 2200
Wire Wire Line
	8000 2200 8450 2200
Wire Wire Line
	8450 2200 8950 2200
Wire Wire Line
	5350 5750 4600 5750
Wire Wire Line
	4600 4100 4850 4100
Wire Wire Line
	4600 4100 4600 5750
Wire Wire Line
	5450 5650 4700 5650
Wire Wire Line
	4700 5650 4700 4500
Wire Wire Line
	4700 4500 5100 4500
Wire Wire Line
	5450 5650 5450 5950
Wire Wire Line
	5550 5650 6100 5650
Wire Wire Line
	6100 5650 6100 4100
Wire Wire Line
	6100 4100 6400 4100
Wire Wire Line
	5550 5650 5550 7900
Wire Wire Line
	5650 5750 6200 5750
Wire Wire Line
	6200 5750 6200 4500
Wire Wire Line
	6200 4500 6600 4500
Wire Wire Line
	5650 5750 5650 7800
Wire Wire Line
	6200 5750 6200 5950
Connection ~ 6200 5750
Wire Wire Line
	5450 5950 4650 5950
Wire Wire Line
	10050 2200 10300 2200
Wire Wire Line
	10300 1900 10300 2200
Connection ~ 10300 2200
Wire Wire Line
	13550 4050 14300 4050
Wire Wire Line
	14300 4050 14300 2600
Wire Wire Line
	14700 2600 14700 2700
Wire Wire Line
	13550 3650 13900 3650
Connection ~ 13900 3650
Wire Wire Line
	12450 1800 12450 3250
Wire Wire Line
	12950 2200 12150 2200
$Comp
L Device:R R?
U 1 1 76703AF6
P 11600 5600
AR Path="/5F45B05E/76703AF6" Ref="R?"  Part="1" 
AR Path="/76703AF6" Ref="R3"  Part="1" 
AR Path="/766EFABD/76703AF6" Ref="R3"  Part="1" 
F 0 "R3" V 11500 5550 50  0000 L CNN
F 1 "3.3k" V 11400 5500 50  0000 L CNN
F 2 "" V 11530 5600 50  0001 C CNN
F 3 "~" H 11600 5600 50  0001 C CNN
	1    11600 5600
	0    1    -1   0   
$EndComp
Wire Wire Line
	11900 5600 11750 5600
Wire Wire Line
	11450 5600 10800 5600
Wire Wire Line
	5750 5400 5900 5400
Connection ~ 5900 5400
Wire Wire Line
	8400 5600 8750 5600
Wire Wire Line
	8400 5700 8650 5700
Wire Wire Line
	10600 1800 10600 3050
Wire Wire Line
	10600 3050 10400 3050
Wire Wire Line
	10800 2600 11700 2600
Wire Wire Line
	12000 2600 12950 2600
Wire Wire Line
	12450 3250 13900 3250
Connection ~ 12450 3250
Wire Wire Line
	13900 3250 13900 3650
Wire Wire Line
	9250 5600 9500 5600
Wire Wire Line
	8250 7150 9500 7150
Wire Wire Line
	8250 7250 9600 7250
Wire Wire Line
	8300 5150 8650 5150
Wire Wire Line
	8650 5150 8650 5700
Connection ~ 8650 5700
Wire Wire Line
	8650 5700 8950 5700
Wire Wire Line
	8300 5050 8750 5050
Wire Wire Line
	8750 5050 8750 5600
Connection ~ 8750 5600
Wire Wire Line
	8750 5600 8950 5600
Wire Wire Line
	13700 7800 14700 7800
Wire Wire Line
	14700 2600 14300 2600
Connection ~ 14300 2600
Connection ~ 5450 5950
Wire Wire Line
	5450 5950 5450 7900
Text Label 10300 1900 1    50   ~ 0
StartStopController
Text Label 2150 2150 2    50   ~ 0
LV_System
Text Label 2150 2300 2    50   ~ 0
LV_System
Text Label 2150 2450 2    50   ~ 0
LV_System
Text Label 2150 2600 2    50   ~ 0
LV_System
Text Label 2150 2750 2    50   ~ 0
LV_System
Text Label 3450 2600 0    50   ~ 0
LV_System
Text Label 3450 2750 0    50   ~ 0
LV_System
Wire Wire Line
	2200 2150 2150 2150
Wire Wire Line
	2200 2300 2150 2300
Wire Wire Line
	2200 2450 2150 2450
Wire Wire Line
	2200 2600 2150 2600
Wire Wire Line
	2200 2750 2150 2750
Wire Wire Line
	3400 2600 3450 2600
Wire Wire Line
	3450 2750 3400 2750
Wire Wire Line
	10800 4050 12850 4050
Connection ~ 10800 4050
Wire Wire Line
	10800 2600 10800 4050
Wire Wire Line
	9100 4050 9500 4050
Wire Wire Line
	9100 4150 9600 4150
Wire Wire Line
	9500 5600 9500 4050
Connection ~ 9500 4050
Wire Wire Line
	9500 4050 10800 4050
Wire Wire Line
	9600 5700 9600 4150
Wire Wire Line
	9250 5700 9600 5700
Connection ~ 9600 4150
Wire Wire Line
	9600 4150 10800 4150
Wire Wire Line
	9500 7150 9500 5600
Connection ~ 9500 5600
Wire Wire Line
	9600 5700 9600 7250
Connection ~ 9600 5700
Wire Wire Line
	2800 6000 2850 6000
Connection ~ 2800 6000
Wire Wire Line
	2800 6000 2800 6400
Wire Wire Line
	13900 5200 13900 7400
Wire Wire Line
	11300 5200 11300 7400
Wire Wire Line
	10800 5600 10800 7800
Connection ~ 11300 5200
Wire Wire Line
	13900 5200 13900 4850
Connection ~ 13900 5200
Connection ~ 13900 4850
Wire Wire Line
	14700 3350 14700 3100
Wire Wire Line
	11300 3650 11300 5200
Wire Wire Line
	13900 3650 13900 4850
Wire Wire Line
	10300 2200 11300 2200
Wire Wire Line
	11300 3650 11300 2200
Connection ~ 11300 3650
Connection ~ 11300 2200
Wire Wire Line
	11300 2200 11550 2200
Wire Wire Line
	13900 3250 13900 2200
Connection ~ 13900 3250
Wire Wire Line
	10800 4150 10800 5600
Connection ~ 10800 5600
Wire Wire Line
	12850 5600 12850 4050
Connection ~ 12850 4050
Wire Wire Line
	12850 4050 12950 4050
Wire Wire Line
	12500 5600 12850 5600
Wire Wire Line
	10800 7800 13100 7800
Wire Wire Line
	14700 4050 14700 3750
Wire Wire Line
	14700 4450 14700 4750
Wire Wire Line
	14700 5150 14700 5550
Wire Wire Line
	14700 5950 14700 6300
Wire Wire Line
	14700 6700 14700 7150
Wire Wire Line
	2800 5700 2800 6000
Wire Wire Line
	2800 5100 2800 4700
Wire Wire Line
	2600 5400 2450 5400
Text Label 2450 5400 2    50   ~ 0
CANDetection
$Comp
L Analog_Switch:ADG417BN SW11
U 1 1 61A76939
P 2800 5400
F 0 "SW11" V 2754 5530 50  0000 L CNN
F 1 "CAN Activity Switch" V 2845 5530 50  0000 L CNN
F 2 "Package_DIP:DIP-8_W7.62mm" H 2800 5300 50  0001 C CNN
F 3 "https://www.analog.com/media/en/technical-documentation/data-sheets/ADG417.pdf" H 2800 5400 50  0001 C CNN
	1    2800 5400
	0    1    1    0   
$EndComp
$EndSCHEMATC
