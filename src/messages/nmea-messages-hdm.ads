--  HDM - Heading - Magnetic
--  Vessel heading in degrees with respect to magnetic north produced by any device or system producing magnetic heading.
--          1   2 3
--          |   | |
--   $--HDM,x.x,M*hh<CR><LF>
--  Field Number:
--  1. Heading Degrees, magnetic 
--  2. M = magnetic 
--  3. Checksum 

package NMEA.Messages.HDM is
   type HDM_Message is new Message with record
      Heading_Degrees_magnetic : NMEA_Dummy_Field;
      M_magnetic : NMEA_Dummy_Field;
   end record;

   overriding function Image (This : HDM_Message) return String;

private
   overriding
   function Constructor
     (Stream : not null access Ada.Streams.Root_Stream_Type'Class)
      return HDM_Message;
end NMEA.Messages.HDM;
