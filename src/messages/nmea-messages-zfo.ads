--  ZFO - UTC & Time from origin Waypoint
--          1         2         3    4
--          |         |         |    |
--   $--ZFO,hhmmss.ss,hhmmss.ss,c--c*hh<CR><LF>
--  Field Number:
--  1. Universal Time Coordinated (UTC)
--  2. Elapsed Time
--  3. Origin Waypoint ID
--  4. Checksum

package NMEA.Messages.ZFO is
   type ZFO_Message is new Message with record
      Universal_Time_Coordinated_UTC : NMEA_Dummy_Field;
      Elapsed_Time                   : NMEA_Dummy_Field;
      Origin_Waypoint_ID             : NMEA_Dummy_Field;
   end record;

   overriding function Image (This : ZFO_Message) return String;

private
   overriding
   function Constructor
     (Stream : not null access Ada.Streams.Root_Stream_Type'Class)
      return ZFO_Message;
end NMEA.Messages.ZFO;
