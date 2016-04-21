package body NMEA.Messages.ZFO is


   -----------------
   -- Constructor --
   -----------------

   overriding function Constructor
     (Stream : not null access Ada.Streams.Root_Stream_Type'Class)
      return ZFO_Message
   is

   begin
      return Result : ZFO_Message do
          ZFO_Message'Read (Stream, Result);
      end return;
   end Constructor;

   overriding function Image (This : ZFO_Message) return String is separate;

begin
   Register ("ZFO", ZFO_Message'Tag);
end NMEA.Messages.ZFO;
