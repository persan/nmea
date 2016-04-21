package body NMEA.Messages.WCV is


   -----------------
   -- Constructor --
   -----------------

   overriding function Constructor
     (Stream : not null access Ada.Streams.Root_Stream_Type'Class)
      return WCV_Message
   is

   begin
      return Result : WCV_Message do
          WCV_Message'Read (Stream, Result);
      end return;
   end Constructor;

   overriding function Image (This : WCV_Message) return String is separate;

begin
   Register ("WCV", WCV_Message'Tag);
end NMEA.Messages.WCV;
