--  VLW - Distance Traveled through Water
--          1   2 3   4 5
--          |   | |   | |
--   $--VLW,x.x,N,x.x,N*hh<CR><LF>
--  Field Number:
--  1. Total cumulative distance
--  2. N = Nautical Miles
--  3. Distance since Reset
--  4. N = Nautical Miles
--  5. Checksum

package NMEA.Messages.VLW is
   type VLW_Message is new Message with record
      Total_Cumulative_Distance : NMEA_Dummy_Field;
      N_Nautical_Miles          : NMEA_Dummy_Field;
      Distance_Since_Reset      : NMEA_Dummy_Field;
      N_Nautical_Miles8         : NMEA_Dummy_Field;
   end record;

   overriding function Image (This : VLW_Message) return String;

private
   overriding
   function Constructor
     (Stream : not null access Ada.Streams.Root_Stream_Type'Class)
      return VLW_Message;
end NMEA.Messages.VLW;
