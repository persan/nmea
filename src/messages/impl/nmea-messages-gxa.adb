package body NMEA.Messages.GXA is


   -----------------
   -- Constructor --
   -----------------

   overriding function Constructor
     (Stream : not null access Ada.Streams.Root_Stream_Type'Class)
      return GXA_Message
   is

   begin
      return Result : GXA_Message do
          GXA_Message'Read (Stream, Result);
      end return;
   end Constructor;

   overriding function Image (This : GXA_Message) return String is separate;

begin
   Register ("GXA", GXA_Message'Tag);
end NMEA.Messages.GXA;
