package body NMEA.Messages.RME is


   -----------------
   -- Constructor --
   -----------------

   overriding function Constructor
     (Stream : not null access Ada.Streams.Root_Stream_Type'Class)
      return RME_Message
   is

   begin
      return Result : RME_Message do
          RME_Message'Read (Stream, Result);
      end return;
   end Constructor;

   overriding function Image (This : RME_Message) return String is separate;

begin
   Register ("RME", RME_Message'Tag);
end NMEA.Messages.RME;
