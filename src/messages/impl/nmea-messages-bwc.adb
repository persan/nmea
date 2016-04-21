package body NMEA.Messages.BWC is


   -----------------
   -- Constructor --
   -----------------

   overriding function Constructor
     (Stream : not null access Ada.Streams.Root_Stream_Type'Class)
      return BWC_Message
   is

   begin
      return Result : BWC_Message do
          BWC_Message'Read (Stream, Result);
      end return;
   end Constructor;

   overriding function Image (This : BWC_Message) return String is separate;

begin
   Register ("BWC", BWC_Message'Tag);
end NMEA.Messages.BWC;
