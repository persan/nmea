--  MTW - Mean Temperature of Water
--          1   2 3
--          |   | |
--   $--MTW,x.x,C*hh<CR><LF>
--  Field Number:
--  1. Degrees 
--  2. Unit of Measurement, Celcius 
--  3. Checksum 
--  [GLOBALSAT] lists this as "Meteorological Temperature of Water", which is probably incorrect.

package NMEA.Messages.MTW is
   type MTW_Message is new Message with record
      Degrees : NMEA_Dummy_Field;
      Unit_of_Measurement_Celcius : NMEA_Dummy_Field;
   end record;

   overriding function Image (This : MTW_Message) return String;

private
   overriding
   function Constructor
     (Stream : not null access Ada.Streams.Root_Stream_Type'Class)
      return MTW_Message;
end NMEA.Messages.MTW;
