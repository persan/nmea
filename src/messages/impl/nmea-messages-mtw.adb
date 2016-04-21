package body NMEA.Messages.MTW is


   -----------------
   -- Constructor --
   -----------------

   overriding function Constructor
     (Stream : not null access Ada.Streams.Root_Stream_Type'Class)
      return MTW_Message
   is

   begin
      return Result : MTW_Message do
          MTW_Message'Read (Stream, Result);
      end return;
   end Constructor;

   overriding function Image (This : MTW_Message) return String is separate;

begin
   Register ("MTW", MTW_Message'Tag);
end NMEA.Messages.MTW;
