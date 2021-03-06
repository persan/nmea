--  XDR - Transducer Measurement
--          1 2   3 4            n
--          | |   | |            |
--   $--XDR,a,x.x,a,c--c, ..... *hh<CR><LF>
--  Field Number:
--  1. Transducer Type
--  2. Measurement Data
--  3. Units of measurement
--  4. Name of transducer
--  n. Checksum
--  There may be any number of quadruplets like this, each describing a sensor. The last field will be a checksum as usual.

package NMEA.Messages.XDR is
   type XDR_Message is new Message with record
      Transducer_Type      : NMEA_Dummy_Field;
      Measurement_Data     : NMEA_Dummy_Field;
      Units_Of_Measurement : NMEA_Dummy_Field;
      Name_Of_Transducer   : NMEA_Dummy_Field;
   end record;

   overriding function Image (This : XDR_Message) return String;

private
   overriding
   function Constructor
     (Stream : not null access Ada.Streams.Root_Stream_Type'Class)
      return XDR_Message;
end NMEA.Messages.XDR;
