package body NMEA.Messages.GTD is


   -----------------
   -- Constructor --
   -----------------

   overriding function Constructor
     (Stream : not null access Ada.Streams.Root_Stream_Type'Class)
      return GTD_Message
   is

   begin
      return Result : GTD_Message do
          GTD_Message'Read (Stream, Result);
      end return;
   end Constructor;

   overriding function Image (This : GTD_Message) return String is separate;

begin
   Register ("GTD", GTD_Message'Tag);
end NMEA.Messages.GTD;
