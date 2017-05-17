--  RPM - Revolutions
--          1 2 3   4   5 6
--          | | |   |   | |
--   $--RPM,a,x,x.x,x.x,A*hh<CR><LF>
--  Field Number:
--  1. Sourse, S = Shaft, E = Engine 
--  2. Engine or shaft number 
--  3. Speed, Revolutions per minute 
--  4. Propeller pitch, % of maximum, "-" means astern 
--  5. Status, A means data is valid 
--  6. Checksum 

package NMEA.Messages.RPM is
   type RPM_Message is new Message with record
      Sourse_S_Shaft_E_Engine : NMEA_Dummy_Field;
      Engine_or_shaft_number : NMEA_Dummy_Field;
      Speed_Revolutions_per_minute : NMEA_Dummy_Field;
      Propeller_pitch_of_maximum_means_astern : NMEA_Dummy_Field;
      Status_A_means_data_is_valid : NMEA_Dummy_Field;
   end record;

   overriding function Image (This : RPM_Message) return String;

private
   overriding
   function Constructor
     (Stream : not null access Ada.Streams.Root_Stream_Type'Class)
      return RPM_Message;
end NMEA.Messages.RPM;
