package body NMEA.Messages.RSD is


   -----------------
   -- Constructor --
   -----------------

   overriding function Constructor
     (Stream : not null access Ada.Streams.Root_Stream_Type'Class)
      return RSD_Message
   is

   begin
      return Result : RSD_Message do
          RSD_Message'Read (Stream, Result);
      end return;
   end Constructor;

   overriding function Image (This : RSD_Message) return String is separate;

begin
   Register ("RSD", RSD_Message'Tag);
end NMEA.Messages.RSD;
