package body NMEA.Messages.PGRMM is


   -----------------
   -- Constructor --
   -----------------

   overriding function Constructor
     (Stream : not null access Ada.Streams.Root_Stream_Type'Class)
      return PGRMM_Message
   is

   begin
      return Result : PGRMM_Message do
          PGRMM_Message'Read (Stream, Result);
      end return;
   end Constructor;

   overriding function Image (This : PGRMM_Message) return String is separate;

begin
   Register ("PGRMM", PGRMM_Message'Tag);
end NMEA.Messages.PGRMM;
