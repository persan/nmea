--  RSD - RADAR System Data
--                                                          14
--          1   2   3   4   5   6   7   8   9   10  11 12 13|
--          |   |   |   |   |   |   |   |   |   |   |   | | |
--   $--RSD,x.x,x.x,x.x,x.x,x.x,x.x,x.x,x.x,x.x,x.x,x.x,a,a*hh<CR><LF>
--  (Some fields are missing from this description.)
--  Field Number:
--   1. Unknown
--   2. Unknown
--   3. Unknown
--   4. Unknown
--   5. Unknown
--   6. Unknown
--   7. Unknown
--   8. Unknown
--   9. Cursor Range From Own Ship
--  10. Cursor Bearing Degrees Clockwise From Zero
--  11. Range Scale
--  12. Range Units
--  13. Unknown
--  14. Checksum

package NMEA.Messages.RSD is
   type RSD_Message is new Message with record
      Unknown : NMEA_Dummy_Field;
      Unknown8 : NMEA_Dummy_Field;
      Unknown9 : NMEA_Dummy_Field;
      Unknown10 : NMEA_Dummy_Field;
      Unknown11 : NMEA_Dummy_Field;
      Unknown12 : NMEA_Dummy_Field;
      Unknown13 : NMEA_Dummy_Field;
      Unknown14 : NMEA_Dummy_Field;
      Cursor_Range_From_Own_Ship : NMEA_Dummy_Field;
      Cursor_Bearing_Degrees_Clockwise_From_Zero : NMEA_Dummy_Field;
      Range_Scale : NMEA_Dummy_Field;
      Range_Units : NMEA_Dummy_Field;
      Unknown19 : NMEA_Dummy_Field;
   end record;

   overriding function Image (This : RSD_Message) return String;

private
   overriding
   function Constructor
     (Stream : not null access Ada.Streams.Root_Stream_Type'Class)
      return RSD_Message;
end NMEA.Messages.RSD;
