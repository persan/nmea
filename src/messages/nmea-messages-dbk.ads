--  DBK - Depth Below Keel
--          1   2 3   4 5   6 7
--          |   | |   | |   | |
--   $--DBK,x.x,f,x.x,M,x.x,F*hh<CR><LF>
--  Field Number:
--  1. Depth, feet 
--  2. f = feet 
--  3. Depth, meters 
--  4. M = meters 
--  5. Depth, Fathoms 
--  6. F = Fathoms 
--  7. Checksum 

package NMEA.Messages.DBK is
   type DBK_Message is new Message with record
     null;
   end record;

   overriding function Image (This : DBK_Message) return String;

private
   overriding
   function Constructor
     (Stream : not null access Ada.Streams.Root_Stream_Type'Class)
      return DBK_Message;
end NMEA.Messages.DBK;
