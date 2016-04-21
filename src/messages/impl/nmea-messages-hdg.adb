package body NMEA.Messages.HDG is


   -----------------
   -- Constructor --
   -----------------

   overriding function Constructor
     (Stream : not null access Ada.Streams.Root_Stream_Type'Class)
      return HDG_Message
   is

   begin
      return Result : HDG_Message do
          HDG_Message'Read (Stream, Result);
      end return;
   end Constructor;

   overriding function Image (This : HDG_Message) return String is separate;

begin
   Register ("HDG", HDG_Message'Tag);
end NMEA.Messages.HDG;
