package NMEA.TalkerIDs is

   --  NMEA sentences do, however, include a "talker ID" a two-character prefix that
   --  identifies the type of the transmitting unit.
   --  By far the most common talker ID is "GP",
   --  identifying a generic GPS, but all of the following are well known:

   --  Common talker IDs
   subtype TalkerId is String (1 .. 2);

   --  LC - Loran-C is a marine navigation system run by the U.S. government,
   --  which is planning to shut it down in favor of GPS.
   --  Some non-Loran devices emit GLL but use this talker ID for
   --  backward-compatibility reasons, so it may outlast the actual Loran system.
   --  II - II is emitted by the NMEA interfaces of several widely-used lines
   --  of marine-navigation electronics.
   --  One is the AutoHelm system by Raymarine; see also [SEATALK]
   --  for the native protocol of these devices.



   --  Until the U.S. Coast Guard terminated the Omega Navigation System in 1997,
   --  another common talker prefix was "OM" for
   --  an Omega Navigation System receiver.
   --  Here is a more complete list of talker ID prefixes.
   --  Most are not relevant to GPS systems.
   --  Note that talker IDs made obsolete by newer revisions of the standards
   --  may still be emitted by older devices.
   --  Support for them may be present in the GPSD project.


   Talker_AB : constant TalkerId := "AB"; -- Independent AIS Base Station
   Talker_AD : constant TalkerId := "AD"; -- Dependent AIS Base Station
   Talker_AG : constant TalkerId := "AG"; -- Autopilot - General
   Talker_AP : constant TalkerId := "AP"; -- Autopilot - Magnetic
   Talker_BN : constant TalkerId := "BN"; -- Bridge navigational watch alarm system
   Talker_CC : constant TalkerId := "CC"; -- Computer - Programmed Calculator (obsolete)
   Talker_CD : constant TalkerId := "CD"; -- Communications - Digital Selective Calling (DSC)
   Talker_CM : constant TalkerId := "CM"; -- Computer - Memory Data (obsolete)
   Talker_CS : constant TalkerId := "CS"; -- Communications - Satellite
   Talker_CT : constant TalkerId := "CT"; -- Communications - Radio-Telephone (MF/HF)
   Talker_CV : constant TalkerId := "CV"; -- Communications - Radio-Telephone (VHF)
   Talker_CX : constant TalkerId := "CX"; -- Communications - Scanning Receiver
   Talker_DE : constant TalkerId := "DE"; -- DECCA Navigation (obsolete)
   Talker_DF : constant TalkerId := "DF"; -- Direction Finder
   Talker_DU : constant TalkerId := "DU"; -- Duplex repeater station
   Talker_EC : constant TalkerId := "EC"; -- Electronic Chart Display & Information System (ECDIS)
   Talker_EP : constant TalkerId := "EP"; -- Emergency Position Indicating Beacon (EPIRB)
   Talker_ER : constant TalkerId := "ER"; -- Engine Room Monitoring Systems
   Talker_GP : constant TalkerId := "GP"; -- Global Positioning System (GPS)
   Talker_HC : constant TalkerId := "HC"; -- Heading - Magnetic Compass
   Talker_HE : constant TalkerId := "HE"; -- Heading - North Seeking Gyro
   Talker_HN : constant TalkerId := "HN"; -- Heading - Non North Seeking Gyro
   Talker_II : constant TalkerId := "II"; -- Integrated Instrumentation
   Talker_IN : constant TalkerId := "IN"; -- Integrated Navigation
   Talker_LA : constant TalkerId := "LA"; -- Loran A (obsolete)
   Talker_LC : constant TalkerId := "LC"; -- Loran C (obsolete)
   Talker_MP : constant TalkerId := "MP"; -- Microwave Positioning System (obsolete)
   Talker_NL : constant TalkerId := "NL"; -- Navigation light controller
   Talker_OM : constant TalkerId := "OM"; -- OMEGA Navigation System (obsolete)
   Talker_OS : constant TalkerId := "OS"; -- Distress Alarm System (obsolete)
   Talker_RA : constant TalkerId := "RA"; -- RADAR and/or ARPA
   Talker_SD : constant TalkerId := "SD"; -- "Sounder
   Talker_SN : constant TalkerId := "SN"; -- "Electronic Positioning System
   Talker_SS : constant TalkerId := "SS"; -- "Sounder
   Talker_TI : constant TalkerId := "TI"; -- Turn Rate Indicator
   Talker_TR : constant TalkerId := "TR"; -- TRANSIT Navigation System

   Talker_UP : constant TalkerId := "UP"; -- Microprocessor controller
   Talker_VD : constant TalkerId := "VD"; -- Velocity Sensor
   Talker_DM : constant TalkerId := "DM"; -- Velocity Sensor
   Talker_VW : constant TalkerId := "VW"; -- Velocity Sensor
   Talker_WI : constant TalkerId := "WI"; -- Weather Instruments
   Talker_YC : constant TalkerId := "YC"; -- Transducer - Temperature (obsolete)
   Talker_YD : constant TalkerId := "YD"; -- "Transducer - Displacement
   Talker_YF : constant TalkerId := "YF"; -- Transducer - Frequency (obsolete)
   Talker_YL : constant TalkerId := "YL"; -- Transducer - Level (obsolete)
   Talker_YP : constant TalkerId := "YP"; -- Transducer - Pressure (obsolete)
   Talker_YR : constant TalkerId := "YR"; -- Transducer - Flow Rate (obsolete)
   Talker_YT : constant TalkerId := "YT"; -- Transducer - Tachometer (obsolete)
   Talker_YV : constant TalkerId := "YV"; -- Transducer - Volume (obsolete)
   Talker_YX : constant TalkerId := "YX"; -- Transducer
   Talker_ZA : constant TalkerId := "ZA"; -- Timekeeper - Atomic Clock
   Talker_ZC : constant TalkerId := "ZC"; -- Timekeeper - Chronometer
   Talker_ZQ : constant TalkerId := "ZQ"; -- Timekeeper - Quartz
   Talker_ZV : constant TalkerId := "ZV"; -- Timekeeper - Radio Update

end NMEA.TalkerIDs;
