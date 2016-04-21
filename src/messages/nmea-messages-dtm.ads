--  DTM - Datum Reference
--            1  2  3   4  5   6  7  8    9
--            |  |  |   |  |   |  |  |    |
--   $ --DTM,ref,x,llll,c,llll,c,aaa,ref*hh<CR><LF>
--  Field Number:
--  1. Local datum code. 
--  2. Local datum subcode. May be blank. 
--  3. Latitude offset (minutes) 
--  4. N or S 
--  5. Longitude offset (minutes) 
--  6. E or W 
--  7. Altitude offset in meters 
--  8. Datum name. What’s usually seen here is "W84", the standard WGS84 datum used by GPS. 
--  9. Checksum. 

package NMEA.Messages.DTM is
   type DTM_Message is new Message with record
     null;
   end record;

   overriding function Image (This : DTM_Message) return String;

private
   overriding
   function Constructor
     (Stream : not null access Ada.Streams.Root_Stream_Type'Class)
      return DTM_Message;
end NMEA.Messages.DTM;
