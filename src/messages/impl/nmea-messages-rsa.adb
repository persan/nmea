package body NMEA.Messages.RSA is


   -----------------
   -- Constructor --
   -----------------

   overriding function Constructor
     (Stream : not null access Ada.Streams.Root_Stream_Type'Class)
      return RSA_Message
   is

   begin
      return Result : RSA_Message do
          RSA_Message'Read (Stream, Result);
      end return;
   end Constructor;

   overriding function Image (This : RSA_Message) return String is separate;

begin
   Register ("RSA", RSA_Message'Tag);
end NMEA.Messages.RSA;
