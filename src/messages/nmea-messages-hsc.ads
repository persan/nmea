--  HSC - Heading Steering Command
--          1   2 3   4  5
--          |   | |   |  |
--   $--HSC,x.x,T,x.x,M,*hh<CR><LF>
--  Field Number:
--  1. Heading Degrees, True 
--  2. T = True 
--  3. Heading Degrees, Magnetic 
--  4. M = Magnetic 
--  5. Checksum 
--  [GLOBALSAT] describes a completely different meaning for this sentence, having to do with water temperature sensors. It is unclear which is correct.

package NMEA.Messages.HSC is
   type HSC_Message is new Message with record
     null;
   end record;

   overriding function Image (This : HSC_Message) return String;

private
   overriding
   function Constructor
     (Stream : not null access Ada.Streams.Root_Stream_Type'Class)
      return HSC_Message;
end NMEA.Messages.HSC;
