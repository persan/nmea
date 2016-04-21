package body NMEA.Messages.OLN is


   -----------------
   -- Constructor --
   -----------------

   overriding function Constructor
     (Stream : not null access Ada.Streams.Root_Stream_Type'Class)
      return OLN_Message
   is

   begin
      return Result : OLN_Message do
          OLN_Message'Read (Stream, Result);
      end return;
   end Constructor;

   overriding function Image (This : OLN_Message) return String is separate;

begin
   Register ("OLN", OLN_Message'Tag);
end NMEA.Messages.OLN;
