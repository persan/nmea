package body NMEA.Messages.GPGSV is


   -----------------
   -- Constructor --
   -----------------

   overriding function Constructor
     (Stream : not null access Ada.Streams.Root_Stream_Type'Class)
      return GPGSV_Message
   is

   begin
      return Result : GPGSV_Message do
          GPGSV_Message'Read (Stream, Result);
      end return;
   end Constructor;

   overriding function Image (This : GPGSV_Message) return String is separate;

begin
   Register ("GPGSV", GPGSV_Message'Tag);
end NMEA.Messages.GPGSV;
