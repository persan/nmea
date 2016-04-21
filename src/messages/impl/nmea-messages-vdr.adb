package body NMEA.Messages.VDR is


   -----------------
   -- Constructor --
   -----------------

   overriding function Constructor
     (Stream : not null access Ada.Streams.Root_Stream_Type'Class)
      return VDR_Message
   is

   begin
      return Result : VDR_Message do
          VDR_Message'Read (Stream, Result);
      end return;
   end Constructor;

   overriding function Image (This : VDR_Message) return String is separate;

begin
   Register ("VDR", VDR_Message'Tag);
end NMEA.Messages.VDR;
