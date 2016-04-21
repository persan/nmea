--  TDS - Trawl Door Spread Distance
--           1  2 3
--           |  | |
--   $--TDS,x.x,M*hh<CR><LF>
--  Field Number)
--  1. Distance between trawl doors 
--  2. Meters (0-300) 
--  3. Checksum. 
--  From [GLOBALSAT]. Shown with a "@II" leader rather than "$GP".

package NMEA.Messages.TDS is
   type TDS_Message is new Message with record
     null;
   end record;

   overriding function Image (This : TDS_Message) return String;

private
   overriding
   function Constructor
     (Stream : not null access Ada.Streams.Root_Stream_Type'Class)
      return TDS_Message;
end NMEA.Messages.TDS;
