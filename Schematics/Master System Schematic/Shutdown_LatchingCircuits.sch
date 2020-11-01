EESchema Schematic File Version 4
LIBS:Master System Schematic-cache
EELAYER 30 0
EELAYER END
$Descr A 11000 8500
encoding utf-8
Sheet 2 21
Title "Shutdown Latching Circuits"
Date "2020-10-12"
Rev "2"
Comp "Northeastern Electric Racing"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Wire Wire Line
	6500 4850 6500 4650
Wire Wire Line
	6300 4850 6500 4850
Wire Wire Line
	6300 4650 6500 4650
Text HLabel 4850 2350 2    50   Input ~ 0
BMS_Fault_Indicator
Text HLabel 8300 2550 2    50   Input ~ 0
Shutdown_OUT
Text HLabel 8300 2350 2    50   Input ~ 0
IMD_Fault_Indicator
Text HLabel 3150 4650 0    50   Input ~ 0
BMS_Latch_Reset+
Text HLabel 3150 4450 0    50   Input ~ 0
BMS_Latch_Reset-
Text HLabel 3150 2250 0    50   Input ~ 0
GLV+_Fused
Text HLabel 3150 2650 0    50   Input ~ 0
Shutdown_IN
Text HLabel 6300 4850 0    50   Input ~ 0
IMD_Status
Text HLabel 6300 4650 0    50   Input ~ 0
IMD_Latch_Reset+
Text HLabel 6300 4450 0    50   Input ~ 0
IMD_Latch_Reset-
Text HLabel 3150 4850 0    50   Input ~ 0
BMS_Status
Text HLabel 3150 5750 0    50   Input ~ 0
Ground
$Comp
L Relay:G5V-2 K5
U 1 1 5F6E0AD1
P 7350 4850
F 0 "K5" V 6583 4850 50  0000 C CNN
F 1 "Omron DPDT Relay" V 6674 4850 50  0000 C CNN
F 2 "Relay_THT:Relay_DPDT_Omron_G5V-2" H 8000 4800 50  0001 L CNN
F 3 "http://omronfs.omron.com/en_US/ecb/products/pdf/en-g5v_2.pdf" H 7350 4850 50  0001 C CNN
	1    7350 4850
	0    1    1    0   
$EndComp
$Comp
L Relay:G5V-2 K4
U 1 1 5F6E0AD7
P 7350 2650
F 0 "K4" V 6583 2650 50  0000 C CNN
F 1 "Omron DPDT Relay" V 6674 2650 50  0000 C CNN
F 2 "Relay_THT:Relay_DPDT_Omron_G5V-2" H 8000 2600 50  0001 L CNN
F 3 "http://omronfs.omron.com/en_US/ecb/products/pdf/en-g5v_2.pdf" H 7350 2650 50  0001 C CNN
	1    7350 2650
	0    1    -1   0   
$EndComp
$Comp
L Diode:1N4001 D8
U 1 1 5F6E5F37
P 7350 3800
F 0 "D8" H 7350 4016 50  0000 C CNN
F 1 "1N4001" H 7350 3925 50  0000 C CNN
F 2 "Diode_THT:D_DO-41_SOD81_P10.16mm_Horizontal" H 7350 3625 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88503/1n4001.pdf" H 7350 3800 50  0001 C CNN
	1    7350 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	6500 4850 7050 4850
Connection ~ 6500 4850
Wire Wire Line
	7500 3800 7950 3800
Wire Wire Line
	7650 3050 7950 3050
Wire Wire Line
	7650 4450 7950 4450
Connection ~ 7950 4450
Wire Wire Line
	6300 4450 6750 4450
Wire Wire Line
	3350 4850 3350 4650
Wire Wire Line
	3150 4850 3350 4850
Wire Wire Line
	3150 4650 3350 4650
$Comp
L Relay:G5V-2 K3
U 1 1 5F7C981B
P 4200 4850
F 0 "K3" V 3433 4850 50  0000 C CNN
F 1 "Omron DPDT Relay" V 3524 4850 50  0000 C CNN
F 2 "Relay_THT:Relay_DPDT_Omron_G5V-2" H 4850 4800 50  0001 L CNN
F 3 "http://omronfs.omron.com/en_US/ecb/products/pdf/en-g5v_2.pdf" H 4200 4850 50  0001 C CNN
	1    4200 4850
	0    1    1    0   
$EndComp
$Comp
L Relay:G5V-2 K2
U 1 1 5F7C9821
P 4200 2650
F 0 "K2" V 3433 2650 50  0000 C CNN
F 1 "Omron DPDT Relay" V 3524 2650 50  0000 C CNN
F 2 "Relay_THT:Relay_DPDT_Omron_G5V-2" H 4850 2600 50  0001 L CNN
F 3 "http://omronfs.omron.com/en_US/ecb/products/pdf/en-g5v_2.pdf" H 4200 2650 50  0001 C CNN
	1    4200 2650
	0    1    -1   0   
$EndComp
$Comp
L Diode:1N4001 D7
U 1 1 5F7C9827
P 4200 3800
F 0 "D7" H 4200 4016 50  0000 C CNN
F 1 "1N4001" H 4200 3925 50  0000 C CNN
F 2 "Diode_THT:D_DO-41_SOD81_P10.16mm_Horizontal" H 4200 3625 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88503/1n4001.pdf" H 4200 3800 50  0001 C CNN
	1    4200 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	3350 4850 3900 4850
Connection ~ 3350 4850
Wire Wire Line
	4350 3800 4800 3800
Wire Wire Line
	4500 3050 4800 3050
Wire Wire Line
	4500 4450 4800 4450
Connection ~ 4800 4450
Wire Wire Line
	3150 5750 4800 5750
Connection ~ 4800 5750
Wire Wire Line
	4800 5750 7950 5750
Wire Wire Line
	7950 4450 7950 5750
Wire Wire Line
	4800 4450 4800 5750
Wire Wire Line
	3150 2250 3600 2250
Wire Wire Line
	3150 2650 3900 2650
Wire Wire Line
	3600 1950 3600 2250
Wire Wire Line
	4800 1950 4800 2250
Wire Wire Line
	3150 4450 3600 4450
Connection ~ 3600 2250
Wire Wire Line
	3600 2250 3900 2250
Wire Wire Line
	3600 1950 4800 1950
Wire Wire Line
	3600 3050 3900 3050
Connection ~ 3600 4450
Wire Wire Line
	3600 4450 3900 4450
Wire Wire Line
	3600 3800 4050 3800
Wire Wire Line
	4850 2350 4500 2350
Connection ~ 6750 4450
Wire Wire Line
	6750 4450 7050 4450
Wire Wire Line
	6750 3800 7200 3800
Wire Wire Line
	6750 3050 7050 3050
NoConn ~ 7650 2750
NoConn ~ 7650 2150
NoConn ~ 7650 4750
NoConn ~ 7650 5150
NoConn ~ 7650 5350
NoConn ~ 7050 5250
NoConn ~ 4500 5150
NoConn ~ 4500 5350
NoConn ~ 3900 5250
NoConn ~ 4500 4750
NoConn ~ 4500 2750
NoConn ~ 4500 2150
Wire Wire Line
	7650 2350 8300 2350
Wire Wire Line
	7650 2550 8300 2550
Wire Wire Line
	4500 2550 4800 2550
Wire Wire Line
	4800 2550 4800 2650
Wire Wire Line
	4800 2250 7050 2250
Wire Wire Line
	4800 2650 7050 2650
Wire Wire Line
	7800 4950 7800 5600
Wire Wire Line
	7800 5600 6750 5600
Wire Wire Line
	6750 5600 6750 4450
Wire Wire Line
	7650 4950 7800 4950
Wire Wire Line
	4650 4950 4650 5600
Wire Wire Line
	4500 4950 4650 4950
Wire Wire Line
	3600 5600 4650 5600
Wire Wire Line
	3600 4450 3600 5600
Connection ~ 3600 3800
Wire Wire Line
	3600 3800 3600 4450
Connection ~ 4800 3800
Wire Wire Line
	4800 3800 4800 4450
Wire Wire Line
	4800 3050 4800 3800
Wire Wire Line
	3600 3050 3600 3800
Connection ~ 6750 3800
Wire Wire Line
	6750 3800 6750 4450
Connection ~ 7950 3800
Wire Wire Line
	7950 3800 7950 4450
Wire Wire Line
	7950 3050 7950 3800
Wire Wire Line
	6750 3050 6750 3800
$EndSCHEMATC
