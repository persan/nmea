--  HDT - Heading - True
--  Actual vessel heading in degrees true produced by any device or system producing true heading.
--          1   2 3
--          |   | |
--   $--HDT,x.x,T*hh<CR><LF>
--  Field Number:
--  1. Heading Degrees, true 
--  2. T = True 
--  3. Checksum 

package NMEA.Messages.HDT is
   type HDT_Message is new Message with record
      Heading_Degrees_true : NMEA_Dummy_Field;
      T_True : NMEA_Dummy_Field;
   end record;

   overriding function Image (This : HDT_Message) return String;

private
   overriding
   function Constructor
     (Stream : not null access Ada.Streams.Root_Stream_Type'Class)
      return HDT_Message;
end NMEA.Messages.HDT;
