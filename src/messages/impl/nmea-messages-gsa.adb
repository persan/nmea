package body NMEA.Messages.GSA is


   -----------------
   -- Constructor --
   -----------------

   overriding function Constructor
     (Stream : not null access Ada.Streams.Root_Stream_Type'Class)
      return GSA_Message
   is

   begin
      return Result : GSA_Message do
          GSA_Message'Read (Stream, Result);
      end return;
   end Constructor;

   overriding function Image (This : GSA_Message) return String is separate;

begin
   Register ("GSA", GSA_Message'Tag);
end NMEA.Messages.GSA;
