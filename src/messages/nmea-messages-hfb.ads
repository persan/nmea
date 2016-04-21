--  HFB - Trawl Headrope to Footrope and Bottom
--           1  2  3  4 5
--           |  |  |  | |
--   $--HFB,x.x,M,y.y,M*hh<CR><LF>
--  Field Number:
--  1. Distance from headrope to footrope 
--  2. Meters (0-100) 
--  3. Distance from headrope to bottom 
--  4. Meters (0-100) 
--  5. Checksum 
--  From [GLOBALSAT]. Shown with a "@II" leader rather than "$GP".

package NMEA.Messages.HFB is
   type HFB_Message is new Message with record
     null;
   end record;

   overriding function Image (This : HFB_Message) return String;

private
   overriding
   function Constructor
     (Stream : not null access Ada.Streams.Root_Stream_Type'Class)
      return HFB_Message;
end NMEA.Messages.HFB;
