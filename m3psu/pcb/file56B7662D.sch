EESchema Schematic File Version 2
LIBS:agg-kicad
LIBS:m3psu-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 4 10
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
L PCA9502 IC?
U 1 1 56D1F883
P 1600 2900
F 0 "IC?" H 1100 3700 50  0000 L CNN
F 1 "PCA9502" H 1100 2100 50  0000 L CNN
F 2 "agg:HVQFN24-NXP" H 1100 2000 50  0001 L CNN
F 3 "http://cache.nxp.com/documents/data_sheet/PCA9502.pdf" H 1100 1900 50  0001 L CNN
F 4 "2212086" H 1100 1800 50  0001 L CNN "Farnell"
	1    1600 2900
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR028
U 1 1 56D22EC3
P 2250 3700
F 0 "#PWR028" H 2120 3740 50  0001 L CNN
F 1 "GND" H 2250 3600 50  0000 C CNN
F 2 "" H 2250 3700 60  0000 C CNN
F 3 "" H 2250 3700 60  0000 C CNN
	1    2250 3700
	1    0    0    -1  
$EndComp
$Comp
L 3v3 #PWR029
U 1 1 56D2502F
P 950 2100
F 0 "#PWR029" H 950 2210 50  0001 L CNN
F 1 "3v3" H 950 2190 50  0000 C CNN
F 2 "" H 950 2100 60  0000 C CNN
F 3 "" H 950 2100 60  0000 C CNN
	1    950  2100
	1    0    0    -1  
$EndComp
NoConn ~ 1000 3000
$Comp
L 3v3 #PWR030
U 1 1 56D26472
P 800 3350
F 0 "#PWR030" H 800 3460 50  0001 L CNN
F 1 "3v3" H 800 3440 50  0000 C CNN
F 2 "" H 800 3350 60  0000 C CNN
F 3 "" H 800 3350 60  0000 C CNN
	1    800  3350
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 56D265B7
P 850 3400
F 0 "R?" H 900 3450 50  0000 C CNN
F 1 "1k" H 900 3350 50  0000 C CNN
F 2 "agg:0402" H 850 3400 50  0001 C CNN
F 3 "" H 850 3400 50  0001 C CNN
F 4 "2447120" H 850 3400 60  0001 C CNN "Farnell"
	1    850  3400
	1    0    0    -1  
$EndComp
NoConn ~ 2200 3100
NoConn ~ 2200 3000
NoConn ~ 2200 2900
NoConn ~ 2200 2800
$Comp
L R R?
U 1 1 56D2A504
P 2250 2200
F 0 "R?" H 2300 2250 50  0000 C CNN
F 1 "10k" H 2300 2150 50  0000 C CNN
F 2 "agg:0402" H 2250 2200 50  0001 C CNN
F 3 "" H 2250 2200 50  0001 C CNN
F 4 "2447096" H 2250 2200 60  0001 C CNN "Farnell"
	1    2250 2200
	1    0    0    -1  
$EndComp
$Comp
L 3v3 #PWR031
U 1 1 56D2A582
P 2400 2150
F 0 "#PWR031" H 2400 2260 50  0001 L CNN
F 1 "3v3" H 2400 2240 50  0000 C CNN
F 2 "" H 2400 2150 60  0000 C CNN
F 3 "" H 2400 2150 60  0000 C CNN
	1    2400 2150
	1    0    0    -1  
$EndComp
Text Notes 1100 3950 0    60   ~ 0
Address 0x50\n(0xA0 on datasheet)
$Sheet
S 2850 1200 1250 550 
U 56D5BD87
F0 "Regulator 1" 60
F1 "file56D5BD86.sch" 60
F2 "SDA" B L 2850 1550 60 
F3 "SCL" B L 2850 1650 60 
F4 "RUN0" I R 4100 1550 60 
F5 "RUN1" I R 4100 1650 60 
F6 "VOUT1" U R 4100 1400 60 
F7 "VOUT0" U R 4100 1300 60 
F8 "~SMB_ALERT" O L 2850 1300 60 
$EndSheet
Text Notes 900  1100 0    60   ~ 0
Cameras (5V @ 1A)\nPyro MCU (3.3V @ 0.1A)\nAddress 0x40
Text Notes 2850 1100 0    60   ~ 0
Radio (5V @ 0.35A)\nRadio MCU (3.3V @ 0.25A)\nAddress 0x41
$Sheet
S 900  1200 1250 550 
U 56B76640
F0 "Regulator 0" 60
F1 "file56B7663F.sch" 60
F2 "SDA" B L 900 1550 60 
F3 "SCL" B L 900 1650 60 
F4 "RUN0" I R 2150 1550 60 
F5 "RUN1" I R 2150 1650 60 
F6 "VOUT0" U R 2150 1300 60 
F7 "VOUT1" U R 2150 1400 60 
F8 "~SMB_ALERT" O L 900 1300 60 
$EndSheet
Text Notes 550  700  0    120  ~ 0
BOARD 1
$Comp
L C C?
U 1 1 56D2710E
P 850 2450
F 0 "C?" H 900 2520 50  0000 C CNN
F 1 "100n" H 900 2380 50  0000 C CNN
F 2 "agg:0402" H 850 2450 50  0001 C CNN
F 3 "" H 850 2450 50  0001 C CNN
F 4 "2496811" H 850 2450 60  0001 C CNN "Farnell"
	1    850  2450
	0    1    1    0   
$EndComp
$Comp
L GND #PWR032
U 1 1 56D282FF
P 850 2600
F 0 "#PWR032" H 720 2640 50  0001 L CNN
F 1 "GND" H 850 2500 50  0000 C CNN
F 2 "" H 850 2600 60  0000 C CNN
F 3 "" H 850 2600 60  0000 C CNN
	1    850  2600
	1    0    0    -1  
$EndComp
$Comp
L PCA9502 IC?
U 1 1 56D307FE
P 6100 2900
F 0 "IC?" H 5600 3700 50  0000 L CNN
F 1 "PCA9502" H 5600 2100 50  0000 L CNN
F 2 "agg:HVQFN24-NXP" H 5600 2000 50  0001 L CNN
F 3 "http://cache.nxp.com/documents/data_sheet/PCA9502.pdf" H 5600 1900 50  0001 L CNN
F 4 "2212086" H 5600 1800 50  0001 L CNN "Farnell"
	1    6100 2900
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR033
U 1 1 56D30804
P 6750 3700
F 0 "#PWR033" H 6620 3740 50  0001 L CNN
F 1 "GND" H 6750 3600 50  0000 C CNN
F 2 "" H 6750 3700 60  0000 C CNN
F 3 "" H 6750 3700 60  0000 C CNN
	1    6750 3700
	1    0    0    -1  
$EndComp
$Comp
L 3v3 #PWR034
U 1 1 56D3080A
P 5450 2100
F 0 "#PWR034" H 5450 2210 50  0001 L CNN
F 1 "3v3" H 5450 2190 50  0000 C CNN
F 2 "" H 5450 2100 60  0000 C CNN
F 3 "" H 5450 2100 60  0000 C CNN
	1    5450 2100
	1    0    0    -1  
$EndComp
NoConn ~ 5500 3000
$Comp
L 3v3 #PWR035
U 1 1 56D30811
P 5300 3350
F 0 "#PWR035" H 5300 3460 50  0001 L CNN
F 1 "3v3" H 5300 3440 50  0000 C CNN
F 2 "" H 5300 3350 60  0000 C CNN
F 3 "" H 5300 3350 60  0000 C CNN
	1    5300 3350
	1    0    0    -1  
$EndComp
NoConn ~ 6700 3100
NoConn ~ 6700 3000
NoConn ~ 6700 2900
NoConn ~ 6700 2800
$Comp
L 3v3 #PWR036
U 1 1 56D3084B
P 6900 2150
F 0 "#PWR036" H 6900 2260 50  0001 L CNN
F 1 "3v3" H 6900 2240 50  0000 C CNN
F 2 "" H 6900 2150 60  0000 C CNN
F 3 "" H 6900 2150 60  0000 C CNN
	1    6900 2150
	1    0    0    -1  
$EndComp
Text Notes 5600 3950 0    60   ~ 0
Address 0x52\n(0xA4 on datasheet)
Text Notes 5400 1100 0    60   ~ 0
AUX 1 (5V @ 1A)\nCAN transceivers (5V @ 0.1A)\nAddress 0x42
Text Notes 7350 1100 0    60   ~ 0
IMU ADIS (5V @ 0.3A)\nIMU Other (3.3V @ 0.3A)\nAddress 0x43
Text Notes 5050 700  0    120  ~ 0
BOARD 2
$Comp
L GND #PWR037
U 1 1 56D30886
P 5350 2600
F 0 "#PWR037" H 5220 2640 50  0001 L CNN
F 1 "GND" H 5350 2500 50  0000 C CNN
F 2 "" H 5350 2600 60  0000 C CNN
F 3 "" H 5350 2600 60  0000 C CNN
	1    5350 2600
	1    0    0    -1  
$EndComp
$Sheet
S 5400 1200 1250 550 
U 56D37487
F0 "Regulator 2" 60
F1 "file56D37486.sch" 60
F2 "SDA" B L 5400 1550 60 
F3 "SCL" B L 5400 1650 60 
F4 "RUN0" I R 6650 1550 60 
F5 "RUN1" I R 6650 1650 60 
F6 "VOUT1" U R 6650 1400 60 
F7 "VOUT0" U R 6650 1300 60 
F8 "~SMB_ALERT" O L 5400 1300 60 
$EndSheet
$Sheet
S 7350 1200 1250 550 
U 56D4B3D6
F0 "Regulator 3" 60
F1 "file56D4B3D5.sch" 60
F2 "SDA" B L 7350 1550 60 
F3 "SCL" B L 7350 1650 60 
F4 "RUN0" I R 8600 1550 60 
F5 "RUN1" I R 8600 1650 60 
F6 "VOUT1" U R 8600 1400 60 
F7 "VOUT0" U R 8600 1300 60 
F8 "~SMB_ALERT" O L 7350 1300 60 
$EndSheet
$Comp
L PCA9502 IC?
U 1 1 56D52FE0
P 1600 6550
F 0 "IC?" H 1100 7350 50  0000 L CNN
F 1 "PCA9502" H 1100 5750 50  0000 L CNN
F 2 "agg:HVQFN24-NXP" H 1100 5650 50  0001 L CNN
F 3 "http://cache.nxp.com/documents/data_sheet/PCA9502.pdf" H 1100 5550 50  0001 L CNN
F 4 "2212086" H 1100 5450 50  0001 L CNN "Farnell"
	1    1600 6550
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR038
U 1 1 56D52FE6
P 2250 7350
F 0 "#PWR038" H 2120 7390 50  0001 L CNN
F 1 "GND" H 2250 7250 50  0000 C CNN
F 2 "" H 2250 7350 60  0000 C CNN
F 3 "" H 2250 7350 60  0000 C CNN
	1    2250 7350
	1    0    0    -1  
$EndComp
$Comp
L 3v3 #PWR039
U 1 1 56D52FEC
P 950 5750
F 0 "#PWR039" H 950 5860 50  0001 L CNN
F 1 "3v3" H 950 5840 50  0000 C CNN
F 2 "" H 950 5750 60  0000 C CNN
F 3 "" H 950 5750 60  0000 C CNN
	1    950  5750
	1    0    0    -1  
$EndComp
NoConn ~ 1000 6650
$Comp
L 3v3 #PWR040
U 1 1 56D52FF3
P 800 7000
F 0 "#PWR040" H 800 7110 50  0001 L CNN
F 1 "3v3" H 800 7090 50  0000 C CNN
F 2 "" H 800 7000 60  0000 C CNN
F 3 "" H 800 7000 60  0000 C CNN
	1    800  7000
	1    0    0    -1  
$EndComp
NoConn ~ 2200 6750
NoConn ~ 2200 6650
NoConn ~ 2200 6550
NoConn ~ 2200 6450
$Comp
L 3v3 #PWR041
U 1 1 56D5302D
P 2400 5800
F 0 "#PWR041" H 2400 5910 50  0001 L CNN
F 1 "3v3" H 2400 5890 50  0000 C CNN
F 2 "" H 2400 5800 60  0000 C CNN
F 3 "" H 2400 5800 60  0000 C CNN
	1    2400 5800
	1    0    0    -1  
$EndComp
Text Notes 1100 7600 0    60   ~ 0
Address 0x54\n(0xA8 on datasheet)
Text Notes 900  4750 0    60   ~ 0
AUX 2 (5V @ 1A)\nFC MCU (3.3V @ 0.15A)\nAddress 0x44
Text Notes 2850 4750 0    60   ~ 0
DL Sensors (5V @ 0.1A)\nDL MCU (3.3V @ 0.3A)\nAddress 0x45
Text Notes 550  4350 0    120  ~ 0
BOARD 3
$Comp
L GND #PWR042
U 1 1 56D53056
P 850 6250
F 0 "#PWR042" H 720 6290 50  0001 L CNN
F 1 "GND" H 850 6150 50  0000 C CNN
F 2 "" H 850 6250 60  0000 C CNN
F 3 "" H 850 6250 60  0000 C CNN
	1    850  6250
	1    0    0    -1  
$EndComp
$Sheet
S 900  4850 1250 550 
U 56D55B4D
F0 "Regulator 4" 60
F1 "file56D55B4C.sch" 60
F2 "SDA" B L 900 5200 60 
F3 "SCL" B L 900 5300 60 
F4 "RUN0" I R 2150 5200 60 
F5 "RUN1" I R 2150 5300 60 
F6 "VOUT1" U R 2150 5050 60 
F7 "VOUT0" U R 2150 4950 60 
F8 "~SMB_ALERT" O L 900 4950 60 
$EndSheet
$Sheet
S 2850 4850 1250 550 
U 56D569DB
F0 "Regulator 5" 60
F1 "file56D569DA.sch" 60
F2 "SDA" B L 2850 5200 60 
F3 "SCL" B L 2850 5300 60 
F4 "RUN0" I R 4100 5200 60 
F5 "RUN1" I R 4100 5300 60 
F6 "VOUT1" U R 4100 5050 60 
F7 "VOUT0" U R 4100 4950 60 
F8 "~SMB_ALERT" O L 2850 4950 60 
$EndSheet
Text HLabel 5950 4800 2    60   BiDi ~ 0
PMBUS_SDA
Text Label 5500 4800 2    60   ~ 0
SDA
Text HLabel 5950 4900 2    60   BiDi ~ 0
PMBUS_SCL
Text Label 5500 4900 2    60   ~ 0
SCL
Text Label 800  5050 2    60   ~ 0
SDA
Text Label 750  5150 2    60   ~ 0
SCL
Text Label 750  1500 2    60   ~ 0
SCL
Text Label 800  1400 2    60   ~ 0
SDA
Text Label 5250 1500 2    60   ~ 0
SCL
Text Label 5300 1400 2    60   ~ 0
SDA
Text Notes 5050 4350 0    120  ~ 0
Off-sheet connections
Text Label 2200 1300 0    60   ~ 0
V_CAMERAS
Text Label 2200 1400 0    60   ~ 0
V_PYRO_MCU
Text Label 4150 1300 0    60   ~ 0
V_RADIO_AMP
Text Label 4150 1400 0    60   ~ 0
V_RADIO_MCU
Text Label 2200 4950 0    60   ~ 0
V_AUX_2
Text Label 2200 5050 0    60   ~ 0
V_FC_MCU
Text Label 4150 4950 0    60   ~ 0
V_DL_SENSORS
Text Label 4150 5050 0    60   ~ 0
V_DL_MCU
Text Label 8650 1300 0    60   ~ 0
V_IMU_ADIS
Text Label 8650 1400 0    60   ~ 0
V_IMU_OTHER
Text Label 6700 1300 0    60   ~ 0
V_AUX_1
Text Label 6700 1400 0    60   ~ 0
V_CAN
Text HLabel 5950 5050 2    60   UnSpc ~ 0
V_CAMERAS
Text HLabel 5950 5150 2    60   UnSpc ~ 0
V_PYRO_MCU
Text HLabel 5950 5250 2    60   UnSpc ~ 0
V_RADIO_AMP
Text HLabel 5950 5350 2    60   UnSpc ~ 0
V_RADIO_MCU
Text HLabel 5950 5500 2    60   UnSpc ~ 0
V_AUX_1
Text HLabel 5950 5600 2    60   UnSpc ~ 0
V_CAN
Text HLabel 5950 5700 2    60   UnSpc ~ 0
V_IMU_ADIS
Text HLabel 5950 5800 2    60   UnSpc ~ 0
V_IMU_OTHER
Text HLabel 5950 5950 2    60   UnSpc ~ 0
V_AUX_2
Text HLabel 5950 6050 2    60   UnSpc ~ 0
V_FC_MCU
Text HLabel 5950 6150 2    60   UnSpc ~ 0
V_DL_SENSORS
Text HLabel 5950 6250 2    60   UnSpc ~ 0
V_DL_MCU
Connection ~ 2250 3400
Wire Wire Line
	2200 3400 2250 3400
Connection ~ 2250 3500
Wire Wire Line
	2250 3500 2200 3500
Connection ~ 2250 3600
Wire Wire Line
	2250 3600 2200 3600
Wire Wire Line
	2250 3300 2250 3700
Wire Wire Line
	2200 3300 2250 3300
Wire Wire Line
	2500 2500 2200 2500
Wire Wire Line
	2500 1650 2500 2500
Wire Wire Line
	2150 1650 2500 1650
Wire Wire Line
	2450 1550 2150 1550
Wire Wire Line
	2450 2400 2450 1550
Wire Wire Line
	2200 2400 2450 2400
Connection ~ 950  2500
Wire Wire Line
	950  2500 1000 2500
Connection ~ 950  2400
Wire Wire Line
	850  2400 1000 2400
Connection ~ 950  2300
Wire Wire Line
	950  2300 1000 2300
Connection ~ 950  2200
Wire Wire Line
	1000 2200 950  2200
Wire Wire Line
	950  2100 950  2800
Wire Wire Line
	950  2600 1000 2600
Wire Wire Line
	800  3600 1000 3600
Wire Wire Line
	800  3350 800  3600
Wire Wire Line
	1000 3400 950  3400
Wire Wire Line
	850  3400 800  3400
Connection ~ 800  3400
Wire Wire Line
	800  3100 1000 3100
Wire Wire Line
	800  1400 800  3100
Wire Wire Line
	800  1550 900  1550
Wire Wire Line
	900  1650 750  1650
Wire Wire Line
	750  1500 750  3200
Wire Wire Line
	750  3200 1000 3200
Wire Wire Line
	2200 2200 2250 2200
Wire Wire Line
	2400 2150 2400 2200
Wire Wire Line
	1000 2900 750  2900
Connection ~ 750  2900
Wire Wire Line
	950  2800 1000 2800
Connection ~ 950  2600
Wire Wire Line
	2200 2600 4150 2600
Wire Wire Line
	4150 2600 4150 1550
Wire Wire Line
	4150 1550 4100 1550
Wire Wire Line
	4100 1650 4200 1650
Wire Wire Line
	4200 1650 4200 2700
Wire Wire Line
	4200 2700 2200 2700
Wire Wire Line
	2400 2200 2350 2200
Wire Wire Line
	2850 1550 2750 1550
Wire Wire Line
	2750 1550 2750 1850
Wire Wire Line
	2750 1850 800  1850
Connection ~ 800  1850
Wire Wire Line
	750  1900 2800 1900
Wire Wire Line
	2800 1900 2800 1650
Wire Wire Line
	2800 1650 2850 1650
Connection ~ 750  1900
Wire Notes Line
	550  750  4750 750 
Wire Notes Line
	4750 750  4750 4100
Wire Notes Line
	4750 4100 550  4100
Wire Notes Line
	550  4100 550  750 
Wire Wire Line
	850  2400 850  2450
Wire Wire Line
	850  2600 850  2550
Connection ~ 6750 3400
Wire Wire Line
	6700 3400 6750 3400
Connection ~ 6750 3500
Wire Wire Line
	6750 3500 6700 3500
Connection ~ 6750 3600
Wire Wire Line
	6750 3600 6700 3600
Wire Wire Line
	6750 3300 6750 3700
Wire Wire Line
	6700 3300 6750 3300
Wire Wire Line
	7000 2500 6700 2500
Wire Wire Line
	7000 1650 7000 2500
Wire Wire Line
	6650 1650 7000 1650
Wire Wire Line
	6950 1550 6650 1550
Wire Wire Line
	6950 2400 6950 1550
Wire Wire Line
	6700 2400 6950 2400
Connection ~ 5450 2500
Wire Wire Line
	5450 2500 5500 2500
Connection ~ 5450 2400
Wire Wire Line
	5350 2400 5500 2400
Connection ~ 5450 2300
Wire Wire Line
	5450 2300 5500 2300
Connection ~ 5450 2200
Wire Wire Line
	5500 2200 5450 2200
Wire Wire Line
	5300 3600 5500 3600
Wire Wire Line
	5300 3350 5300 3600
Wire Wire Line
	5500 3400 5450 3400
Wire Wire Line
	5350 3400 5300 3400
Connection ~ 5300 3400
Wire Wire Line
	5300 3100 5500 3100
Wire Wire Line
	5300 1400 5300 3100
Wire Wire Line
	5300 1550 5400 1550
Wire Wire Line
	5400 1650 5250 1650
Wire Wire Line
	5250 1500 5250 3200
Wire Wire Line
	5250 3200 5500 3200
Wire Wire Line
	6700 2200 6750 2200
Wire Wire Line
	6900 2150 6900 2200
Wire Wire Line
	5500 2900 5250 2900
Connection ~ 5250 2900
Connection ~ 5450 2600
Wire Wire Line
	6700 2600 8650 2600
Wire Wire Line
	8650 2600 8650 1550
Wire Wire Line
	8650 1550 8600 1550
Wire Wire Line
	8600 1650 8700 1650
Wire Wire Line
	8700 1650 8700 2700
Wire Wire Line
	8700 2700 6700 2700
Wire Wire Line
	6900 2200 6850 2200
Wire Wire Line
	7350 1550 7250 1550
Wire Wire Line
	7250 1550 7250 1850
Wire Wire Line
	7250 1850 5300 1850
Connection ~ 5300 1850
Wire Wire Line
	5250 1900 7300 1900
Wire Wire Line
	7300 1900 7300 1650
Wire Wire Line
	7300 1650 7350 1650
Connection ~ 5250 1900
Wire Notes Line
	5050 750  9300 750 
Wire Notes Line
	9300 750  9300 4100
Wire Notes Line
	9300 4100 5050 4100
Wire Notes Line
	5050 4100 5050 750 
Wire Wire Line
	5350 2400 5350 2450
Wire Wire Line
	5350 2600 5350 2550
Connection ~ 2250 7050
Wire Wire Line
	2200 7050 2250 7050
Connection ~ 2250 7150
Wire Wire Line
	2250 7150 2200 7150
Connection ~ 2250 7250
Wire Wire Line
	2250 7250 2200 7250
Wire Wire Line
	2250 6950 2250 7350
Wire Wire Line
	2200 6950 2250 6950
Wire Wire Line
	2500 6150 2200 6150
Wire Wire Line
	2500 5300 2500 6150
Wire Wire Line
	2150 5300 2500 5300
Wire Wire Line
	2450 5200 2150 5200
Wire Wire Line
	2450 6050 2450 5200
Wire Wire Line
	2200 6050 2450 6050
Connection ~ 950  6150
Wire Wire Line
	950  6150 1000 6150
Connection ~ 950  6050
Wire Wire Line
	850  6050 1000 6050
Connection ~ 950  5950
Wire Wire Line
	950  5950 1000 5950
Connection ~ 950  5850
Wire Wire Line
	1000 5850 950  5850
Wire Wire Line
	950  5750 950  6450
Wire Wire Line
	800  7250 1000 7250
Wire Wire Line
	800  7000 800  7250
Wire Wire Line
	1000 7050 950  7050
Wire Wire Line
	850  7050 800  7050
Connection ~ 800  7050
Wire Wire Line
	800  6750 1000 6750
Wire Wire Line
	800  5050 800  6750
Wire Wire Line
	800  5200 900  5200
Wire Wire Line
	900  5300 750  5300
Wire Wire Line
	750  5150 750  6850
Wire Wire Line
	750  6850 1000 6850
Wire Wire Line
	2200 5850 2250 5850
Wire Wire Line
	2400 5800 2400 5850
Wire Wire Line
	1000 6550 750  6550
Connection ~ 750  6550
Wire Wire Line
	950  6450 1000 6450
Connection ~ 950  6250
Wire Wire Line
	2200 6250 4150 6250
Wire Wire Line
	4150 6250 4150 5200
Wire Wire Line
	4150 5200 4100 5200
Wire Wire Line
	4100 5300 4200 5300
Wire Wire Line
	4200 5300 4200 6350
Wire Wire Line
	4200 6350 2200 6350
Wire Wire Line
	2400 5850 2350 5850
Wire Wire Line
	2850 5200 2750 5200
Wire Wire Line
	2750 5200 2750 5500
Wire Wire Line
	2750 5500 800  5500
Connection ~ 800  5500
Wire Wire Line
	750  5550 2800 5550
Wire Wire Line
	2800 5550 2800 5300
Wire Wire Line
	2800 5300 2850 5300
Connection ~ 750  5550
Wire Notes Line
	550  4400 4750 4400
Wire Notes Line
	4750 4400 4750 7750
Wire Notes Line
	4750 7750 550  7750
Wire Notes Line
	550  7750 550  4400
Wire Wire Line
	850  6050 850  6100
Wire Wire Line
	850  6250 850  6200
Wire Wire Line
	5450 2100 5450 2600
Wire Wire Line
	5500 2800 5250 2800
Connection ~ 5250 2800
Wire Wire Line
	5450 2600 5500 2600
Wire Wire Line
	950  6250 1000 6250
Wire Wire Line
	5500 4800 5950 4800
Wire Wire Line
	5500 4900 5950 4900
Connection ~ 800  5200
Connection ~ 750  5300
Connection ~ 800  1550
Connection ~ 750  1650
Connection ~ 5300 1550
Connection ~ 5250 1650
Wire Notes Line
	5050 4400 6800 4400
Wire Notes Line
	6800 4400 6800 6350
Wire Notes Line
	6800 6350 5050 6350
Wire Notes Line
	5050 6350 5050 4400
Wire Wire Line
	2150 1300 2200 1300
Wire Wire Line
	2150 1400 2200 1400
Wire Wire Line
	4150 1400 4100 1400
Wire Wire Line
	4150 1300 4100 1300
Wire Wire Line
	2150 4950 2200 4950
Wire Wire Line
	2150 5050 2200 5050
Wire Wire Line
	4100 4950 4150 4950
Wire Wire Line
	4100 5050 4150 5050
Wire Wire Line
	6650 1300 6700 1300
Wire Wire Line
	6650 1400 6700 1400
Wire Wire Line
	8600 1300 8650 1300
Wire Wire Line
	8600 1400 8650 1400
Wire Wire Line
	5950 5050 5800 5050
Wire Wire Line
	5800 5150 5950 5150
Wire Wire Line
	5950 5250 5800 5250
Wire Wire Line
	5950 5350 5800 5350
Wire Wire Line
	5950 5500 5800 5500
Wire Wire Line
	5950 5600 5800 5600
Wire Wire Line
	5800 5700 5950 5700
Wire Wire Line
	5950 5800 5800 5800
Wire Wire Line
	5800 5950 5950 5950
Wire Wire Line
	5950 6050 5800 6050
Wire Wire Line
	5800 6150 5950 6150
Wire Wire Line
	5800 6250 5950 6250
Text Label 5800 5050 2    60   ~ 0
V_CAMERAS
Text Label 5800 5150 2    60   ~ 0
V_PYRO_MCU
Text Label 5800 5250 2    60   ~ 0
V_RADIO_AMP
Text Label 5800 5350 2    60   ~ 0
V_RADIO_MCU
Text Label 5800 5500 2    60   ~ 0
V_AUX_1
Text Label 5800 5600 2    60   ~ 0
V_CAN
Text Label 5800 5700 2    60   ~ 0
V_IMU_ADIS
Text Label 5800 5800 2    60   ~ 0
V_IMU_OTHER
Text Label 5800 5950 2    60   ~ 0
V_AUX_2
Text Label 5800 6050 2    60   ~ 0
V_FC_MCU
Text Label 5800 6150 2    60   ~ 0
V_DL_SENSORS
Text Label 5800 6250 2    60   ~ 0
V_DL_MCU
$Comp
L R R?
U 1 1 56D55B46
P 5850 4650
F 0 "R?" H 5900 4700 50  0000 C CNN
F 1 "4k7" H 5900 4600 50  0000 C CNN
F 2 "agg:0402" H 5850 4650 50  0001 C CNN
F 3 "" H 5850 4650 50  0001 C CNN
F 4 "2447187" H 5850 4650 60  0001 C CNN "Farnell"
	1    5850 4650
	0    1    1    0   
$EndComp
$Comp
L 3v3 #PWR?
U 1 1 56D59DE5
P 5750 4550
F 0 "#PWR?" H 5750 4660 50  0001 L CNN
F 1 "3v3" H 5750 4640 50  0000 C CNN
F 2 "" H 5750 4550 60  0000 C CNN
F 3 "" H 5750 4550 60  0000 C CNN
	1    5750 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	5850 4750 5850 4800
Connection ~ 5850 4800
$Comp
L R R?
U 1 1 56D5D5A6
P 5650 4650
F 0 "R?" H 5700 4700 50  0000 C CNN
F 1 "4k7" H 5700 4600 50  0000 C CNN
F 2 "agg:0402" H 5650 4650 50  0001 C CNN
F 3 "" H 5650 4650 50  0001 C CNN
F 4 "2447187" H 5650 4650 60  0001 C CNN "Farnell"
	1    5650 4650
	0    1    1    0   
$EndComp
Wire Wire Line
	5650 4600 5850 4600
Wire Wire Line
	5650 4600 5650 4650
Wire Wire Line
	5650 4750 5650 4900
Connection ~ 5650 4900
Wire Wire Line
	5850 4600 5850 4650
Wire Wire Line
	5750 4550 5750 4600
Connection ~ 5750 4600
$Comp
L C C?
U 1 1 56D6CF23
P 5350 2450
F 0 "C?" H 5400 2520 50  0000 C CNN
F 1 "100n" H 5400 2380 50  0000 C CNN
F 2 "agg:0402" H 5350 2450 50  0001 C CNN
F 3 "" H 5350 2450 50  0001 C CNN
F 4 "2496811" H 5350 2450 60  0001 C CNN "Farnell"
	1    5350 2450
	0    1    1    0   
$EndComp
$Comp
L C C?
U 1 1 56D6E778
P 850 6100
F 0 "C?" H 900 6170 50  0000 C CNN
F 1 "100n" H 900 6030 50  0000 C CNN
F 2 "agg:0402" H 850 6100 50  0001 C CNN
F 3 "" H 850 6100 50  0001 C CNN
F 4 "2496811" H 850 6100 60  0001 C CNN "Farnell"
	1    850  6100
	0    1    1    0   
$EndComp
$Comp
L R R?
U 1 1 56D70205
P 5350 3400
F 0 "R?" H 5400 3450 50  0000 C CNN
F 1 "1k" H 5400 3350 50  0000 C CNN
F 2 "agg:0402" H 5350 3400 50  0001 C CNN
F 3 "" H 5350 3400 50  0001 C CNN
F 4 "2447120" H 5350 3400 60  0001 C CNN "Farnell"
	1    5350 3400
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 56D70B56
P 850 7050
F 0 "R?" H 900 7100 50  0000 C CNN
F 1 "1k" H 900 7000 50  0000 C CNN
F 2 "agg:0402" H 850 7050 50  0001 C CNN
F 3 "" H 850 7050 50  0001 C CNN
F 4 "2447120" H 850 7050 60  0001 C CNN "Farnell"
	1    850  7050
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 56D71BAD
P 6750 2200
F 0 "R?" H 6800 2250 50  0000 C CNN
F 1 "10k" H 6800 2150 50  0000 C CNN
F 2 "agg:0402" H 6750 2200 50  0001 C CNN
F 3 "" H 6750 2200 50  0001 C CNN
F 4 "2447096" H 6750 2200 60  0001 C CNN "Farnell"
	1    6750 2200
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 56D722C8
P 2250 5850
F 0 "R?" H 2300 5900 50  0000 C CNN
F 1 "10k" H 2300 5800 50  0000 C CNN
F 2 "agg:0402" H 2250 5850 50  0001 C CNN
F 3 "" H 2250 5850 50  0001 C CNN
F 4 "2447096" H 2250 5850 60  0001 C CNN "Farnell"
	1    2250 5850
	1    0    0    -1  
$EndComp
$EndSCHEMATC
