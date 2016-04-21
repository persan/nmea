package body NMEA.Messages.HSC is


   -----------------
   -- Constructor --
   -----------------

   overriding function Constructor
     (Stream : not null access Ada.Streams.Root_Stream_Type'Class)
      return HSC_Message
   is

   begin
      return Result : HSC_Message do
          HSC_Message'Read (Stream, Result);
      end return;
   end Constructor;

   overriding function Image (This : HSC_Message) return String is separate;

begin
   Register ("HSC", HSC_Message'Tag);
end NMEA.Messages.HSC;
