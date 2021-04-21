EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A 11000 8500
encoding utf-8
Sheet 36 27
Title "IMD Container"
Date "2020-11-02"
Rev "1"
Comp "Northeastern Electric Racing"
Comment1 "https://github.com/Northeastern-Electric-Racing/NER"
Comment2 "For authors and other info, contact Chief Electrical Engineer"
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L NER:Bender_Isometer_IR155-3204 U?
U 1 1 627152B9
P 5200 3600
AR Path="/627152B9" Ref="U?"  Part="1" 
AR Path="/626EC638/627152B9" Ref="U2"  Part="1" 
F 0 "U2" H 5200 3715 50  0000 C CNN
F 1 "Bender_Isometer_IR155-3204" H 5200 3624 50  0000 C CNN
F 2 "" H 5200 3600 50  0001 C CNN
F 3 "" H 5200 3600 50  0001 C CNN
	1    5200 3600
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 627152C0
P 5200 3300
AR Path="/627152C0" Ref="R?"  Part="1" 
AR Path="/626EC638/627152C0" Ref="R1"  Part="1" 
F 0 "R1" V 5407 3300 50  0000 C CNN
F 1 "2.2k" V 5316 3300 50  0000 C CNN
F 2 "" V 5130 3300 50  0001 C CNN
F 3 "~" H 5200 3300 50  0001 C CNN
	1    5200 3300
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3700 3850 3700 3300
Wire Wire Line
	5900 3950 6200 3950
Wire Wire Line
	5350 3300 6200 3300
Wire Wire Line
	6200 3300 6200 3750
Wire Wire Line
	6200 3750 5900 3750
Wire Wire Line
	5900 4050 6200 4050
Text HLabel 6200 3950 2    50   BiDi ~ 0
HV_Sense+
Text HLabel 6200 4050 2    50   BiDi ~ 0
HV_Sense-
Text HLabel 4100 3750 0    50   Input ~ 0
GLV
Wire Wire Line
	4100 4050 4500 4050
Wire Wire Line
	4500 3950 4100 3950
Wire Wire Line
	3700 3850 4500 3850
Wire Wire Line
	3700 3300 5050 3300
Wire Wire Line
	4100 3750 4500 3750
Text HLabel 4100 3950 0    50   UnSpc ~ 0
GND2
Text HLabel 4100 4050 0    50   UnSpc ~ 0
GND1
Text HLabel 3600 3850 0    50   UnSpc ~ 0
GND
Wire Wire Line
	3700 3850 3600 3850
Connection ~ 3700 3850
Wire Wire Line
	6200 3300 6350 3300
Connection ~ 6200 3300
Text HLabel 6350 3300 2    50   Output ~ 0
IMD_Fault
$EndSCHEMATC
