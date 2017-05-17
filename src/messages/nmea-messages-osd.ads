--  OSD - Own Ship Data
--          1   2 3   4 5   6 7   8   9 10
--          |   | |   | |   | |   |   | |
--   $--OSD,x.x,A,x.x,a,x.x,a,x.x,x.x,a*hh<CR><LF>
--  Field Number:
--  1. Heading, degrees true 
--  2. Status, A = Data Valid 
--  3. Vessel Course, degrees True 
--  4. Course Reference 
--  5. Vessel Speed 
--  6. Speed Reference 
--  7. Vessel Set, degrees True 
--  8. Vessel drift (speed) 
--  9. Speed Units 
--  10. Checksum 

package NMEA.Messages.OSD is
   type OSD_Message is new Message with record
      Heading_degrees_true : NMEA_Dummy_Field;
      Status_A_Data_Valid : NMEA_Dummy_Field;
      Vessel_Course_degrees_True : NMEA_Dummy_Field;
      Course_Reference : NMEA_Dummy_Field;
      Vessel_Speed : NMEA_Dummy_Field;
      Speed_Reference : NMEA_Dummy_Field;
      Vessel_Set_degrees_True : NMEA_Dummy_Field;
      Vessel_drift_speed : NMEA_Dummy_Field;
      Speed_Units : NMEA_Dummy_Field;
   end record;

   overriding function Image (This : OSD_Message) return String;

private
   overriding
   function Constructor
     (Stream : not null access Ada.Streams.Root_Stream_Type'Class)
      return OSD_Message;
end NMEA.Messages.OSD;
