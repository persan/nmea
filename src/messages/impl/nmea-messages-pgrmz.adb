package body NMEA.Messages.PGRMZ is


   -----------------
   -- Constructor --
   -----------------

   overriding function Constructor
     (Stream : not null access Ada.Streams.Root_Stream_Type'Class)
      return PGRMZ_Message
   is

   begin
      return Result : PGRMZ_Message do
          PGRMZ_Message'Read (Stream, Result);
      end return;
   end Constructor;

   overriding function Image (This : PGRMZ_Message) return String is separate;

begin
   Register ("PGRMZ", PGRMZ_Message'Tag);
end NMEA.Messages.PGRMZ;
