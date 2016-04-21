package body NMEA.Messages.VLW is


   -----------------
   -- Constructor --
   -----------------

   overriding function Constructor
     (Stream : not null access Ada.Streams.Root_Stream_Type'Class)
      return VLW_Message
   is

   begin
      return Result : VLW_Message do
          VLW_Message'Read (Stream, Result);
      end return;
   end Constructor;

   overriding function Image (This : VLW_Message) return String is separate;

begin
   Register ("VLW", VLW_Message'Tag);
end NMEA.Messages.VLW;
