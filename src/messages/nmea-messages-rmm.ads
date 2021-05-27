--  RMM - Dummy
--  Map datum
--
--  eg1. $PGRMM,Astrln Geod '66*51
--  eg2. $PGRMM,NAD27 Canada*2F
--
--
--         Currently active horizontal datum

package NMEA.Messages.RMM is
   type RMM_Message is new Message with record
      null;
   end record;

   overriding function Image (This : RMM_Message) return String;

private
   overriding
   function Constructor
     (Stream : not null access Ada.Streams.Root_Stream_Type'Class)
      return RMM_Message;
end NMEA.Messages.RMM;
