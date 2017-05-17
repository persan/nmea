--  TPT - Trawl Position True
--          1 2 3 4  5  6 7
--          | | | |  |  | |
--   $--TPT,x,M,y,P,z.z,M*hh,<CR><LF>
--  Field Number:
--  1. Horizontal range relative to target
--  2. Meters (0-4000)
--  3. True bearing to taget (ie. relative north). Resolution is one degree.
--  4. Separator
--  5. Depth of trawl below the surface
--  6. Meters (0-2000)
--  7. Checksum
--  From [GLOBALSAT]. Shown with a "@II" leader rather than "$GP".

package NMEA.Messages.TPT is
   type TPT_Message is new Message with record
      Horizontal_Range_Relative_To_Target : NMEA_Dummy_Field;
      Meters_0_4000                       : NMEA_Dummy_Field;
      True_Bearing_To_Taget               : NMEA_Dummy_Field;
      Separator                           : NMEA_Dummy_Field;
      Depth_Of_Trawl_Below_The_Surface    : NMEA_Dummy_Field;
      Meters_0_2000                       : NMEA_Dummy_Field;
   end record;

   overriding function Image (This : TPT_Message) return String;

private
   overriding
   function Constructor
     (Stream : not null access Ada.Streams.Root_Stream_Type'Class)
      return TPT_Message;
end NMEA.Messages.TPT;
