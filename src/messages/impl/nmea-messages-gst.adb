package body NMEA.Messages.GST is


   -----------------
   -- Constructor --
   -----------------

   overriding function Constructor
     (Stream : not null access Ada.Streams.Root_Stream_Type'Class)
      return GST_Message
   is

   begin
      return Result : GST_Message do
          GST_Message'Read (Stream, Result);
      end return;
   end Constructor;

   overriding function Image (This : GST_Message) return String is separate;

begin
   Register ("GST", GST_Message'Tag);
end NMEA.Messages.GST;
