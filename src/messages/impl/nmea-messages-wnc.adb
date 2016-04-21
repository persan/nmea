package body NMEA.Messages.WNC is


   -----------------
   -- Constructor --
   -----------------

   overriding function Constructor
     (Stream : not null access Ada.Streams.Root_Stream_Type'Class)
      return WNC_Message
   is

   begin
      return Result : WNC_Message do
          WNC_Message'Read (Stream, Result);
      end return;
   end Constructor;

   overriding function Image (This : WNC_Message) return String is separate;

begin
   Register ("WNC", WNC_Message'Tag);
end NMEA.Messages.WNC;
