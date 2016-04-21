--  WNC - Distance - Waypoint to Waypoint
--          1   2 3   4 5    6    7
--          |   | |   | |    |    |
--   $--WNC,x.x,N,x.x,K,c--c,c--c*hh<CR><LF>
--  Field Number:
--  1. Distance, Nautical Miles 
--  2. N = Nautical Miles 
--  3. Distance, Kilometers 
--  4. K = Kilometers 
--  5. TO Waypoint 
--  6. FROM Waypoint 
--  7. Checksum 

package NMEA.Messages.WNC is
   type WNC_Message is new Message with record
     null;
   end record;

   overriding function Image (This : WNC_Message) return String;

private
   overriding
   function Constructor
     (Stream : not null access Ada.Streams.Root_Stream_Type'Class)
      return WNC_Message;
end NMEA.Messages.WNC;
