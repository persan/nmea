package body NMEA.Messages.HFB is


   -----------------
   -- Constructor --
   -----------------

   overriding function Constructor
     (Stream : not null access Ada.Streams.Root_Stream_Type'Class)
      return HFB_Message
   is

   begin
      return Result : HFB_Message do
          HFB_Message'Read (Stream, Result);
      end return;
   end Constructor;

   overriding function Image (This : HFB_Message) return String is separate;

begin
   Register ("HFB", HFB_Message'Tag);
end NMEA.Messages.HFB;
