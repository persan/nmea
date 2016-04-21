package body NMEA.Messages.TFI is


   -----------------
   -- Constructor --
   -----------------

   overriding function Constructor
     (Stream : not null access Ada.Streams.Root_Stream_Type'Class)
      return TFI_Message
   is

   begin
      return Result : TFI_Message do
          TFI_Message'Read (Stream, Result);
      end return;
   end Constructor;

   overriding function Image (This : TFI_Message) return String is separate;

begin
   Register ("TFI", TFI_Message'Tag);
end NMEA.Messages.TFI;
