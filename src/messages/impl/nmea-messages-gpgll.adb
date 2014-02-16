package body NMEA.Messages.GPGLL is


   -----------------
   -- Constructor --
   -----------------

   overriding function Constructor
     (Stream : not null access Ada.Streams.Root_Stream_Type'Class)
      return GPGLL_Message
   is

   begin
      return Result : GPGLL_Message do
          GPGLL_Message'Read (Stream, Result);
      end return;
   end Constructor;

   overriding function Image (This : GPGLL_Message) return String is separate;

begin
   Register ("GPGLL", GPGLL_Message'Tag);
end NMEA.Messages.GPGLL;
