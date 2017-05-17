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
      Total_number_of_messages_being_transmitted : NMEA_Dummy_Field;
      Message_Number : NMEA_Dummy_Field;
      Waypoint_ID : NMEA_Dummy_Field;
   end record;

   overriding function Image (This : RTE_Message) return String;

private
   overriding
   function Constructor
     (Stream : not null access Ada.Streams.Root_Stream_Type'Class)
      return RTE_Message;
end NMEA.Messages.RTE;
