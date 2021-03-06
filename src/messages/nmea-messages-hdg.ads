--  HDG - Heading - Deviation & Variation
--          1   2   3 4   5 6
--          |   |   | |   | |
--   $--HDG,x.x,x.x,a,x.x,a*hh<CR><LF>
--  Field Number:
--  1. Magnetic Sensor heading in degrees
--  2. Magnetic Deviation, degrees
--  3. Magnetic Deviation direction, E = Easterly, W = Westerly
--  4. Magnetic Variation degrees
--  5. Magnetic Variation direction, E = Easterly, W = Westerly
--  6. Checksum

package NMEA.Messages.HDG is
   type HDG_Message is new Message with record
      Magnetic_Sensor_heading_in_degrees : NMEA_Dummy_Field;
      Magnetic_Deviation_degrees : NMEA_Dummy_Field;
      Magnetic_Deviation_direction_E_Easterly_W_Westerly : NMEA_Dummy_Field;
      Magnetic_Variation_degrees : NMEA_Dummy_Field;
      Magnetic_Variation_direction_E_Easterly_W_Westerly : NMEA_Dummy_Field;
   end record;

   overriding function Image (This : HDG_Message) return String;

private
   overriding
   function Constructor
     (Stream : not null access Ada.Streams.Root_Stream_Type'Class)
      return HDG_Message;
end NMEA.Messages.HDG;
