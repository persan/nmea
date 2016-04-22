--  GGA - Global Positioning System Fix Data
--  This is one of the sentences commonly emitted by GPS units.
--  Time, Position and fix related data for a GPS receiver.
--                                                        11
--          1         2       3 4        5 6 7  8   9  10 |  12 13  14   15
--          |         |       | |        | | |  |   |   | |   | |   |    |
--   $--GGA,hhmmss.ss,llll.ll,a,yyyyy.yy,a,x,xx,x.x,x.x,M,x.x,M,x.x,xxxx*hh<CR><LF>
--  Field Number:
--  1. Universal Time Coordinated (UTC)
--  2. Latitude
--  3. N or S (North or South)
--  4. Longitude
--  5. E or W (East or West)
--  6. GPS Quality Indicator,
--  0 - fix not available,
--  1 - GPS fix,
--  2 - Differential GPS fix (values above 2 are 2.3 features)
--  3 = PPS fix
--  4 = Real Time Kinematic
--  5 = Float RTK
--  6 = estimated (dead reckoning)
--  7 = Manual input mode
--  8 = Simulation mode
--  7. Number of satellites in view, 00 - 12
--  8. Horizontal Dilution of precision (meters)
--  9. Antenna Altitude above/below mean-sea-level (geoid) (in meters)
--  10. Units of antenna altitude, meters
--  11. Geoidal separation, the difference between the WGS-84 earth ellipsoid and mean-sea-level (geoid), "-" means mean-sea-level below ellipsoid
--  12. Units of geoidal separation, meters
--  13. Age of differential GPS data, time in seconds since last SC104 type 1 or 9 update, null field when DGPS is not used
--  14. Differential reference station ID, 0000-1023
--  15. Checksum

with Ada.Streams;
package NMEA.Messages.GGA is
   type GGA_Message is new Message with record
      Time                                  : UTC_Time_Type;
      Latitude                              : Latitude_Type;
      Longitude                             : Longitude_Type;
      Fix_Quality                           : Fix_Quality_Type;
      Number_Of_Satelites                   : NMEA_Integer;
      Horizontal_Dilution_Of_Precision      : UTC_Date_Type;
      Altitude                              : Nmea_Hight;
      Height_Of_Geoid_Above_WGS84_Ellipsoid : Nmea_Hight;
      Time_Since_Last_DGPS_Update           : NMEA_Seconds;
      DGPS_Reference_Station_Id             : NMEA_String (4);
   end record;

   overriding function Image (This : GGA_Message) return String;

private
   overriding
   function Constructor
     (Stream : not null access Ada.Streams.Root_Stream_Type'Class)
  return GGA_Message;
end NMEA.Messages.GGA;
