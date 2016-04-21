package NMEA.Messages.VDO is
   type VDO_Message is new Message with record
     null;
   end record;

   overriding function Image (This : VDO_Message) return String;

private
   overriding
   function Constructor
     (Stream : not null access Ada.Streams.Root_Stream_Type'Class)
      return VDO_Message;
end NMEA.Messages.VDO;
