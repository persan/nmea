package body NMEA.Messages.ZDA is


   -----------------
   -- Constructor --
   -----------------

   overriding function Constructor
     (Stream : not null access Ada.Streams.Root_Stream_Type'Class)
      return ZDA_Message
   is

   begin
      return Result : ZDA_Message do
          ZDA_Message'Read (Stream, Result);
      end return;
   end Constructor;

   overriding function Image (This : ZDA_Message) return String is separate;

begin
   Register ("ZDA", ZDA_Message'Tag);
end NMEA.Messages.ZDA;
