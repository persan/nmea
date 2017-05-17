--  XTR - Cross Track Error - Dead Reckoning
--          1   2 3 4
--          |   | | |
--   $--XTR,x.x,a,N*hh<CR><LF>
--  Field Number:
--  1. Magnitude of cross track error
--  2. Direction to steer, L or R
--  3. Units, N = Nautical Miles
--  4. Checksum

package NMEA.Messages.XTR is
   type XTR_Message is new Message with record
      Magnitude_Of_Cross_Track_Error : NMEA_Dummy_Field;
      Direction_To_Steer_L_Or_R      : NMEA_Dummy_Field;
      Units_N_Nautical_Miles         : NMEA_Dummy_Field;
   end record;

   overriding function Image (This : XTR_Message) return String;

private
   overriding
   function Constructor
     (Stream : not null access Ada.Streams.Root_Stream_Type'Class)
      return XTR_Message;
end NMEA.Messages.XTR;
