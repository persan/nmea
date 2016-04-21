package body NMEA.Messages.VDO is


   -----------------
   -- Constructor --
   -----------------

   overriding function Constructor
     (Stream : not null access Ada.Streams.Root_Stream_Type'Class)
      return VDO_Message
   is

   begin
      return Result : VDO_Message do
          VDO_Message'Read (Stream, Result);
      end return;
   end Constructor;

   overriding function Image (This : VDO_Message) return String is separate;

begin
   Register ("VDO", VDO_Message'Tag);
end NMEA.Messages.VDO;
