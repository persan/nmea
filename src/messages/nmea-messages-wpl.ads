--  WPL - Waypoint Location
--          1       2 3        4 5    6
--          |       | |        | |    |
--   $--WPL,llll.ll,a,yyyyy.yy,a,c--c*hh<CR><LF>
--  Field Number:
--  1. Latitude
--  2. N or S (North or South)
--  3. Longitude
--  4. E or W (East or West)
--  5. Waypoint name
--  6. Checksum

package NMEA.Messages.WPL is
   type WPL_Message is new Message with record
      Latitude              : NMEA_Dummy_Field;
      N_Or_S_North_Or_South : NMEA_Dummy_Field;
      Longitude             : NMEA_Dummy_Field;
      E_Or_W_East_Or_West   : NMEA_Dummy_Field;
      Waypoint_Name         : NMEA_Dummy_Field;
   end record;

   overriding function Image (This : WPL_Message) return String;

private
   overriding
   function Constructor
     (Stream : not null access Ada.Streams.Root_Stream_Type'Class)
      return WPL_Message;
end NMEA.Messages.WPL;
