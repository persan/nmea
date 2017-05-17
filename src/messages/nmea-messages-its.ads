--  ITS - Trawl Door Spread 2 Distance
--           1  2 3
--           |  | |
--   $--ITS,x.x,M*hh<CR><LF>
--  Field Number:
--  1. Second spread distance
--  2. Meters
--  3. Checksum.
--  From [GLOBALSAT]. Shown with a "@II" leader rather than "$GP".

package NMEA.Messages.ITS is
   type ITS_Message is new Message with record
      Second_spread_distance : NMEA_Dummy_Field;
      Meters : NMEA_Dummy_Field;
   end record;

   overriding function Image (This : ITS_Message) return String;

private
   overriding
   function Constructor
     (Stream : not null access Ada.Streams.Root_Stream_Type'Class)
      return ITS_Message;
end NMEA.Messages.ITS;
