--  VTG - Track made good and Ground speed
--  This is one of the sentences commonly emitted by GPS units.
--           1  2  3  4  5  6  7  8 9   10
--           |  |  |  |  |  |  |  | |   |
--   $--VTG,x.x,T,x.x,M,x.x,N,x.x,K,m,*hh<CR><LF>
--  Field Number:
--  1. Track Degrees
--  2. T = True
--  3. Track Degrees
--  4. M = Magnetic
--  5. Speed Knots
--  6. N = Knots
--  7. Speed Kilometers Per Hour
--  8. K = Kilometers Per Hour
--  9. FAA mode indicator (NMEA 2.3 and later)
--  10. Checksum

package NMEA.Messages.VTG is
   type VTG_Message is new Message with record
      Track_Degrees                         : NMEA_Dummy_Field;
      T_True                                : NMEA_Constant_Character ('T');
      Track_Degrees8                        : NMEA_Dummy_Field;
      M_Magnetic                            : NMEA_Constant_Character ('M');
      Speed_Knots                           : NMEA_Dummy_Field;
      N_Knots                               : NMEA_Constant_Character ('N');
      Speed_Kilometers_Per_Hour             : NMEA_Dummy_Field;
      K_Kilometers_Per_Hour                 : NMEA_Constant_Character ('K');
      FAA_Mode_Indicator_NMEA_2_3_And_Later : NMEA_Dummy_Field;
   end record;

   overriding function Image (This : VTG_Message) return String;

private
   overriding
   function Constructor
     (Stream : not null access Ada.Streams.Root_Stream_Type'Class)
      return VTG_Message;
end NMEA.Messages.VTG;
