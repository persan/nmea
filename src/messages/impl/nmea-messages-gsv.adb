package body NMEA.Messages.GSV is


   -----------------
   -- Constructor --
   -----------------

   overriding function Constructor
     (Stream : not null access Ada.Streams.Root_Stream_Type'Class)
      return GSV_Message
   is

   begin
      return Result : GSV_Message do
          GSV_Message'Read (Stream, Result);
      end return;
   end Constructor;

   overriding function Image (This : GSV_Message) return String is separate;

begin
   Register ("GSV", GSV_Message'Tag);
end NMEA.Messages.GSV;
