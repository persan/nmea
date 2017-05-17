--  GTD - Geographic Location in Time Differences
--           1   2   3   4   5  6
--           |   |   |   |   |  |
--   $--GTD,x.x,x.x,x.x,x.x,x.x*hh<CR><LF>
--  Field Number:
--  1. time difference
--  2. time difference
--  3. time difference
--  4. time difference
--  5. time difference
--  n. Checksum

package NMEA.Messages.GTD is
   type GTD_Message is new Message with record
      time_difference : NMEA_Dummy_Field;
      time_difference6 : NMEA_Dummy_Field;
      time_difference7 : NMEA_Dummy_Field;
      time_difference8 : NMEA_Dummy_Field;
      time_difference9 : NMEA_Dummy_Field;
   end record;

   overriding function Image (This : GTD_Message) return String;

private
   overriding
   function Constructor
     (Stream : not null access Ada.Streams.Root_Stream_Type'Class)
      return GTD_Message;
end NMEA.Messages.GTD;
