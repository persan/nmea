--  ZTG - UTC & Time to Destination Waypoint
--          1         2         3    4
--          |         |         |    |
--   $--ZTG,hhmmss.ss,hhmmss.ss,c--c*hh<CR><LF>
--  Field Number:
--  1. Universal Time Coordinated (UTC)
--  2. Time Remaining
--  3. Destination Waypoint ID
--  4. Checksum

package NMEA.Messages.ZTG is
   type ZTG_Message is new Message with record
      Time                    : NMEA_Dummy_Field;
      Time_Remaining          : NMEA_Dummy_Field;
      Destination_Waypoint_ID : NMEA_Dummy_Field;
   end record;

   overriding function Image (This : ZTG_Message) return String;

private
   overriding
   function Constructor
     (Stream : not null access Ada.Streams.Root_Stream_Type'Class)
      return ZTG_Message;
end NMEA.Messages.ZTG;
