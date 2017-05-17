--  RSA - Rudder Sensor Angle
--          1   2 3   4 5
--          |   | |   | |
--   $--RSA,x.x,A,x.x,A*hh<CR><LF>
--  Field Number:
--  1. Starboard (or single) rudder sensor, "-" means Turn To Port 
--  2. Status, A means data is valid 
--  3. Port rudder sensor 
--  4. Status, A means data is valid 
--  5. Checksum 

package NMEA.Messages.RSA is
   type RSA_Message is new Message with record
      Starboard_or_single_rudder_sensor_means_Turn_To_Port : NMEA_Dummy_Field;
      Status_A_means_data_is_valid : NMEA_Dummy_Field;
      Port_rudder_sensor : NMEA_Dummy_Field;
      Status_A_means_data_is_valid8 : NMEA_Dummy_Field;
   end record;

   overriding function Image (This : RSA_Message) return String;

private
   overriding
   function Constructor
     (Stream : not null access Ada.Streams.Root_Stream_Type'Class)
      return RSA_Message;
end NMEA.Messages.RSA;
