package body NMEA.Messages.SFI is


   -----------------
   -- Constructor --
   -----------------

   overriding function Constructor
     (Stream : not null access Ada.Streams.Root_Stream_Type'Class)
      return SFI_Message
   is

   begin
      return Result : SFI_Message do
          SFI_Message'Read (Stream, Result);
      end return;
   end Constructor;

   overriding function Image (This : SFI_Message) return String is separate;

begin
   Register ("SFI", SFI_Message'Tag);
end NMEA.Messages.SFI;
