--  VHW - Water speed and heading
--          1   2 3   4 5   6 7   8 9
--          |   | |   | |   | |   | |
--   $--VHW,x.x,T,x.x,M,x.x,N,x.x,K*hh<CR><LF>
--  Field Number:
--  1. Degress True 
--  2. T = True 
--  3. Degrees Magnetic 
--  4. M = Magnetic 
--  5. Knots (speed of vessel relative to the water) 
--  6. N = Knots 
--  7. Kilometers (speed of vessel relative to the water) 
--  8. K = Kilometers 
--  9. Checksum 
--  [GLOBALSAT] describes a different format in which the first three fields are water-temperature measurements. It’s not clear which is correct.

package NMEA.Messages.VHW is
   type VHW_Message is new Message with record
     null;
   end record;

   overriding function Image (This : VHW_Message) return String;

private
   overriding
   function Constructor
     (Stream : not null access Ada.Streams.Root_Stream_Type'Class)
      return VHW_Message;
end NMEA.Messages.VHW;
