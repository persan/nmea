package body NMEA.Messages.GPBOD is


   -----------------
   -- Constructor --
   -----------------

   overriding function Constructor
     (Stream : not null access Ada.Streams.Root_Stream_Type'Class)
      return GPBOD_Message
   is

   begin
      return Result : GPBOD_Message do
          GPBOD_Message'Read (Stream, Result);
      end return;
   end Constructor;

   overriding function Image (This : GPBOD_Message) return String is separate;

begin
   Register ("GPBOD", GPBOD_Message'Tag);
end NMEA.Messages.GPBOD;
