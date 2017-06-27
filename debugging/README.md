# Debugging problems on Solarcast units
During build time some errors have been encountered int he constructions/assembly process, hereby we document them such that they can be recognized and solved. One can best approach this using command `check` in the Slack interface system.

## ENV sensor failure - BME0

```
Measurement Counts:
  Bat     45  (3.88-3.98V, -763.3 to 9.4mA, 74-87%)
  Env      0
  Enc      6  (14.6-30.7C, 22.2-72.4%, 982-985Pa)
  Pms     91  (0-12pm1, 0-20pm2.5, 0-21pm10)
  Opc     91  [1 OOR 2017-06-26T05:28:55Z]  (1.1211-127.0359pm1, 1.9325-232.8186pm2.5, 3.7093-1118.9633pm10)
  LndU   113  (30-89cpm)
  LndC   113  (29-52cpm)
```

 Known solutions:
  * Resolder sensor
  * Swap sensor
  
## ENC sensor failure - BME1
The check output looks something like this, no measurement for Enc received.

```
Measurement Counts:
  Bat     45  (3.89-3.94V, -381.3 to 10.0mA, 63-68%)
  Env     65  (13.0-38.1C, 1.3-103.0%, 980-984Pa)
  Enc      0
  Pms     65  (0-12pm1, 0-20pm2.5, 0-22pm10)
  Opc     65  (0.7475-134.6814pm1, 0.9859-219.7148pm2.5, 3.4837-474.3000pm10)
  LndU   101  (33-90cpm)
  LndC   101  (29-53cpm)
```
  
 Known solutions:
  * Resolder sensor
  * Swap sensor
  
## Fona failure
FONA 3G module can fail in a number of ways, though the check mechanism we can see this as follows:

* upload gaps greater then 1-2h
* Device errors:
  * Fona power
  * Fona antenna

```
Inter-upload Gaps: (<1m to 11h 10m)
  6-12hr    9% (1)
  1-2hr    82% (9)
    1-4m    9% (1)

Connection errors:
  None

Measurement Counts:
  Bat     29  (3.89-3.91V, -51.3 to 10.8mA, 21-31%)
  Env     50  [1 OOR 2017-06-25T09:45:55Z]  (13.3-38.6C, -0.7-100.4%, 981-985Pa)
  Enc      5  (13.7-36.0C, 12.7-89.4%, 981-985Pa)
  Pms     50  (2-13pm1, 2-21pm2.5, 2-24pm10)
  Opc     50  [1 OOR 2017-06-26T05:35:53Z]  (1.8324-133.7118pm1, 2.4482-258.5451pm2.5, 4.1061-1731.0664pm10)
  LndU    64  (32-90cpm)
  LndC    64  (29-51cpm)

Device errors:
  Fona Power   2
  Fona Antenna 291
  ```
  
Known solutions:
 * Replace antenna, either bad uFL connector or damaged connetion of coax at the antenna
 * Crimp uFL connector just a bit to give it a better contact
