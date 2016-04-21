package body NMEA.Messages.BOD is


   -----------------
   -- Constructor --
   -----------------

   overriding function Constructor
     (Stream : not null access Ada.Streams.Root_Stream_Type'Class)
      return BOD_Message
   is

   begin
      return Result : BOD_Message do
          BOD_Message'Read (Stream, Result);
      end return;
   end Constructor;

   overriding function Image (This : BOD_Message) return String is separate;

begin
   Register ("BOD", BOD_Message'Tag);
end NMEA.Messages.BOD;
