#Communications Module testing:

* U1 nRF52832:
  * measure 3.3V on pins 18
  * check if programming OK

* U4 PWR_CONN:
  * measure 5V on pin 3
  * measure 3.3V on pin 5
  * measure battery voltage on pin 7
  * check ENABLE-5V
  * check ENABLE-VBAT
  * I2C scan
  
* U3 TPS2064:
  * measure 5V on pin 2
  * measure 3.3V on pins 5,8
  * check ENABLE-RESERV, measure 5V on pin 6
  * check ENABLE-BACKUP, measure 5V on pin 7

* U5 TPS2064:
  * measure 5V on pin 2
  * measure 3.3V on pins 5,8
  * check ENABLE-RESERV, measure 5V on pin 6
  * check ENABLE-BACKUP, measure 5V on pin 7
  
* J1 IDC12:
  * measure 5V on pin 1
  * I2C scan
  * check SPI
  * check UART
 
* P2 USB_A:
  * check if programming OK
  * check pulses on GEIGER0,GEIGER1

* P3,P4 USB_A:
  * check if programming OK
  * I2C scan
  
* U7,U9 I2C_connector:
  * check 3.3V on pin 2
  * I2C scan
  
* U8 BME280:
  * check 3.3V on pins 2,6,8
  * I2C scan
  
* U10 LIS3DH_breakout:
  * check 3.3V on pin 1
  * I2C scan
  * check ACC_INT
  
* U6 TPS2064:
  * measure 3.3V on pins 2,5,8
  * check ENABLE-TWI, measure 3.3V on pin 7

* U11 FONA_3G:
  * check VBAT on pin 2
  * check 3.3V on pin 4
  * check UART

* U13 RockBLOCK:
  * check 5V on pins 4,8
  * check UART
  * check 3.3V on pin 12

* U16 FGPMMOPA6H GPS:
  * check 3.3V on pin 1
  * check VBAT on pin 4
  * check LED D3 blinking
  * check UART
  
* U19 Gateway Module LORA:
  * check 5V on pins 2,4
  * check UART

* U14,U18 SN74LV4052A:
  * check UART multiplexing

* U20 TPS2064:
  * measure VBAT on pin 2
  * measure 3.3V on pins 5,8
  * check ENABLE-FONA, measure VBAT on pin 7
  
* U12 TPS2064:
  * measure 3.3V on pin 2
  * measure 3.3V on pins 5,8
  * check ENABLE-FONA, measure 3.3V on pin 7
  * check ENABLE-GPS, measure 3.3V on pin 6
  
* U15 TPS2064:
  * measure 5V on pin 2
  * measure 3.3V on pins 5,8
  * check ENABLE-ROCK, measure 5V on pin 7
  * check ENABLE-LORA, measure 5V on pin 6
