package body NMEA.Messages.HDT is


   -----------------
   -- Constructor --
   -----------------

   overriding function Constructor
     (Stream : not null access Ada.Streams.Root_Stream_Type'Class)
      return HDT_Message
   is

   begin
      return Result : HDT_Message do
          HDT_Message'Read (Stream, Result);
      end return;
   end Constructor;

   overriding function Image (This : HDT_Message) return String is separate;

begin
   Register ("HDT", HDT_Message'Tag);
end NMEA.Messages.HDT;
