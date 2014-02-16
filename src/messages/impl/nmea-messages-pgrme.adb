package body NMEA.Messages.PGRME is


   -----------------
   -- Constructor --
   -----------------

   overriding function Constructor
     (Stream : not null access Ada.Streams.Root_Stream_Type'Class)
      return PGRME_Message
   is

   begin
      return Result : PGRME_Message do
          PGRME_Message'Read (Stream, Result);
      end return;
   end Constructor;

   overriding function Image (This : PGRME_Message) return String is separate;

begin
   Register ("PGRME", PGRME_Message'Tag);
end NMEA.Messages.PGRME;
