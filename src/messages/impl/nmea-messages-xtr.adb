package body NMEA.Messages.XTR is


   -----------------
   -- Constructor --
   -----------------

   overriding function Constructor
     (Stream : not null access Ada.Streams.Root_Stream_Type'Class)
      return XTR_Message
   is

   begin
      return Result : XTR_Message do
          XTR_Message'Read (Stream, Result);
      end return;
   end Constructor;

   overriding function Image (This : XTR_Message) return String is separate;

begin
   Register ("XTR", XTR_Message'Tag);
end NMEA.Messages.XTR;
