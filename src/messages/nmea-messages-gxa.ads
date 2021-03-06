--  GXA - TRANSIT Position - Latitude/Longitude
--  Location and time of TRANSIT fix at waypoint
--          1         2       3 4        5 6    7 8
--          |         |       | |        | |    | |
--   $--GXA,hhmmss.ss,llll.ll,a,yyyyy.yy,a,c--c,X*hh<CR><LF>
--  Field Number:
--  1. UTC of position fix 
--  2. Latitude 
--  3. East or West 
--  4. Longitude 
--  5. North or South 
--  6. Waypoint ID 
--  7. Satelite number 
--  8. Checksum 
--  (The GXA sentence is obsolete as of 3.01.)

package NMEA.Messages.GXA is
   type GXA_Message is new Message with record
      UTC_of_position_fix : NMEA_Dummy_Field;
      Latitude : NMEA_Dummy_Field;
      East_or_West : NMEA_Dummy_Field;
      Longitude : NMEA_Dummy_Field;
      North_or_South : NMEA_Dummy_Field;
      Waypoint_ID : NMEA_Dummy_Field;
      Satelite_number : NMEA_Dummy_Field;
   end record;

   overriding function Image (This : GXA_Message) return String;

private
   overriding
   function Constructor
     (Stream : not null access Ada.Streams.Root_Stream_Type'Class)
      return GXA_Message;
end NMEA.Messages.GXA;
