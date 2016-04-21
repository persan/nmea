package body NMEA.Messages.ZTG is


   -----------------
   -- Constructor --
   -----------------

   overriding function Constructor
     (Stream : not null access Ada.Streams.Root_Stream_Type'Class)
      return ZTG_Message
   is

   begin
      return Result : ZTG_Message do
          ZTG_Message'Read (Stream, Result);
      end return;
   end Constructor;

   overriding function Image (This : ZTG_Message) return String is separate;

begin
   Register ("ZTG", ZTG_Message'Tag);
end NMEA.Messages.ZTG;
