package body NMEA.Messages.TRF is


   -----------------
   -- Constructor --
   -----------------

   overriding function Constructor
     (Stream : not null access Ada.Streams.Root_Stream_Type'Class)
      return TRF_Message
   is

   begin
      return Result : TRF_Message do
          TRF_Message'Read (Stream, Result);
      end return;
   end Constructor;

   overriding function Image (This : TRF_Message) return String is separate;

begin
   Register ("TRF", TRF_Message'Tag);
end NMEA.Messages.TRF;
