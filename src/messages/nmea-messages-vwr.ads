--  VWR - Relative Wind Speed and Angle
--           1  2  3  4  5  6  7  8 9
--           |  |  |  |  |  |  |  | |
--   $--VWR,x.x,a,x.x,N,x.x,M,x.x,K*hh<CR><LF>
--  Field Number:
--  1. Wind direction magnitude in degrees
--  2. Wind direction Left/Right of bow
--  3. Speed
--  4. N = Knots
--  5. Speed
--  6. M = Meters Per Second
--  7. Speed
--  8. K = Kilometers Per Hour
--  9. Checksum

package NMEA.Messages.VWR is
   type VWR_Message is new Message with record
      Wind_Direction_Magnitude_In_Degrees : NMEA_Dummy_Field;
      Wind_Direction_Left_Right_Of_Bow    : NMEA_Dummy_Field;
      Speed                               : NMEA_Dummy_Field;
      N_Knots                             : NMEA_Dummy_Field;
      Speed9                              : NMEA_Dummy_Field;
      M_Meters_Per_Second                 : NMEA_Dummy_Field;
      Speed11                             : NMEA_Dummy_Field;
      K_Kilometers_Per_Hour               : NMEA_Dummy_Field;
   end record;

   overriding function Image (This : VWR_Message) return String;

private
   overriding
   function Constructor
     (Stream : not null access Ada.Streams.Root_Stream_Type'Class)
      return VWR_Message;
end NMEA.Messages.VWR;
