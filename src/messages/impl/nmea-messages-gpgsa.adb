package body NMEA.Messages.GPGSA is


   -----------------
   -- Constructor --
   -----------------

   overriding function Constructor
     (Stream : not null access Ada.Streams.Root_Stream_Type'Class)
      return GPGSA_Message
   is

   begin
      return Result : GPGSA_Message do
          GPGSA_Message'Read (Stream, Result);
      end return;
   end Constructor;

   overriding function Image (This : GPGSA_Message) return String is separate;

begin
   Register ("GPGSA", GPGSA_Message'Tag);
end NMEA.Messages.GPGSA;
