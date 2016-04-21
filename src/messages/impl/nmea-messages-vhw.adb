package body NMEA.Messages.VHW is


   -----------------
   -- Constructor --
   -----------------

   overriding function Constructor
     (Stream : not null access Ada.Streams.Root_Stream_Type'Class)
      return VHW_Message
   is

   begin
      return Result : VHW_Message do
          VHW_Message'Read (Stream, Result);
      end return;
   end Constructor;

   overriding function Image (This : VHW_Message) return String is separate;

begin
   Register ("VHW", VHW_Message'Tag);
end NMEA.Messages.VHW;
