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
     null;
   end record;

   overriding function Image (This : TPT_Message) return String;

private
   overriding
   function Constructor
     (Stream : not null access Ada.Streams.Root_Stream_Type'Class)
      return TPT_Message;
end NMEA.Messages.TPT;
