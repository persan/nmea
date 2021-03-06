package body NMEA.Messages.GLL is


   -----------------
   -- Constructor --
   -----------------

   overriding function Constructor
     (Stream : not null access Ada.Streams.Root_Stream_Type'Class)
      return GLL_Message
   is

   begin
      return Result : GLL_Message do
          GLL_Message'Read (Stream, Result);
      end return;
   end Constructor;

   overriding function Image (This : GLL_Message) return String is separate;

begin
   Register ("GLL", GLL_Message'Tag);
end NMEA.Messages.GLL;
