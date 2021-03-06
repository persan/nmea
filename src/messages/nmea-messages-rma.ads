--  RMA - Recommended Minimum Navigation Information
--                                                      12
--          1 2       3 4        5 6   7   8   9   10  11|
--          | |       | |        | |   |   |   |   |   | |
--   $--RMA,A,llll.ll,a,yyyyy.yy,a,x.x,x.x,x.x,x.x,x.x,a*hh<CR><LF>
--  Field Number:
--  1. Blink Warning
--  2. Latitude
--  3. N or S
--  4. Longitude
--  5. E or W
--  6. Time Difference A, uS
--  7. Time Difference B, uS
--  8. Speed Over Ground, Knots
--  9. Track Made Good, degrees true
--  10. Magnetic Variation, degrees
--  11. E or W
--  12. Checksum

package NMEA.Messages.RMA is
   type RMA_Message is new Message with record
      Blink_Warning : NMEA_Dummy_Field;
      Latitude : NMEA_Dummy_Field;
      N_or_S : NMEA_Dummy_Field;
      Longitude : NMEA_Dummy_Field;
      E_or_W : NMEA_Dummy_Field;
      Time_Difference_A_uS : NMEA_Dummy_Field;
      Time_Difference_B_uS : NMEA_Dummy_Field;
      Speed_Over_Ground_Knots : NMEA_Dummy_Field;
      Track_Made_Good_degrees_true : NMEA_Dummy_Field;
      Magnetic_Variation_degrees : NMEA_Dummy_Field;
      E_or_W16 : NMEA_Dummy_Field;
   end record;

   overriding function Image (This : RMA_Message) return String;

private
   overriding
   function Constructor
     (Stream : not null access Ada.Streams.Root_Stream_Type'Class)
      return RMA_Message;
end NMEA.Messages.RMA;
