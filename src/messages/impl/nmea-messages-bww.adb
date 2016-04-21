package body NMEA.Messages.BWW is


   -----------------
   -- Constructor --
   -----------------

   overriding function Constructor
     (Stream : not null access Ada.Streams.Root_Stream_Type'Class)
      return BWW_Message
   is

   begin
      return Result : BWW_Message do
          BWW_Message'Read (Stream, Result);
      end return;
   end Constructor;

   overriding function Image (This : BWW_Message) return String is separate;

begin
   Register ("BWW", BWW_Message'Tag);
end NMEA.Messages.BWW;
