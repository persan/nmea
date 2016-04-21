package body NMEA.Messages.GGA is


   -----------------
   -- Constructor --
   -----------------

   overriding function Constructor
     (Stream : not null access Ada.Streams.Root_Stream_Type'Class)
      return GGA_Message
   is

   begin
      return Result : GGA_Message do
          GGA_Message'Read (Stream, Result);
      end return;
   end Constructor;

   overriding function Image (This : GGA_Message) return String is separate;

begin
   Register ("GGA", GGA_Message'Tag);
end NMEA.Messages.GGA;
