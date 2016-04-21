package body NMEA.Messages.GNS is


   -----------------
   -- Constructor --
   -----------------

   overriding function Constructor
     (Stream : not null access Ada.Streams.Root_Stream_Type'Class)
      return GNS_Message
   is

   begin
      return Result : GNS_Message do
          GNS_Message'Read (Stream, Result);
      end return;
   end Constructor;

   overriding function Image (This : GNS_Message) return String is separate;

begin
   Register ("GNS", GNS_Message'Tag);
end NMEA.Messages.GNS;
