--  MWV - Wind Speed and Angle
--          1   2 3   4 5
--          |   | |   | |
--   $--MWV,x.x,a,x.x,a*hh<CR><LF>
--  Field Number:
--  1. Wind Angle, 0 to 360 degrees 
--  2. Reference, R = Relative, T = True 
--  3. Wind Speed 
--  4. Wind Speed Units, K/M/N 
--  5. Status, A = Data Valid 
--  6. Checksum 

package NMEA.Messages.MWV is
   type MWV_Message is new Message with record
      Wind_Angle_0_to_360_degrees : NMEA_Dummy_Field;
      Reference_R_Relative_T_True : NMEA_Dummy_Field;
      Wind_Speed : NMEA_Dummy_Field;
      Wind_Speed_Units_K_M_N : NMEA_Dummy_Field;
      Status_A_Data_Valid : NMEA_Dummy_Field;
   end record;

   overriding function Image (This : MWV_Message) return String;

private
   overriding
   function Constructor
     (Stream : not null access Ada.Streams.Root_Stream_Type'Class)
      return MWV_Message;
end NMEA.Messages.MWV;
