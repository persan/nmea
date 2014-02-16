package body NMEA.Messages.GPGGA is


   -----------------
   -- Constructor --
   -----------------

   overriding function Constructor
     (Stream : not null access Ada.Streams.Root_Stream_Type'Class)
      return GPGGA_Message
   is

   begin
      return Result : GPGGA_Message do
          GPGGA_Message'Read (Stream, Result);
      end return;
   end Constructor;

   overriding function Image (This : GPGGA_Message) return String is separate;

begin
   Register ("GPGGA", GPGGA_Message'Tag);
end NMEA.Messages.GPGGA;
