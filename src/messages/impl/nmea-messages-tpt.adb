package body NMEA.Messages.TPT is


   -----------------
   -- Constructor --
   -----------------

   overriding function Constructor
     (Stream : not null access Ada.Streams.Root_Stream_Type'Class)
      return TPT_Message
   is

   begin
      return Result : TPT_Message do
          TPT_Message'Read (Stream, Result);
      end return;
   end Constructor;

   overriding function Image (This : TPT_Message) return String is separate;

begin
   Register ("TPT", TPT_Message'Tag);
end NMEA.Messages.TPT;
