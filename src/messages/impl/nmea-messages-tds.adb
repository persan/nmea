package body NMEA.Messages.TDS is


   -----------------
   -- Constructor --
   -----------------

   overriding function Constructor
     (Stream : not null access Ada.Streams.Root_Stream_Type'Class)
      return TDS_Message
   is

   begin
      return Result : TDS_Message do
          TDS_Message'Read (Stream, Result);
      end return;
   end Constructor;

   overriding function Image (This : TDS_Message) return String is separate;

begin
   Register ("TDS", TDS_Message'Tag);
end NMEA.Messages.TDS;
