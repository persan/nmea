package body NMEA.Messages.XDR is


   -----------------
   -- Constructor --
   -----------------

   overriding function Constructor
     (Stream : not null access Ada.Streams.Root_Stream_Type'Class)
      return XDR_Message
   is

   begin
      return Result : XDR_Message do
          XDR_Message'Read (Stream, Result);
      end return;
   end Constructor;

   overriding function Image (This : XDR_Message) return String is separate;

begin
   Register ("XDR", XDR_Message'Tag);
end NMEA.Messages.XDR;
