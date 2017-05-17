--  DCN - Decca Position
--                                        11  13      16
--          1  2  3   4 5  6   7 8  9   10| 12| 14  15| 17
--          |  |  |   | |  |   | |  |   | | | | |   | | |
--   $--DCN,xx,cc,x.x,A,cc,x.x,A,cc,x.x,A,A,A,A,x.x,N,x*hh<CR><LF>
--  Field Number:
--  1. Decca chain identifier
--  2. Red Zone Identifier
--  3. Red Line Of Position
--  4. Red Master Line Status
--  5. Green Zone Identifier
--  6. Green Line Of Position
--  7. Green Master Line Status
--  8. Purple Zone Identifier
--  9. Purple Line Of Position
--  10. Purple Master Line Status
--  11. Red Line Navigation Use
--  12. Green Line Navigation Use
--  13. Purple Line Navigation Use
--  14. Position Uncertainity
--  15. N = Nautical Miles
--  16. Fix Data Basis
--  1 = Normal Pattern
--  2 = Lane Identification Pattern
--  3 = Lane Identification Transmissions
--  17. Checksum
--  (The DCN sentence is obsolete as of 3.01)

package NMEA.Messages.DCN is
   type DCN_Message is new Message with record
      Decca_Chain_Identifier     : NMEA_Dummy_Field;
      Red_Zone_Identifier        : NMEA_Dummy_Field;
      Red_Line_Of_Position       : NMEA_Dummy_Field;
      Red_Master_Line_Status     : NMEA_Dummy_Field;
      Green_Zone_Identifier      : NMEA_Dummy_Field;
      Green_Line_Of_Position     : NMEA_Dummy_Field;
      Green_Master_Line_Status   : NMEA_Dummy_Field;
      Purple_Zone_Identifier     : NMEA_Dummy_Field;
      Purple_Line_Of_Position    : NMEA_Dummy_Field;
      Purple_Master_Line_Status  : NMEA_Dummy_Field;
      Red_Line_Navigation_Use    : NMEA_Dummy_Field;
      Green_Line_Navigation_Use  : NMEA_Dummy_Field;
      Purple_Line_Navigation_Use : NMEA_Dummy_Field;
      Position_Uncertainity      : NMEA_Dummy_Field;
      N_Nautical_Miles           : NMEA_Dummy_Field;
      Fix_Data_Basis             : NMEA_Dummy_Field;
   end record;

   overriding function Image (This : DCN_Message) return String;

private
   overriding
   function Constructor
     (Stream : not null access Ada.Streams.Root_Stream_Type'Class)
      return DCN_Message;
end NMEA.Messages.DCN;
