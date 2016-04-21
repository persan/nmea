package body NMEA.Messages.OSD is


   -----------------
   -- Constructor --
   -----------------

   overriding function Constructor
     (Stream : not null access Ada.Streams.Root_Stream_Type'Class)
      return OSD_Message
   is

   begin
      return Result : OSD_Message do
          OSD_Message'Read (Stream, Result);
      end return;
   end Constructor;

   overriding function Image (This : OSD_Message) return String is separate;

begin
   Register ("OSD", OSD_Message'Tag);
end NMEA.Messages.OSD;
