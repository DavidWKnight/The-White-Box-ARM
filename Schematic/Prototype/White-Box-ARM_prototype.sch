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
LIBS:White Box Arm
LIBS:White-Box-ARM_prototype-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "The White Box ARM Prototype"
Date "2017-10-20"
Rev "V1.0"
Comp ""
Comment1 "Prototype"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L LCD-4x20 DS1
U 1 1 59D0E25D
P 1650 6200
F 0 "DS1" H 850 6600 50  0000 C CNN
F 1 "LCD-4x20" H 2350 6600 50  0000 C CNN
F 2 "" H 1650 6150 50  0000 C CIN
F 3 "" H 1650 6200 50  0000 C CNN
	1    1650 6200
	1    0    0    -1  
$EndComp
$Comp
L Rotary_Encoder_Switch SW3
U 1 1 59D0E2FB
P 8250 1250
F 0 "SW3" H 8250 1510 50  0000 C CNN
F 1 "Rotary_Encoder_Switch" H 8250 990 50  0000 C CNN
F 2 "" H 8150 1410 50  0001 C CNN
F 3 "" H 8250 1510 50  0001 C CNN
	1    8250 1250
	1    0    0    -1  
$EndComp
$Comp
L Rotary_Encoder_Switch SW4
U 1 1 59D0E338
P 8250 1850
F 0 "SW4" H 8250 2110 50  0000 C CNN
F 1 "Rotary_Encoder_Switch" H 8250 1590 50  0000 C CNN
F 2 "" H 8150 2010 50  0001 C CNN
F 3 "" H 8250 2110 50  0001 C CNN
	1    8250 1850
	1    0    0    -1  
$EndComp
$Comp
L Rotary_Encoder_Switch SW5
U 1 1 59D0E422
P 8250 2450
F 0 "SW5" H 8250 2710 50  0000 C CNN
F 1 "Rotary_Encoder_Switch" H 8250 2190 50  0000 C CNN
F 2 "" H 8150 2610 50  0001 C CNN
F 3 "" H 8250 2710 50  0001 C CNN
	1    8250 2450
	1    0    0    -1  
$EndComp
$Comp
L Rotary_Encoder_Switch SW6
U 1 1 59D0E428
P 8250 3050
F 0 "SW6" H 8250 3310 50  0000 C CNN
F 1 "Rotary_Encoder_Switch" H 8250 2790 50  0000 C CNN
F 2 "" H 8150 3210 50  0001 C CNN
F 3 "" H 8250 3310 50  0001 C CNN
	1    8250 3050
	1    0    0    -1  
$EndComp
$Comp
L SW_Push SW1
U 1 1 59D0E4D5
P 8350 4250
F 0 "SW1" H 8400 4350 50  0000 L CNN
F 1 "SW_Push" H 8350 4190 50  0000 C CNN
F 2 "" H 8350 4450 50  0001 C CNN
F 3 "" H 8350 4450 50  0001 C CNN
	1    8350 4250
	1    0    0    -1  
$EndComp
$Comp
L SW_Push SW2
U 1 1 59D0E588
P 8350 4500
F 0 "SW2" H 8400 4600 50  0000 L CNN
F 1 "SW_Push" H 8350 4440 50  0000 C CNN
F 2 "" H 8350 4700 50  0001 C CNN
F 3 "" H 8350 4700 50  0001 C CNN
	1    8350 4500
	1    0    0    -1  
$EndComp
$Comp
L SW_Push SW7
U 1 1 59D0E5BB
P 8350 4750
F 0 "SW7" H 8400 4850 50  0000 L CNN
F 1 "SW_Push" H 8350 4690 50  0000 C CNN
F 2 "" H 8350 4950 50  0001 C CNN
F 3 "" H 8350 4950 50  0001 C CNN
	1    8350 4750
	1    0    0    -1  
$EndComp
$Comp
L SW_Push SW8
U 1 1 59D0E5ED
P 8350 5000
F 0 "SW8" H 8400 5100 50  0000 L CNN
F 1 "SW_Push" H 8350 4940 50  0000 C CNN
F 2 "" H 8350 5200 50  0001 C CNN
F 3 "" H 8350 5200 50  0001 C CNN
	1    8350 5000
	1    0    0    -1  
$EndComp
$Comp
L LED D1
U 1 1 59D0E89C
P 10700 2650
F 0 "D1" H 10700 2750 50  0000 C CNN
F 1 "LED" H 10700 2550 50  0000 C CNN
F 2 "" H 10700 2650 50  0001 C CNN
F 3 "" H 10700 2650 50  0001 C CNN
	1    10700 2650
	1    0    0    -1  
$EndComp
$Comp
L R R1
U 1 1 59D0E98D
P 10350 2650
F 0 "R1" V 10430 2650 50  0000 C CNN
F 1 "470" V 10350 2650 50  0000 C CNN
F 2 "" V 10280 2650 50  0001 C CNN
F 3 "" H 10350 2650 50  0001 C CNN
	1    10350 2650
	0    1    1    0   
$EndComp
Text Label 10150 2650 2    60   ~ 0
LED0
$Comp
L LED D2
U 1 1 59D0ED94
P 10700 2950
F 0 "D2" H 10700 3050 50  0000 C CNN
F 1 "LED" H 10700 2850 50  0000 C CNN
F 2 "" H 10700 2950 50  0001 C CNN
F 3 "" H 10700 2950 50  0001 C CNN
	1    10700 2950
	1    0    0    -1  
$EndComp
$Comp
L R R2
U 1 1 59D0ED9A
P 10350 2950
F 0 "R2" V 10430 2950 50  0000 C CNN
F 1 "470" V 10350 2950 50  0000 C CNN
F 2 "" V 10280 2950 50  0001 C CNN
F 3 "" H 10350 2950 50  0001 C CNN
	1    10350 2950
	0    1    1    0   
$EndComp
Text Label 10150 2950 2    60   ~ 0
LED1
$Comp
L LED D3
U 1 1 59D0EE53
P 10700 3250
F 0 "D3" H 10700 3350 50  0000 C CNN
F 1 "LED" H 10700 3150 50  0000 C CNN
F 2 "" H 10700 3250 50  0001 C CNN
F 3 "" H 10700 3250 50  0001 C CNN
	1    10700 3250
	1    0    0    -1  
$EndComp
$Comp
L R R3
U 1 1 59D0EE59
P 10350 3250
F 0 "R3" V 10430 3250 50  0000 C CNN
F 1 "470" V 10350 3250 50  0000 C CNN
F 2 "" V 10280 3250 50  0001 C CNN
F 3 "" H 10350 3250 50  0001 C CNN
	1    10350 3250
	0    1    1    0   
$EndComp
Text Label 10150 3250 2    60   ~ 0
LED2
$Comp
L LED D4
U 1 1 59D0EE64
P 10700 3550
F 0 "D4" H 10700 3650 50  0000 C CNN
F 1 "LED" H 10700 3450 50  0000 C CNN
F 2 "" H 10700 3550 50  0001 C CNN
F 3 "" H 10700 3550 50  0001 C CNN
	1    10700 3550
	1    0    0    -1  
$EndComp
$Comp
L R R4
U 1 1 59D0EE6A
P 10350 3550
F 0 "R4" V 10430 3550 50  0000 C CNN
F 1 "470" V 10350 3550 50  0000 C CNN
F 2 "" V 10280 3550 50  0001 C CNN
F 3 "" H 10350 3550 50  0001 C CNN
	1    10350 3550
	0    1    1    0   
$EndComp
Text Label 10150 3550 2    60   ~ 0
LED3
$Comp
L LED D5
U 1 1 59D0F0B2
P 10700 3850
F 0 "D5" H 10700 3950 50  0000 C CNN
F 1 "LED" H 10700 3750 50  0000 C CNN
F 2 "" H 10700 3850 50  0001 C CNN
F 3 "" H 10700 3850 50  0001 C CNN
	1    10700 3850
	1    0    0    -1  
$EndComp
$Comp
L R R5
U 1 1 59D0F0B8
P 10350 3850
F 0 "R5" V 10430 3850 50  0000 C CNN
F 1 "470" V 10350 3850 50  0000 C CNN
F 2 "" V 10280 3850 50  0001 C CNN
F 3 "" H 10350 3850 50  0001 C CNN
	1    10350 3850
	0    1    1    0   
$EndComp
Text Label 10150 3850 2    60   ~ 0
LED4
$Comp
L LED D6
U 1 1 59D0F0C3
P 10700 4150
F 0 "D6" H 10700 4250 50  0000 C CNN
F 1 "LED" H 10700 4050 50  0000 C CNN
F 2 "" H 10700 4150 50  0001 C CNN
F 3 "" H 10700 4150 50  0001 C CNN
	1    10700 4150
	1    0    0    -1  
$EndComp
$Comp
L R R6
U 1 1 59D0F0C9
P 10350 4150
F 0 "R6" V 10430 4150 50  0000 C CNN
F 1 "470" V 10350 4150 50  0000 C CNN
F 2 "" V 10280 4150 50  0001 C CNN
F 3 "" H 10350 4150 50  0001 C CNN
	1    10350 4150
	0    1    1    0   
$EndComp
Text Label 10150 4150 2    60   ~ 0
LED5
$Comp
L LED D7
U 1 1 59D0F0D4
P 10700 4450
F 0 "D7" H 10700 4550 50  0000 C CNN
F 1 "LED" H 10700 4350 50  0000 C CNN
F 2 "" H 10700 4450 50  0001 C CNN
F 3 "" H 10700 4450 50  0001 C CNN
	1    10700 4450
	1    0    0    -1  
$EndComp
$Comp
L R R7
U 1 1 59D0F0DA
P 10350 4450
F 0 "R7" V 10430 4450 50  0000 C CNN
F 1 "470" V 10350 4450 50  0000 C CNN
F 2 "" V 10280 4450 50  0001 C CNN
F 3 "" H 10350 4450 50  0001 C CNN
	1    10350 4450
	0    1    1    0   
$EndComp
Text Label 10150 4450 2    60   ~ 0
LED6
$Comp
L LED D8
U 1 1 59D0F0E5
P 10700 4750
F 0 "D8" H 10700 4850 50  0000 C CNN
F 1 "LED" H 10700 4650 50  0000 C CNN
F 2 "" H 10700 4750 50  0001 C CNN
F 3 "" H 10700 4750 50  0001 C CNN
	1    10700 4750
	1    0    0    -1  
$EndComp
$Comp
L R R8
U 1 1 59D0F0EB
P 10350 4750
F 0 "R8" V 10430 4750 50  0000 C CNN
F 1 "470" V 10350 4750 50  0000 C CNN
F 2 "" V 10280 4750 50  0001 C CNN
F 3 "" H 10350 4750 50  0001 C CNN
	1    10350 4750
	0    1    1    0   
$EndComp
Text Label 10150 4750 2    60   ~ 0
LED7
$Comp
L +3V3 #PWR01
U 1 1 59D10208
P 10950 2550
F 0 "#PWR01" H 10950 2400 50  0001 C CNN
F 1 "+3V3" H 10950 2690 50  0000 C CNN
F 2 "" H 10950 2550 50  0001 C CNN
F 3 "" H 10950 2550 50  0001 C CNN
	1    10950 2550
	1    0    0    -1  
$EndComp
$Comp
L JACK_TRS_6PINS J3
U 1 1 59D116F0
P 3900 6150
F 0 "J3" H 3900 6550 50  0000 C CNN
F 1 "JACK_TRS_6PINS" H 3850 5850 50  0000 C CNN
F 2 "" H 4000 6000 50  0001 C CNN
F 3 "" H 4000 6000 50  0001 C CNN
	1    3900 6150
	1    0    0    -1  
$EndComp
$Comp
L JACK_TRS_6PINS J4
U 1 1 59D11791
P 3900 7200
F 0 "J4" H 3900 7600 50  0000 C CNN
F 1 "JACK_TRS_6PINS" H 3850 6900 50  0000 C CNN
F 2 "" H 4000 7050 50  0001 C CNN
F 3 "" H 4000 7050 50  0001 C CNN
	1    3900 7200
	1    0    0    -1  
$EndComp
Text Label 1150 1050 2    60   ~ 0
PC10
Text Label 1150 1150 2    60   ~ 0
PC12
Text Label 1150 1250 2    60   ~ 0
VDD
Text Label 1150 1350 2    60   ~ 0
BOOT0
Text Label 1150 1650 2    60   ~ 0
PA13
Text Label 1150 1750 2    60   ~ 0
PA14
Text Label 1150 1850 2    60   ~ 0
PA15
Text Label 1150 1950 2    60   ~ 0
GND
Text Label 1150 2050 2    60   ~ 0
PB7
Text Label 1150 2150 2    60   ~ 0
PC13
Text Label 1150 2250 2    60   ~ 0
PC14
Text Label 1150 2350 2    60   ~ 0
PC15
Text Label 1150 2450 2    60   ~ 0
PH0
Text Label 1150 2550 2    60   ~ 0
PH1
Text Label 1150 2650 2    60   ~ 0
VBAT
Text Label 1150 2750 2    60   ~ 0
PC2
Text Label 1150 2850 2    60   ~ 0
PC3
Text Label 2150 1050 0    60   ~ 0
PC11
Text Label 2150 1150 0    60   ~ 0
PD2
Text Label 2150 1250 0    60   ~ 0
E5V
Text Label 2150 1350 0    60   ~ 0
GND
NoConn ~ 2150 1450
Text Label 2150 1550 0    60   ~ 0
IOREF
Text Label 2150 1750 0    60   ~ 0
3V3
Text Label 2150 2050 0    60   ~ 0
GND
Text Label 2150 1950 0    60   ~ 0
GND
Text Label 2150 1850 0    60   ~ 0
5V
Text Label 2150 2150 0    60   ~ 0
VIN
NoConn ~ 2150 2250
Text Label 2150 2350 0    60   ~ 0
PA0
Text Label 2150 2450 0    60   ~ 0
PA1
Text Label 2150 2550 0    60   ~ 0
PA4
Text Label 2150 2650 0    60   ~ 0
PB0
Text Label 2150 2750 0    60   ~ 0
PC1
Text Label 2150 2850 0    60   ~ 0
PC0
Text Label 2750 1050 2    60   ~ 0
PC9
Text Label 2750 1150 2    60   ~ 0
PB8
Text Label 2750 1250 2    60   ~ 0
PB9
Text Label 2750 1350 2    60   ~ 0
AVDD
Text Label 2750 1450 2    60   ~ 0
GND
Text Label 2750 1550 2    60   ~ 0
PA5
Text Label 2750 1650 2    60   ~ 0
PA6
Text Label 2750 1750 2    60   ~ 0
PA7
Text Label 2750 1850 2    60   ~ 0
PB6
Text Label 2750 1950 2    60   ~ 0
PC7
Text Label 2750 2050 2    60   ~ 0
PA9
Text Label 2750 2150 2    60   ~ 0
PA8
Text Label 2750 2250 2    60   ~ 0
PB10
Text Label 2750 2350 2    60   ~ 0
PB4
Text Label 2750 2450 2    60   ~ 0
PB5
Text Label 2750 2550 2    60   ~ 0
PB3
Text Label 2750 2650 2    60   ~ 0
PA10
Text Label 2750 2750 2    60   ~ 0
PA2
Text Label 2750 2850 2    60   ~ 0
PA3
Text Label 3700 1050 0    60   ~ 0
PC8
Text Label 3700 1150 0    60   ~ 0
PC6
Text Label 3700 1250 0    60   ~ 0
PC5
Text Label 3700 1350 0    60   ~ 0
U5V
Text Label 3700 1550 0    60   ~ 0
PA12
Text Label 3700 1650 0    60   ~ 0
PA11
Text Label 3700 1750 0    60   ~ 0
PB12
Text Label 3700 1850 0    60   ~ 0
PB11
Text Label 3700 1950 0    60   ~ 0
GND
Text Label 3700 2050 0    60   ~ 0
PB2
Text Label 3700 2150 0    60   ~ 0
PB1
Text Label 3700 2550 0    60   ~ 0
AGND
Text Label 3700 2650 0    60   ~ 0
PC4
Text Label 3700 2250 0    60   ~ 0
PB15
Text Label 3700 2350 0    60   ~ 0
PB14
Text Label 3700 2450 0    60   ~ 0
PB13
NoConn ~ 1150 1450
NoConn ~ 1150 1550
Text Label 2150 1650 0    60   ~ 0
RESET
NoConn ~ 3700 1450
NoConn ~ 3700 2750
NoConn ~ 3700 2850
Text Label 8600 6350 0    60   ~ 0
PA2
Text Label 8600 6450 0    60   ~ 0
PA3
Text Label 7950 3150 2    60   ~ 0
PA7
Text Label 7950 2950 2    60   ~ 0
PA6
Text Label 8150 4250 2    60   ~ 0
PC4
Text Label 8150 4500 2    60   ~ 0
PC5
Text Label 8150 4750 2    60   ~ 0
PC6
Text Label 9400 5250 2    60   ~ 0
PC8
Text Label 8150 5000 2    60   ~ 0
PC7
Text Label 9400 5350 2    60   ~ 0
PC9
Text Label 9400 5550 2    60   ~ 0
PC11
Text Label 8550 1750 0    60   ~ 0
PC1
Text Label 8550 2950 0    60   ~ 0
PC3
Text Label 8550 2350 0    60   ~ 0
PC2
Text Label 7950 1150 2    60   ~ 0
PC0
Text Label 9400 5450 2    60   ~ 0
PC10
Text Label 9400 5650 2    60   ~ 0
PC12
Text Label 9400 5750 2    60   ~ 0
PC13
Text Label 9400 5850 2    60   ~ 0
PC14
Text Label 9400 5950 2    60   ~ 0
PC15
Text Notes 1750 650  0    120  ~ 24
Morpho Connectors
Text Label 10800 1550 0    60   ~ 0
U5V
Text Label 10800 1650 0    60   ~ 0
E5V
Text Label 9700 1600 3    60   ~ 0
VIN
Text Label 9900 1600 3    60   ~ 0
VDD
Text Label 9450 1600 3    60   ~ 0
VBAT
Text Label 8550 1150 0    60   ~ 0
PD2
$Comp
L 74LS373 U1
U 1 1 59D12BC3
P 10100 5750
F 0 "U1" H 10100 5750 50  0000 C CNN
F 1 "74LS373" H 10150 5400 50  0000 C CNN
F 2 "" H 10100 5750 50  0001 C CNN
F 3 "" H 10100 5750 50  0001 C CNN
	1    10100 5750
	1    0    0    -1  
$EndComp
Text Label 10800 5250 0    60   ~ 0
LED0
Text Label 10800 5350 0    60   ~ 0
LED1
Text Label 10800 5450 0    60   ~ 0
LED2
Text Label 10800 5550 0    60   ~ 0
LED3
Text Label 10800 5650 0    60   ~ 0
LED4
Text Label 10800 5750 0    60   ~ 0
LED5
Text Label 10800 5850 0    60   ~ 0
LED6
Text Label 10800 5950 0    60   ~ 0
LED7
Text Label 7950 1350 2    60   ~ 0
PB7
$Comp
L GND #PWR02
U 1 1 59D19A56
P 7200 1300
F 0 "#PWR02" H 7200 1050 50  0001 C CNN
F 1 "GND" H 7200 1150 50  0000 C CNN
F 2 "" H 7200 1300 50  0001 C CNN
F 3 "" H 7200 1300 50  0001 C CNN
	1    7200 1300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR03
U 1 1 59D1A0A6
P 7250 1900
F 0 "#PWR03" H 7250 1650 50  0001 C CNN
F 1 "GND" H 7250 1750 50  0000 C CNN
F 2 "" H 7250 1900 50  0001 C CNN
F 3 "" H 7250 1900 50  0001 C CNN
	1    7250 1900
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR04
U 1 1 59D1A2AE
P 7250 2500
F 0 "#PWR04" H 7250 2250 50  0001 C CNN
F 1 "GND" H 7250 2350 50  0000 C CNN
F 2 "" H 7250 2500 50  0001 C CNN
F 3 "" H 7250 2500 50  0001 C CNN
	1    7250 2500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR05
U 1 1 59D1A52E
P 7250 3100
F 0 "#PWR05" H 7250 2850 50  0001 C CNN
F 1 "GND" H 7250 2950 50  0000 C CNN
F 2 "" H 7250 3100 50  0001 C CNN
F 3 "" H 7250 3100 50  0001 C CNN
	1    7250 3100
	1    0    0    -1  
$EndComp
Text Label 1500 6700 3    60   ~ 0
PC8
Text Label 1600 6700 3    60   ~ 0
PC9
Text Label 1800 6700 3    60   ~ 0
PC11
Text Label 1700 6700 3    60   ~ 0
PC10
Text Label 1900 6700 3    60   ~ 0
PC12
Text Label 2000 6700 3    60   ~ 0
PC13
Text Label 2100 6700 3    60   ~ 0
PC14
Text Label 2200 6700 3    60   ~ 0
PC15
$Comp
L GND #PWR06
U 1 1 59D1D970
P 8650 5050
F 0 "#PWR06" H 8650 4800 50  0001 C CNN
F 1 "GND" H 8650 4900 50  0000 C CNN
F 2 "" H 8650 5050 50  0001 C CNN
F 3 "" H 8650 5050 50  0001 C CNN
	1    8650 5050
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR07
U 1 1 59D1E2D3
P 8800 3250
F 0 "#PWR07" H 8800 3000 50  0001 C CNN
F 1 "GND" H 8800 3100 50  0000 C CNN
F 2 "" H 8800 3250 50  0001 C CNN
F 3 "" H 8800 3250 50  0001 C CNN
	1    8800 3250
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR08
U 1 1 59D1E5C2
P 8800 2650
F 0 "#PWR08" H 8800 2400 50  0001 C CNN
F 1 "GND" H 8800 2500 50  0000 C CNN
F 2 "" H 8800 2650 50  0001 C CNN
F 3 "" H 8800 2650 50  0001 C CNN
	1    8800 2650
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR09
U 1 1 59D1E7E8
P 8800 2050
F 0 "#PWR09" H 8800 1800 50  0001 C CNN
F 1 "GND" H 8800 1900 50  0000 C CNN
F 2 "" H 8800 2050 50  0001 C CNN
F 3 "" H 8800 2050 50  0001 C CNN
	1    8800 2050
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR010
U 1 1 59D1E7F0
P 8800 1450
F 0 "#PWR010" H 8800 1200 50  0001 C CNN
F 1 "GND" H 8800 1300 50  0000 C CNN
F 2 "" H 8800 1450 50  0001 C CNN
F 3 "" H 8800 1450 50  0001 C CNN
	1    8800 1450
	1    0    0    -1  
$EndComp
Text Label 4150 -350 0    60   ~ 0
PA13
Text Label 4150 -250 0    60   ~ 0
PA14
Text Label 4150 -150 0    60   ~ 0
PA15
Text Label 4150 -1650 0    60   ~ 0
PA0
Text Label 4150 -1550 0    60   ~ 0
PA1
Text Label 4150 -1450 0    60   ~ 0
PA2
Text Label 4150 -1350 0    60   ~ 0
PA3
Text Label 4150 -1250 0    60   ~ 0
PA4
Text Label 4150 -850 0    60   ~ 0
PA8
Text Label 4150 -750 0    60   ~ 0
PA9
Text Label 4150 -650 0    60   ~ 0
PA10
Text Label 4150 -950 0    60   ~ 0
PA7
Text Label 4150 -450 0    60   ~ 0
PA12
Text Label 4150 -550 0    60   ~ 0
PA11
Text Label 4150 -1150 0    60   ~ 0
PA5
Text Label 4150 -1050 0    60   ~ 0
PA6
Text Label 3850 -550 0    60   ~ 0
PB11
Text Label 3850 -450 0    60   ~ 0
PB12
Text Label 3850 -350 0    60   ~ 0
PB13
Text Label 3850 -250 0    60   ~ 0
PB14
Text Label 3850 -150 0    60   ~ 0
PB15
Text Label 3850 -650 0    60   ~ 0
PB10
Text Label 4550 -1650 0    60   ~ 0
U5V
Text Label 4550 -1550 0    60   ~ 0
E5V
Text Label 4550 -1450 0    60   ~ 0
IOREF
Text Label 4550 -1350 0    60   ~ 0
RESET
Text Label 4900 -1650 0    60   ~ 0
VIN
Text Label 4900 -1450 0    60   ~ 0
5V
Text Label 4900 -1350 0    60   ~ 0
3V3
Text Label 4550 -1250 0    60   ~ 0
BOOT0
Text Label 4900 -1250 0    60   ~ 0
VDD
Text Label 4900 -1150 0    60   ~ 0
AVDD
Text Label 4550 -1150 0    60   ~ 0
AGND
Text Label 4700 -1050 0    60   ~ 0
GND
Text Label 3300 -1450 0    60   ~ 0
PD2
Text Label 3850 -1650 0    60   ~ 0
PB0
Text Label 3850 -1550 0    60   ~ 0
PB1
Text Label 3850 -1250 0    60   ~ 0
PB4
Text Label 3850 -1150 0    60   ~ 0
PB5
Text Label 3850 -1050 0    60   ~ 0
PB6
Text Label 3850 -950 0    60   ~ 0
PB7
Text Label 3850 -850 0    60   ~ 0
PB8
Text Label 3850 -750 0    60   ~ 0
PB9
Text Label 3850 -1450 0    60   ~ 0
PB2
Text Label 3850 -1350 0    60   ~ 0
PB3
Text Label 3550 -1650 0    60   ~ 0
PC0
Text Label 3550 -1550 0    60   ~ 0
PC1
Text Label 3550 -1450 0    60   ~ 0
PC2
Text Label 3550 -1350 0    60   ~ 0
PC3
Text Label 3550 -1250 0    60   ~ 0
PC4
Text Label 3550 -1150 0    60   ~ 0
PC5
Text Label 3550 -1050 0    60   ~ 0
PC6
Text Label 3550 -950 0    60   ~ 0
PC7
Text Label 3550 -850 0    60   ~ 0
PC8
Text Label 3550 -750 0    60   ~ 0
PC9
Text Label 3550 -550 0    60   ~ 0
PC11
Text Label 3550 -650 0    60   ~ 0
PC10
Text Label 3550 -450 0    60   ~ 0
PC12
Text Label 3550 -350 0    60   ~ 0
PC13
Text Label 3550 -250 0    60   ~ 0
PC14
Text Label 3550 -150 0    60   ~ 0
PC15
$Comp
L Q_NMOS_DGS Q1
U 1 1 59D25E22
P 2500 7300
F 0 "Q1" H 2700 7350 50  0000 L CNN
F 1 "Q_NMOS_DGS" H 2700 7250 50  0000 L CNN
F 2 "" H 2700 7400 50  0001 C CNN
F 3 "" H 2500 7300 50  0001 C CNN
	1    2500 7300
	-1   0    0    -1  
$EndComp
$Comp
L +3V3 #PWR011
U 1 1 59D26823
P 2150 7100
F 0 "#PWR011" H 2150 6950 50  0001 C CNN
F 1 "+3V3" H 2150 7240 50  0000 C CNN
F 2 "" H 2150 7100 50  0001 C CNN
F 3 "" H 2150 7100 50  0001 C CNN
	1    2150 7100
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR012
U 1 1 59D27B6D
P 2400 7550
F 0 "#PWR012" H 2400 7300 50  0001 C CNN
F 1 "GND" H 2400 7400 50  0000 C CNN
F 2 "" H 2400 7550 50  0001 C CNN
F 3 "" H 2400 7550 50  0001 C CNN
	1    2400 7550
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR013
U 1 1 59D29C47
P 650 6700
F 0 "#PWR013" H 650 6550 50  0001 C CNN
F 1 "+3V3" H 650 6840 50  0000 C CNN
F 2 "" H 650 6700 50  0001 C CNN
F 3 "" H 650 6700 50  0001 C CNN
	1    650  6700
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR014
U 1 1 59D2A408
P 1000 6800
F 0 "#PWR014" H 1000 6550 50  0001 C CNN
F 1 "GND" H 1000 6650 50  0000 C CNN
F 2 "" H 1000 6800 50  0001 C CNN
F 3 "" H 1000 6800 50  0001 C CNN
	1    1000 6800
	1    0    0    -1  
$EndComp
$Comp
L POT_TRIM RV1
U 1 1 59D2A797
P 1100 7250
F 0 "RV1" V 925 7250 50  0000 C CNN
F 1 "POT_TRIM" V 1000 7250 50  0000 C CNN
F 2 "" H 1100 7250 50  0001 C CNN
F 3 "" H 1100 7250 50  0001 C CNN
	1    1100 7250
	0    -1   -1   0   
$EndComp
$Comp
L +3V3 #PWR015
U 1 1 59D2A889
P 850 7200
F 0 "#PWR015" H 850 7050 50  0001 C CNN
F 1 "+3V3" H 850 7340 50  0000 C CNN
F 2 "" H 850 7200 50  0001 C CNN
F 3 "" H 850 7200 50  0001 C CNN
	1    850  7200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR016
U 1 1 59D2A8F4
P 1350 7300
F 0 "#PWR016" H 1350 7050 50  0001 C CNN
F 1 "GND" H 1350 7150 50  0000 C CNN
F 2 "" H 1350 7300 50  0001 C CNN
F 3 "" H 1350 7300 50  0001 C CNN
	1    1350 7300
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR017
U 1 1 59D30238
P 9200 1150
F 0 "#PWR017" H 9200 1000 50  0001 C CNN
F 1 "+5V" H 9200 1290 50  0000 C CNN
F 2 "" H 9200 1150 50  0001 C CNN
F 3 "" H 9200 1150 50  0001 C CNN
	1    9200 1150
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR018
U 1 1 59D3028C
P 9500 1150
F 0 "#PWR018" H 9500 1000 50  0001 C CNN
F 1 "+3V3" H 9500 1290 50  0000 C CNN
F 2 "" H 9500 1150 50  0001 C CNN
F 3 "" H 9500 1150 50  0001 C CNN
	1    9500 1150
	1    0    0    -1  
$EndComp
Text Label 9200 1150 3    60   ~ 0
5V
Text Label 9500 1150 3    60   ~ 0
3V3
Text Label 9750 1150 1    60   ~ 0
GND
$Comp
L GND #PWR019
U 1 1 59D31726
P 9750 1150
F 0 "#PWR019" H 9750 900 50  0001 C CNN
F 1 "GND" H 9750 1000 50  0000 C CNN
F 2 "" H 9750 1150 50  0001 C CNN
F 3 "" H 9750 1150 50  0001 C CNN
	1    9750 1150
	1    0    0    -1  
$EndComp
$Comp
L GNDA #PWR020
U 1 1 59D33DCE
P 10350 1150
F 0 "#PWR020" H 10350 900 50  0001 C CNN
F 1 "GNDA" H 10350 1000 50  0000 C CNN
F 2 "" H 10350 1150 50  0001 C CNN
F 3 "" H 10350 1150 50  0001 C CNN
	1    10350 1150
	1    0    0    -1  
$EndComp
Text Label 10350 1150 1    60   ~ 0
AGND
$Comp
L VDDA #PWR021
U 1 1 59D34F18
P 9200 1600
F 0 "#PWR021" H 9200 1450 50  0001 C CNN
F 1 "VDDA" H 9200 1750 50  0000 C CNN
F 2 "" H 9200 1600 50  0001 C CNN
F 3 "" H 9200 1600 50  0001 C CNN
	1    9200 1600
	1    0    0    -1  
$EndComp
Text Label 9200 1600 3    60   ~ 0
AVDD
$Comp
L +BATT #PWR022
U 1 1 59D37D34
P 9450 1600
F 0 "#PWR022" H 9450 1450 50  0001 C CNN
F 1 "+BATT" H 9450 1740 50  0000 C CNN
F 2 "" H 9450 1600 50  0001 C CNN
F 3 "" H 9450 1600 50  0001 C CNN
	1    9450 1600
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR023
U 1 1 59D380EC
P 9700 1600
F 0 "#PWR023" H 9700 1450 50  0001 C CNN
F 1 "VCC" H 9700 1750 50  0000 C CNN
F 2 "" H 9700 1600 50  0001 C CNN
F 3 "" H 9700 1600 50  0001 C CNN
	1    9700 1600
	1    0    0    -1  
$EndComp
$Comp
L VDD #PWR024
U 1 1 59D3885D
P 9900 1600
F 0 "#PWR024" H 9900 1450 50  0001 C CNN
F 1 "VDD" H 9900 1750 50  0000 C CNN
F 2 "" H 9900 1600 50  0001 C CNN
F 3 "" H 9900 1600 50  0001 C CNN
	1    9900 1600
	1    0    0    -1  
$EndComp
Text Label 7750 1150 2    60   ~ 0
LPTIM1_IN1
Text Label 7750 1350 2    60   ~ 0
LPTIM1_IN2
Text Label 7950 1750 2    60   ~ 0
PA8
Text Label 7950 1950 2    60   ~ 0
PA9
Text Label 7750 1750 2    60   ~ 0
TIM1_CH1
Text Label 7750 1950 2    60   ~ 0
TIM1_CH2
Text Label 7950 2550 2    60   ~ 0
PA1
Text Label 7950 2350 2    60   ~ 0
PA0
Text Label 7750 2350 2    60   ~ 0
TIM2_CH1
Text Label 7750 2550 2    60   ~ 0
TIM2_CH2
Text Label 7750 2950 2    60   ~ 0
TIM3_CH1
Text Label 7750 3150 2    60   ~ 0
TIM3_CH2
Text Label 1400 6700 3    60   ~ 0
PH0
Text Label 9400 6150 2    60   ~ 0
PH1
Text Label 1200 6700 3    60   ~ 0
PB1
Text Label 1300 6700 3    60   ~ 0
PB2
Text Label 5450 6100 0    60   ~ 0
PA4
Text Label 5000 7150 0    60   ~ 0
PA5
Text Notes 8850 6250 2    60   ~ 0
differential in\n
Text Label 2700 7300 0    60   ~ 0
PB8
Text Label 9400 6250 2    60   ~ 0
PB9
Text Label 1700 -350 0    60   ~ 0
PA13
Text Label 1700 -250 0    60   ~ 0
PA14
Text Label 1700 -150 0    60   ~ 0
PA15
Text Label 1700 -650 0    60   ~ 0
PA10
Text Label 1700 -450 0    60   ~ 0
PA12
Text Label 1700 -550 0    60   ~ 0
PA11
Text Label 1400 -450 0    60   ~ 0
PB12
Text Label 2100 -1650 0    60   ~ 0
U5V
Text Label 2100 -1550 0    60   ~ 0
E5V
Text Label 2100 -1450 0    60   ~ 0
IOREF
Text Label 2100 -1350 0    60   ~ 0
RESET
Text Label 2450 -1650 0    60   ~ 0
VIN
Text Label 2450 -1450 0    60   ~ 0
5V
Text Label 2450 -1350 0    60   ~ 0
3V3
Text Label 2100 -1250 0    60   ~ 0
BOOT0
Text Label 2450 -1250 0    60   ~ 0
VDD
Text Label 2450 -1150 0    60   ~ 0
AVDD
Text Label 2450 -1550 0    60   ~ 0
VBAT
Text Label 2100 -1150 0    60   ~ 0
AGND
Text Label 2250 -1050 0    60   ~ 0
GND
$Comp
L GNDA #PWR025
U 1 1 59EA9CA5
P 4350 6400
F 0 "#PWR025" H 4350 6150 50  0001 C CNN
F 1 "GNDA" H 4350 6250 50  0000 C CNN
F 2 "" H 4350 6400 50  0001 C CNN
F 3 "" H 4350 6400 50  0001 C CNN
	1    4350 6400
	1    0    0    -1  
$EndComp
$Comp
L GNDA #PWR026
U 1 1 59EA9F1B
P 4350 7450
F 0 "#PWR026" H 4350 7200 50  0001 C CNN
F 1 "GNDA" H 4350 7300 50  0000 C CNN
F 2 "" H 4350 7450 50  0001 C CNN
F 3 "" H 4350 7450 50  0001 C CNN
	1    4350 7450
	1    0    0    -1  
$EndComp
$Comp
L GNDA #PWR027
U 1 1 59EAA509
P 5200 6500
F 0 "#PWR027" H 5200 6250 50  0001 C CNN
F 1 "GNDA" H 5200 6350 50  0000 C CNN
F 2 "" H 5200 6500 50  0001 C CNN
F 3 "" H 5200 6500 50  0001 C CNN
	1    5200 6500
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR028
U 1 1 59EAAC6D
P 5200 5700
F 0 "#PWR028" H 5200 5550 50  0001 C CNN
F 1 "+3V3" H 5200 5840 50  0000 C CNN
F 2 "" H 5200 5700 50  0001 C CNN
F 3 "" H 5200 5700 50  0001 C CNN
	1    5200 5700
	1    0    0    -1  
$EndComp
$Comp
L GNDA #PWR029
U 1 1 59EABF50
P 4900 7550
F 0 "#PWR029" H 4900 7300 50  0001 C CNN
F 1 "GNDA" H 4900 7400 50  0000 C CNN
F 2 "" H 4900 7550 50  0001 C CNN
F 3 "" H 4900 7550 50  0001 C CNN
	1    4900 7550
	1    0    0    -1  
$EndComp
$Comp
L R R10
U 1 1 59EACEEC
P 5200 5900
F 0 "R10" V 5280 5900 50  0000 C CNN
F 1 "1M" V 5200 5900 50  0000 C CNN
F 2 "" V 5130 5900 50  0001 C CNN
F 3 "" H 5200 5900 50  0001 C CNN
	1    5200 5900
	1    0    0    -1  
$EndComp
$Comp
L R R11
U 1 1 59EAD0E8
P 5200 6300
F 0 "R11" V 5280 6300 50  0000 C CNN
F 1 "1M" V 5200 6300 50  0000 C CNN
F 2 "" V 5130 6300 50  0001 C CNN
F 3 "" H 5200 6300 50  0001 C CNN
	1    5200 6300
	1    0    0    -1  
$EndComp
$Comp
L R R9
U 1 1 59EAD1A2
P 4900 7350
F 0 "R9" V 4980 7350 50  0000 C CNN
F 1 "1M" V 4900 7350 50  0000 C CNN
F 2 "" V 4830 7350 50  0001 C CNN
F 3 "" H 4900 7350 50  0001 C CNN
	1    4900 7350
	1    0    0    -1  
$EndComp
$Comp
L C C2
U 1 1 59EADA8A
P 5000 6100
F 0 "C2" H 5025 6200 50  0000 L CNN
F 1 "1uF" H 5025 6000 50  0000 L CNN
F 2 "" H 5038 5950 50  0001 C CNN
F 3 "" H 5000 6100 50  0001 C CNN
	1    5000 6100
	0    1    1    0   
$EndComp
$Comp
L C C1
U 1 1 59EADBB7
P 4600 7150
F 0 "C1" H 4625 7250 50  0000 L CNN
F 1 "1uF" H 4625 7050 50  0000 L CNN
F 2 "" H 4638 7000 50  0001 C CNN
F 3 "" H 4600 7150 50  0001 C CNN
	1    4600 7150
	0    1    1    0   
$EndComp
Text Notes 9350 800  0    120  ~ 0
Power Symbols
Text Notes 7300 800  0    120  ~ 0
Rotary Encoders
Text Notes 7400 3900 0    120  ~ 0
Footswitches
Text Notes 9100 2150 0    120  ~ 0
Effect Indicator LED's
Text Notes 6050 5650 0    120  ~ 0
Audio I/O
Text Notes 6050 5750 0    60   ~ 0
Using stm32 ADC and DAC for prototype
Text Notes 1600 -1850 0    60   ~ 0
Unused pins
Text Notes 4050 -1900 0    60   ~ 0
All pins
Text Notes 750  5600 0    120  ~ 0
4x20 Character Display
$Comp
L STM32L476_Morpho U2
U 1 1 59EABB6E
P 2450 1800
F 0 "U2" H 2450 2700 60  0000 C CNN
F 1 "STM32L476_Morpho" H 2450 2800 60  0000 C CNN
F 2 "" H -850 3500 60  0001 C CNN
F 3 "" H -850 3500 60  0001 C CNN
	1    2450 1800
	1    0    0    -1  
$EndComp
NoConn ~ 4150 -650
NoConn ~ 4150 -550
NoConn ~ 4150 -450
NoConn ~ 4150 -350
NoConn ~ 4150 -250
NoConn ~ 4150 -150
NoConn ~ 3850 -450
NoConn ~ 4550 -1650
NoConn ~ 4550 -1550
NoConn ~ 4550 -1250
NoConn ~ 4550 -1350
NoConn ~ 4550 -1450
NoConn ~ 3850 -1350
NoConn ~ 3850 -1250
NoConn ~ 3850 -1150
NoConn ~ 3850 -650
NoConn ~ 3850 -550
NoConn ~ 3850 -1050
NoConn ~ 3850 -350
NoConn ~ 3850 -250
NoConn ~ 3850 -150
NoConn ~ 3850 -1650
NoConn ~ 4150 -1450
NoConn ~ 4150 -1350
Text Label 4900 -1550 0    60   ~ 0
VBAT
$Comp
L PWR_FLAG #FLG030
U 1 1 59EB5808
P 10000 1150
F 0 "#FLG030" H 10000 1225 50  0001 C CNN
F 1 "PWR_FLAG" H 10000 1300 50  0000 C CNN
F 2 "" H 10000 1150 50  0001 C CNN
F 3 "" H 10000 1150 50  0001 C CNN
	1    10000 1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	10850 2650 10950 2650
Wire Wire Line
	10550 2650 10500 2650
Wire Wire Line
	10200 2650 10150 2650
Wire Wire Line
	10850 2950 10950 2950
Wire Wire Line
	10950 2550 10950 4750
Wire Wire Line
	10550 2950 10500 2950
Wire Wire Line
	10200 2950 10150 2950
Wire Wire Line
	10950 3250 10850 3250
Wire Wire Line
	10550 3250 10500 3250
Wire Wire Line
	10200 3250 10150 3250
Wire Wire Line
	10950 3550 10850 3550
Wire Wire Line
	10550 3550 10500 3550
Wire Wire Line
	10200 3550 10150 3550
Wire Wire Line
	10950 3850 10850 3850
Wire Wire Line
	10550 3850 10500 3850
Wire Wire Line
	10200 3850 10150 3850
Wire Wire Line
	10950 4150 10850 4150
Wire Wire Line
	10550 4150 10500 4150
Wire Wire Line
	10200 4150 10150 4150
Wire Wire Line
	10950 4450 10850 4450
Wire Wire Line
	10550 4450 10500 4450
Wire Wire Line
	10200 4450 10150 4450
Wire Wire Line
	10950 4750 10850 4750
Wire Wire Line
	10550 4750 10500 4750
Wire Wire Line
	10200 4750 10150 4750
Connection ~ 10950 2650
Wire Wire Line
	7950 1150 7750 1150
Wire Wire Line
	7950 1350 7750 1350
Wire Wire Line
	7950 1750 7750 1750
Wire Wire Line
	7950 1950 7750 1950
Wire Wire Line
	7950 3150 7750 3150
Wire Wire Line
	7950 2950 7750 2950
Wire Wire Line
	7950 2550 7750 2550
Wire Wire Line
	7950 2350 7750 2350
Wire Wire Line
	7200 1250 7950 1250
Wire Wire Line
	7250 1900 7250 1850
Wire Wire Line
	7250 1850 7950 1850
Wire Wire Line
	7250 2500 7250 2450
Wire Wire Line
	7250 2450 7950 2450
Wire Wire Line
	7250 3100 7250 3050
Wire Wire Line
	7250 3050 7950 3050
Wire Wire Line
	8650 5000 8550 5000
Wire Wire Line
	8650 4750 8550 4750
Connection ~ 8650 5000
Connection ~ 8650 4750
Wire Wire Line
	8550 4250 8650 4250
Wire Wire Line
	8550 3150 8800 3150
Wire Wire Line
	8800 3150 8800 3250
Wire Wire Line
	8550 2550 8800 2550
Wire Wire Line
	8800 2550 8800 2650
Wire Wire Line
	8550 1950 8800 1950
Wire Wire Line
	8800 1950 8800 2050
Wire Wire Line
	8550 1350 8800 1350
Wire Wire Line
	8800 1350 8800 1450
Wire Wire Line
	2300 6700 2300 7150
Wire Wire Line
	2400 6700 2400 7100
Wire Wire Line
	2150 7100 2150 7150
Wire Wire Line
	2150 7150 2300 7150
Wire Wire Line
	2400 7550 2400 7500
Wire Wire Line
	900  6700 900  6750
Wire Wire Line
	900  6750 650  6750
Wire Wire Line
	650  6750 650  6700
Wire Wire Line
	1000 6800 1000 6700
Wire Wire Line
	1100 7100 1100 6700
Wire Wire Line
	850  7200 850  7250
Wire Wire Line
	850  7250 950  7250
Wire Wire Line
	1250 7250 1350 7250
Wire Wire Line
	1350 7250 1350 7300
Wire Notes Line
	500  5400 9000 5400
Wire Notes Line
	8950 450  8950 6550
Wire Notes Line
	8950 1900 11250 1900
Wire Wire Line
	8550 4500 8650 4500
Connection ~ 8650 4500
Wire Wire Line
	4350 6150 4300 6150
Wire Wire Line
	4350 6050 4350 6150
Wire Wire Line
	4350 6050 4300 6050
Wire Wire Line
	4300 5950 4350 5950
Wire Wire Line
	4350 5950 4350 5850
Wire Wire Line
	4350 5850 4300 5850
Wire Wire Line
	4300 6350 4350 6350
Wire Wire Line
	4350 6250 4350 6400
Wire Wire Line
	4350 6250 4300 6250
Wire Wire Line
	4300 7400 4350 7400
Wire Wire Line
	4350 7300 4350 7450
Wire Wire Line
	4350 7300 4300 7300
Wire Wire Line
	4350 7200 4300 7200
Wire Wire Line
	4350 7100 4350 7200
Wire Wire Line
	4350 7100 4300 7100
Wire Wire Line
	4300 7000 4350 7000
Wire Wire Line
	4350 7000 4350 6900
Wire Wire Line
	4350 6900 4300 6900
Wire Wire Line
	4350 6100 4850 6100
Connection ~ 4350 6100
Connection ~ 4350 6350
Connection ~ 4350 7400
Wire Wire Line
	5200 6500 5200 6450
Wire Wire Line
	5150 6100 5450 6100
Wire Wire Line
	5200 6050 5200 6150
Connection ~ 5200 6100
Wire Wire Line
	5200 5750 5200 5700
Wire Wire Line
	4450 7150 4350 7150
Connection ~ 4350 7150
Wire Wire Line
	4750 7150 5000 7150
Wire Wire Line
	4900 7550 4900 7500
Wire Wire Line
	4900 7150 4900 7200
Connection ~ 4900 7150
Wire Wire Line
	7200 1250 7200 1300
Wire Wire Line
	8650 4250 8650 5050
Wire Notes Line
	8950 3550 7050 3550
Wire Notes Line
	7050 450  7050 5400
Wire Notes Line
	3250 7800 3250 5400
Connection ~ 10950 2950
Connection ~ 10950 3250
Connection ~ 10950 3550
Connection ~ 10950 4150
Connection ~ 10950 4450
Wire Notes Line
	4200 3100 4200 450 
Wire Notes Line
	500  3100 4200 3100
Connection ~ 10950 3850
Wire Wire Line
	9750 1150 10000 1150
$EndSCHEMATC
