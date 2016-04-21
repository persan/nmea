package body NMEA.Messages.CGA is


   -----------------
   -- Constructor --
   -----------------

   overriding function Constructor
     (Stream : not null access Ada.Streams.Root_Stream_Type'Class)
      return CGA_Message
   is

   begin
      return Result : CGA_Message do
          CGA_Message'Read (Stream, Result);
      end return;
   end Constructor;

   overriding function Image (This : CGA_Message) return String is separate;

begin
   Register ("CGA", CGA_Message'Tag);
end NMEA.Messages.CGA;
