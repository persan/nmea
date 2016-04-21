--  VDR - Set and Drift
--          1   2 3   4 5   6 7
--          |   | |   | |   | |
--   $--VDR,x.x,T,x.x,M,x.x,N*hh<CR><LF>
--  Field Number:
--  1. Degress True 
--  2. T = True 
--  3. Degrees Magnetic 
--  4. M = Magnetic 
--  5. Knots (speed of current) 
--  6. N = Knots 
--  7. Checksum 

package NMEA.Messages.VDR is
   type VDR_Message is new Message with record
     null;
   end record;

   overriding function Image (This : VDR_Message) return String;

private
   overriding
   function Constructor
     (Stream : not null access Ada.Streams.Root_Stream_Type'Class)
      return VDR_Message;
end NMEA.Messages.VDR;