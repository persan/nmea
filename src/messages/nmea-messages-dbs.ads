--  DBS - Depth Below Surface
--          1   2 3   4 5   6 7
--          |   | |   | |   | |
--   $--DBS,x.x,f,x.x,M,x.x,F*hh<CR><LF>
--  Field Number:
--  1. Depth, feet
--  2. f = feet
--  3. Depth, meters
--  4. M = meters
--  5. Depth, Fathoms
--  6. F = Fathoms
--  7. Checksum

package NMEA.Messages.DBS is
   type DBS_Message is new Message with record
      Depth_Feet    : NMEA_Dummy_Field;
      F_Feet        : NMEA_Dummy_Field;
      Depth_Meters  : NMEA_Dummy_Field;
      M_Meters      : NMEA_Dummy_Field;
      Depth_Fathoms : NMEA_Dummy_Field;
      F_Fathoms     : NMEA_Dummy_Field;
   end record;

   overriding function Image (This : DBS_Message) return String;

private
   overriding
   function Constructor
     (Stream : not null access Ada.Streams.Root_Stream_Type'Class)
      return DBS_Message;
end NMEA.Messages.DBS;
