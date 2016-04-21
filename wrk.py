# -*- coding: utf-8 -*-
s="""AB,Independent AIS Base Station
AD,Dependent AIS Base Station
AG,Autopilot - General
AP,Autopilot - Magnetic
BN,Bridge navigational watch alarm system
CC,Computer - Programmed Calculator (obsolete)
CD,Communications - Digital Selective Calling (DSC)
CM,Computer - Memory Data (obsolete)
CS,Communications - Satellite
CT,Communications - Radio-Telephone (MF/HF)
CV,Communications - Radio-Telephone (VHF)
CX,Communications - Scanning Receiver
DE,DECCA Navigation (obsolete)
DF,Direction Finder
DU,Duplex repeater station
EC,Electronic Chart Display & Information System (ECDIS)
EP,Emergency Position Indicating Beacon (EPIRB)
ER,Engine Room Monitoring Systems
GP,Global Positioning System (GPS)
HC,Heading - Magnetic Compass
HE,Heading - North Seeking Gyro
HN,Heading - Non North Seeking Gyro
II,Integrated Instrumentation
IN,Integrated Navigation
LA,Loran A (obsolete)
LC,Loran C (obsolete)
MP,Microwave Positioning System (obsolete)
NL,Navigation light controller
OM,OMEGA Navigation System (obsolete)
OS,Distress Alarm System (obsolete)
RA,RADAR and/or ARPA
SD,"Sounder, Depth"
SN,"Electronic Positioning System, other/general"
SS,"Sounder, Scanning"
TI,Turn Rate Indicator
TR,TRANSIT Navigation System
U#,# is a digit 0 … 9; User Configured
UP,Microprocessor controller
VD,"Velocity Sensor, Doppler, other/general"
DM,"Velocity Sensor, Speed Log, Water, Magnetic"
VW,"Velocity Sensor, Speed Log, Water, Mechanical"
WI,Weather Instruments
YC,Transducer - Temperature (obsolete)
YD,"Transducer - Displacement, Angular or Linear (obsolete)"
YF,Transducer - Frequency (obsolete)
YL,Transducer - Level (obsolete)
YP,Transducer - Pressure (obsolete)
YR,Transducer - Flow Rate (obsolete)
YT,Transducer - Tachometer (obsolete)
YV,Transducer - Volume (obsolete)
YX,Transducer
ZA,Timekeeper - Atomic Clock
ZC,Timekeeper - Chronometer
ZQ,Timekeeper - Quartz
ZV,"Timekeeper - Radio Update, WWV or WWVH""".split("\n")

for i in s:
    d=i.split(",")
    print """Talker_%s : constant TalkerId := "%s"; -- %s""" %  (d[0],d[0],d[1])

