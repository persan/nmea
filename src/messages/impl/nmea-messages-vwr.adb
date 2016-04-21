package body NMEA.Messages.VWR is


   -----------------
   -- Constructor --
   -----------------

   overriding function Constructor
     (Stream : not null access Ada.Streams.Root_Stream_Type'Class)
      return VWR_Message
   is

   begin
      return Result : VWR_Message do
          VWR_Message'Read (Stream, Result);
      end return;
   end Constructor;

   overriding function Image (This : VWR_Message) return String is separate;

begin
   Register ("VWR", VWR_Message'Tag);
end NMEA.Messages.VWR;
