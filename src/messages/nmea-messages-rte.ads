--  RTE - Routes
--          1   2   3 4    5           x    n
--          |   |   | |    |           |    |
--   $--RTE,x.x,x.x,a,c--c,c--c, ..... c--c*hh<CR><LF>
--  Field Number:
--  1. Total number of messages being transmitted
--  2. Message Number
--  4. Waypoint ID
--  n. Checksum
--  More waypoints follow. Last field is a checksum as usual.
--  The Garmin 65 and possibly other units report a $GPR00 in the same format.

package NMEA.Messages.RTE is
   type RTE_Message is new Message with record
     null;
   end record;

   overriding function Image (This : RTE_Message) return String;

private
   overriding
   function Constructor
     (Stream : not null access Ada.Streams.Root_Stream_Type'Class)
      return RTE_Message;
end NMEA.Messages.RTE;
