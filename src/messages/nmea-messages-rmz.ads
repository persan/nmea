-- RMZ
--  Altitude Information
--
--  eg1. $PGRMZ,246,f,3*1B
--  eg2. $PGRMZ,93,f,3*21
--
--
--        93,f         Altitude in feet
--         3            Position fix dimensions 2 = user altitude
--                                              3 = GPS altitude
--    This sentence shows in feet, regardless of units shown on the display.
--
--
--  eg3.  $PGRMZ,201,f,3*18
--                1  2 3
--
--
--        1  201   Altitude
--        2  F     Units - f-Feet
--        3  checksum
package NMEA.Messages.RMZ is
   type RMZ_Message is new Message with record
      null;
   end record;

   overriding function Image (This : RMZ_Message) return String;

private
   overriding
   function Constructor
     (Stream : not null access Ada.Streams.Root_Stream_Type'Class)
      return RMZ_Message;
end NMEA.Messages.RMZ;
