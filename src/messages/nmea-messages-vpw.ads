--  VPW - Speed - Measured Parallel to Wind
--          1   2 3   4 5
--          |   | |   | |
--   $--VPW,x.x,N,x.x,M*hh<CR><LF>
--  Field Number:
--  1. Speed, "-" means downwind
--  2. N = Knots
--  3. Speed, "-" means downwind
--  4. M = Meters per second
--  5. Checksum

package NMEA.Messages.VPW is
   type VPW_Message is new Message with record
      Speed_Means_Downwind  : NMEA_Dummy_Field;
      N_Knots               : NMEA_Dummy_Field;
      Speed_Means_Downwind7 : NMEA_Dummy_Field;
      M_Meters_Per_Second   : NMEA_Dummy_Field;
   end record;

   overriding function Image (This : VPW_Message) return String;

private
   overriding
   function Constructor
     (Stream : not null access Ada.Streams.Root_Stream_Type'Class)
      return VPW_Message;
end NMEA.Messages.VPW;
