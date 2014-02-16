package body NMEA.Messages.GPRMB is


   -----------------
   -- Constructor --
   -----------------

   overriding function Constructor
     (Stream : not null access Ada.Streams.Root_Stream_Type'Class)
      return GPRMB_Message
   is

   begin
      return Result : GPRMB_Message do
          GPRMB_Message'Read (Stream, Result);
      end return;
   end Constructor;

   overriding function Image (This : GPRMB_Message) return String is separate;

begin
   Register ("GPRMB", GPRMB_Message'Tag);
end NMEA.Messages.GPRMB;
