#Air Module testing:

* U2 nRF52832:
	* measure 3.3V on pins 8,9,18
	* check if programming OK
	
* U4 TPS2064:
	* measure 5V on pin 2
	* set EN_PLANT='0', measure 0V on pin 7
	* set EN_PLANT='1', measure 5V on pin 7
	* set EN_ALPHA='0', measure 0V on pin 6
	* set EN_ALPHA='1', measure 5V on pin 6
	* measure 3.3V on pins 5,8
	
* U5 BME280:
	* measure 3.3V on pins 2,5,6,8
	* I2C scan
	
* U6 TPS79133:
	* measure 3.3V on pin 5
	
* P1 USB_OTG:
	* check if programming OK
	* measure 5V on pin 1
	
* J2 ARM_SWD_SMALL:
	* check if programming OK
	
* J1 IDC12:
	* measure 5V on pin 1
	* I2C scan
	* check SPI
	* check UART
	
* U1 Alphasense_OPC-N2:
	* measure 5V on pin 1
	* check SPI communication
	
* U3 Plantower_PM2.5_PMS_5003:
	* measure 5V on pin 1
	* check UART communication
	* I2C scan
