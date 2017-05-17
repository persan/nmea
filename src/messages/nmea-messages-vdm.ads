--  VDM - xx


package NMEA.Messages.VDM is
   type VDM_Message is new Message with record
      null;
   end record;

   overriding function Image (This : VDM_Message) return String;

private
   overriding
   function Constructor
     (Stream : not null access Ada.Streams.Root_Stream_Type'Class)
      return VDM_Message;
end NMEA.Messages.VDM;
