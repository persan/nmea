--  R00 - Waypoints in active route
--          1                n
--          |                |
--   $--R00,c---c,c---c,....*hh<CR><LF>
--  Field Number:
--  1. waypoint ID 
--  …
--  n) checksum

package NMEA.Messages.R00 is
   type R00_Message is new Message with record
     null;
   end record;

   overriding function Image (This : R00_Message) return String;

private
   overriding
   function Constructor
     (Stream : not null access Ada.Streams.Root_Stream_Type'Class)
      return R00_Message;
end NMEA.Messages.R00;
