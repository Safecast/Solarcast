# Geiger module for Solarcast
Geiger module is a standalone sensor unit that is a part of the Solarcast assembly and houses two Geiger tubes and a temperature and humidity sensor along with an optional BLE processor module.

## Design specification
* BLE module NRF [nRF52832 ANT](https://www.tindie.com/products/hnhoan/nrf52832-ant-bluetooth-le-arm-cortex-m4f-30-io/)
* Geiger pancake sensor (may be a stack of two)
* Geiger gamma compensated tube sensor
* Temperature and humidity sensor BME260 sensor (I2C SDO high 0x77)
* 5V power supply via USB connector (no USB data)
* Outdoor enclosure [PNR-2603](http://eu.mouser.com/ProductDetail/Bud-Industries/PNR-2603/?qs=sGAEpiMZZMsrGrAVj6eTvTO11XxqWC53gJbMy7TDIp4%3d)
* BLE module LED-RED

## Extended details
* Waterproof [USB connector](http://eu.mouser.com/ProductDetail/Conxall-Switchcraft/DCP-USBCB-SC/?qs=sGAEpiMZZMulM8LPOQ%252byk0tOUVtDtVQ0KVOITCuLB%252bPJPE9H7T7ELA%3d%3d
) (data lines carry SWDIO & SWCLK signals or Geiger 1 and Geiger 2 output signals, configuration depending via jumper)
* Internal 3V3 regulator
* 2pcs iRover HV board, stacked

## Connection details
The devices have the following connection details:

*  nRF52832 module
 * Pin 3: P0.23	LED-RED
 * Pin 5: P0.25	TWI-SDA
 * Pin 6: P0.26 TWI-SCL
 * Pin 7: P0.28	GEIGER0
 * Pin 8: P0.29 GEIGER1
 * Pin 18: 3.3V
 * Pin 19: GND
 * Pin 21: SWCLK/TCK
 * Pin 22: SWDIO/TMS

## Board layout
The PCB board has the two tubes mounted on one side with cables passing though and being connected directly to iRover boards on the other side. These boards are placed one next to the other. BLE module is placed somewhere along the edge, USB connector is on the short edge opposite to the side where the cutout for cables is.
