--  BWR - Bearing and Distance to Waypoint - Rhumb Line
--                                                     11
--          1         2       3 4        5 6   7 8   9 10  | 12   13
--          |         |       | |        | |   | |   | |   | |    |
--   $--BWR,hhmmss.ss,llll.ll,a,yyyyy.yy,a,x.x,T,x.x,M,x.x,N,c--c*hh<CR><LF>
--  Field Number:
--  1. UTCTime
--  2. Waypoint Latitude
--  3. N = North, S = South
--  4. Waypoint Longitude
--  5. E = East, W = West
--  6. Bearing, True
--  7. T = True
--  8. Bearing, Magnetic
--  9. M = Magnetic
--  10. Nautical Miles
--  11. N = Nautical Miles
--  12. Waypoint ID
--  13. Checksum

package NMEA.Messages.BWR is
   type BWR_Message is new Message with record
      Time            : UTC_Time_Type;
      Waypoint_Latitude  : NMEA_Dummy_Field;
      N_North_S_South    : NMEA_Dummy_Field;
      Waypoint_Longitude : NMEA_Dummy_Field;
      E_East_W_West      : NMEA_Dummy_Field;
      Bearing_True       : NMEA_Dummy_Field;
      T_True             : NMEA_Dummy_Field;
      Bearing_Magnetic   : NMEA_Dummy_Field;
      M_Magnetic         : NMEA_Dummy_Field;
      Nautical_Miles     : NMEA_Dummy_Field;
      N_Nautical_Miles   : NMEA_Dummy_Field;
      Waypoint_ID        : NMEA_Dummy_Field;
   end record;

   overriding function Image (This : BWR_Message) return String;

private
   overriding
   function Constructor
     (Stream : not null access Ada.Streams.Root_Stream_Type'Class)
      return BWR_Message;
end NMEA.Messages.BWR;
