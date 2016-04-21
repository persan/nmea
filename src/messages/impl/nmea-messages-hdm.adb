package body NMEA.Messages.HDM is


   -----------------
   -- Constructor --
   -----------------

   overriding function Constructor
     (Stream : not null access Ada.Streams.Root_Stream_Type'Class)
      return HDM_Message
   is

   begin
      return Result : HDM_Message do
          HDM_Message'Read (Stream, Result);
      end return;
   end Constructor;

   overriding function Image (This : HDM_Message) return String is separate;

begin
   Register ("HDM", HDM_Message'Tag);
end NMEA.Messages.HDM;
