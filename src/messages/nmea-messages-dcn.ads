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
     null;
   end record;

   overriding function Image (This : DCN_Message) return String;

private
   overriding
   function Constructor
     (Stream : not null access Ada.Streams.Root_Stream_Type'Class)
      return DCN_Message;
end NMEA.Messages.DCN;
