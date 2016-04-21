package body NMEA.Messages.DCN is


   -----------------
   -- Constructor --
   -----------------

   overriding function Constructor
     (Stream : not null access Ada.Streams.Root_Stream_Type'Class)
      return DCN_Message
   is

   begin
      return Result : DCN_Message do
          DCN_Message'Read (Stream, Result);
      end return;
   end Constructor;

   overriding function Image (This : DCN_Message) return String is separate;

begin
   Register ("DCN", DCN_Message'Tag);
end NMEA.Messages.DCN;
