package body NMEA.Messages.WPL is


   -----------------
   -- Constructor --
   -----------------

   overriding function Constructor
     (Stream : not null access Ada.Streams.Root_Stream_Type'Class)
      return WPL_Message
   is

   begin
      return Result : WPL_Message do
          WPL_Message'Read (Stream, Result);
      end return;
   end Constructor;

   overriding function Image (This : WPL_Message) return String is separate;

begin
   Register ("WPL", WPL_Message'Tag);
end NMEA.Messages.WPL;
