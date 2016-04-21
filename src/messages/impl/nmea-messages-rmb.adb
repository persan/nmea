package body NMEA.Messages.RMB is


   -----------------
   -- Constructor --
   -----------------

   overriding function Constructor
     (Stream : not null access Ada.Streams.Root_Stream_Type'Class)
      return RMB_Message
   is

   begin
      return Result : RMB_Message do
          RMB_Message'Read (Stream, Result);
      end return;
   end Constructor;

   overriding function Image (This : RMB_Message) return String is separate;

begin
   Register ("RMB", RMB_Message'Tag);
end NMEA.Messages.RMB;
