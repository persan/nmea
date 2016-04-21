--  ROT - Rate Of Turn
--          1   2 3
--          |   | |
--   $--ROT,x.x,A*hh<CR><LF>
--  Field Number:
--  1. Rate Of Turn, degrees per minute, "-" means bow turns to port 
--  2. Status, A means data is valid 
--  3. Checksum 

package NMEA.Messages.ROT is
   type ROT_Message is new Message with record
     null;
   end record;

   overriding function Image (This : ROT_Message) return String;

private
   overriding
   function Constructor
     (Stream : not null access Ada.Streams.Root_Stream_Type'Class)
      return ROT_Message;
end NMEA.Messages.ROT;
