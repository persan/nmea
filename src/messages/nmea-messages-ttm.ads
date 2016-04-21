--  TTM - Tracked Target Message
--                                           11     13
--          1  2   3   4 5   6   7 8   9   10|    12| 14
--          |  |   |   | |   |   | |   |   | |    | | |
--   $--TTM,xx,x.x,x.x,a,x.x,x.x,a,x.x,x.x,a,c--c,a,a*hh<CR><LF>
--  Field Number:
--  1. Target Number (0-99) 
--  2. Target Distance 
--  3. Bearing from own ship 
--  4. Bearing Units 
--  5. Target Speed 
--  6. Target Course 
--  7. Course Units 
--  8. Distance of closest-point-of-approach 
--  9. Time until closest-point-of-approach "-" means increasing 
--  10. "-" means increasing 
--  11. Target name 
--  12. Target Status 
--  13. Reference Target 
--  14. Checksum 
--  [GLOBALSAT] gives this in a slightly different form, with 14th and 15th fields conveying time of observation and whether target acquisition was automatic or manual.

package NMEA.Messages.TTM is
   type TTM_Message is new Message with record
     null;
   end record;

   overriding function Image (This : TTM_Message) return String;

private
   overriding
   function Constructor
     (Stream : not null access Ada.Streams.Root_Stream_Type'Class)
      return TTM_Message;
end NMEA.Messages.TTM;
