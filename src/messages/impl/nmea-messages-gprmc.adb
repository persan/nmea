package body NMEA.Messages.GPRMC is


   -----------------
   -- Constructor --
   -----------------

   overriding function Constructor
     (Stream : not null access Ada.Streams.Root_Stream_Type'Class)
      return GPRMC_Message
   is

   begin
      return Result : GPRMC_Message do
          GPRMC_Message'Read (Stream, Result);
      end return;
   end Constructor;

   overriding function Image (This : GPRMC_Message) return String is separate;

begin
   Register ("GPRMC", GPRMC_Message'Tag);
end NMEA.Messages.GPRMC;
