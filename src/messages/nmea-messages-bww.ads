--  BWW - Bearing - Waypoint to Waypoint
--  Bearing calculated at the FROM waypoint.
--          1   2 3   4 5    6    7
--          |   | |   | |    |    |
--   $--BWW,x.x,T,x.x,M,c--c,c--c*hh<CR><LF>
--   Field Number:
--  1. Bearing Degrees, TRUE
--  2. T = True
--  3. Bearing Degrees, Magnetic
--  4. M = Magnetic
--  5. TO Waypoint
--  6. FROM Waypoint
--  7. Checksum

package NMEA.Messages.BWW is
   type BWW_Message is new Message with record
     null;
   end record;

   overriding function Image (This : BWW_Message) return String;

private
   overriding
   function Constructor
     (Stream : not null access Ada.Streams.Root_Stream_Type'Class)
      return BWW_Message;
end NMEA.Messages.BWW;
