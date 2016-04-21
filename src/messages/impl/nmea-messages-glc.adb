package body NMEA.Messages.GLC is


   -----------------
   -- Constructor --
   -----------------

   overriding function Constructor
     (Stream : not null access Ada.Streams.Root_Stream_Type'Class)
      return GLC_Message
   is

   begin
      return Result : GLC_Message do
          GLC_Message'Read (Stream, Result);
      end return;
   end Constructor;

   overriding function Image (This : GLC_Message) return String is separate;

begin
   Register ("GLC", GLC_Message'Tag);
end NMEA.Messages.GLC;
