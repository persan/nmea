package body NMEA.Messages.ITS is


   -----------------
   -- Constructor --
   -----------------

   overriding function Constructor
     (Stream : not null access Ada.Streams.Root_Stream_Type'Class)
      return ITS_Message
   is

   begin
      return Result : ITS_Message do
          ITS_Message'Read (Stream, Result);
      end return;
   end Constructor;

   overriding function Image (This : ITS_Message) return String is separate;

begin
   Register ("ITS", ITS_Message'Tag);
end NMEA.Messages.ITS;
