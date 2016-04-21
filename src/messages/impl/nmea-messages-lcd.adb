package body NMEA.Messages.LCD is


   -----------------
   -- Constructor --
   -----------------

   overriding function Constructor
     (Stream : not null access Ada.Streams.Root_Stream_Type'Class)
      return LCD_Message
   is

   begin
      return Result : LCD_Message do
          LCD_Message'Read (Stream, Result);
      end return;
   end Constructor;

   overriding function Image (This : LCD_Message) return String is separate;

begin
   Register ("LCD", LCD_Message'Tag);
end NMEA.Messages.LCD;
