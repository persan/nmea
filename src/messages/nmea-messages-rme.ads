--  RME -
--                                                      12
--  Estimated Position Error
--
--  eg. $PGRME,15.0,M,45.0,M,25.0,M*22
--
--
--             15.0,M       Estimated horizontal position error in metres (HPE)
--             45.0,M       Estimated vertical error (VPE) in metres
--             25.0,M       Overall spherical equivalent position error

package NMEA.Messages.RME is
   type RME_Message is new Message with record
      null;
   end record;

   overriding function Image (This : RME_Message) return String;

private
   overriding
   function Constructor
     (Stream : not null access Ada.Streams.Root_Stream_Type'Class)
      return RME_Message;
end NMEA.Messages.RME;
