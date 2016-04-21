--  WCV - Waypoint Closure Velocity
--          1   2 3    4
--          |   | |    |
--   $--WCV,x.x,N,c--c*hh<CR><LF>
--  Field Number:
--  1. Velocity 
--  2. N = knots 
--  3. Waypoint ID 
--  4. Checksum 

package NMEA.Messages.WCV is
   type WCV_Message is new Message with record
     null;
   end record;

   overriding function Image (This : WCV_Message) return String;

private
   overriding
   function Constructor
     (Stream : not null access Ada.Streams.Root_Stream_Type'Class)
      return WCV_Message;
end NMEA.Messages.WCV;
