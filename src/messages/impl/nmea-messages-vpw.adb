package body NMEA.Messages.VPW is


   -----------------
   -- Constructor --
   -----------------

   overriding function Constructor
     (Stream : not null access Ada.Streams.Root_Stream_Type'Class)
      return VPW_Message
   is

   begin
      return Result : VPW_Message do
          VPW_Message'Read (Stream, Result);
      end return;
   end Constructor;

   overriding function Image (This : VPW_Message) return String is separate;

begin
   Register ("VPW", VPW_Message'Tag);
end NMEA.Messages.VPW;
