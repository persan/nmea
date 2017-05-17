--  GSA - GPS DOP and active satellites
--  This is one of the sentences commonly emitted by GPS units.
--          1 2 3                        14 15  16  17  18
--          | | |                         |  |   |   |   |
--   $--GSA,a,a,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x.x,x.x,x.x*hh<CR><LF>
--  Field Number:
--  1. Selection mode: M=Manual, forced to operate in 2D or 3D, A=Automatic, 3D/2D
--  2. Mode (1 = no fix, 2 = 2D fix, 3 = 3D fix)
--  3. ID of 1st satellite used for fix
--  4. ID of 2nd satellite used for fix
--  5. ID of 3rd satellite used for fix
--  6. ID of 4th satellite used for fix
--  7. ID of 5th satellite used for fix
--  8. ID of 6th satellite used for fix
--  9. ID of 7th satellite used for fix
--  10. ID of 8th satellite used for fix
--  11. ID of 9th satellite used for fix
--  12. ID of 10th satellite used for fix
--  13. ID of 11th satellite used for fix
--  14. ID of 12th satellite used for fix
--  15. PDOP
--  16. HDOP
--  17. VDOP
--  18. Checksum

package NMEA.Messages.GSA is
   type GSA_Message is new Message with record
      Selection_Mode                    : NMEA_Dummy_Field;
      Mode                              : NMEA_Dummy_Field;
      ID_Of_1st_Satellite_Used_For_Fix  : NMEA_Dummy_Field;
      ID_Of_2nd_Satellite_Used_For_Fix  : NMEA_Dummy_Field;
      ID_Of_3rd_Satellite_Used_For_Fix  : NMEA_Dummy_Field;
      ID_Of_4th_Satellite_Used_For_Fix  : NMEA_Dummy_Field;
      ID_Of_5th_Satellite_Used_For_Fix  : NMEA_Dummy_Field;
      ID_Of_6th_Satellite_Used_For_Fix  : NMEA_Dummy_Field;
      ID_Of_7th_Satellite_Used_For_Fix  : NMEA_Dummy_Field;
      ID_Of_8th_Satellite_Used_For_Fix  : NMEA_Dummy_Field;
      ID_Of_9th_Satellite_Used_For_Fix  : NMEA_Dummy_Field;
      ID_Of_10th_Satellite_Used_For_Fix : NMEA_Dummy_Field;
      ID_Of_11th_Satellite_Used_For_Fix : NMEA_Dummy_Field;
      ID_Of_12th_Satellite_Used_For_Fix : NMEA_Dummy_Field;
      PDOP                              : NMEA_Dummy_Field;
      HDOP                              : NMEA_Dummy_Field;
      VDOP                              : NMEA_Dummy_Field;
   end record;

   overriding function Image (This : GSA_Message) return String;

private
   overriding
   function Constructor
     (Stream : not null access Ada.Streams.Root_Stream_Type'Class)
      return GSA_Message;
end NMEA.Messages.GSA;
