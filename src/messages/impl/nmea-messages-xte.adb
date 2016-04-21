package body NMEA.Messages.XTE is


   -----------------
   -- Constructor --
   -----------------

   overriding function Constructor
     (Stream : not null access Ada.Streams.Root_Stream_Type'Class)
      return XTE_Message
   is

   begin
      return Result : XTE_Message do
          XTE_Message'Read (Stream, Result);
      end return;
   end Constructor;

   overriding function Image (This : XTE_Message) return String is separate;

begin
   Register ("XTE", XTE_Message'Tag);
end NMEA.Messages.XTE;
