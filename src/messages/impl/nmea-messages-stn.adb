package body NMEA.Messages.STN is


   -----------------
   -- Constructor --
   -----------------

   overriding function Constructor
     (Stream : not null access Ada.Streams.Root_Stream_Type'Class)
      return STN_Message
   is

   begin
      return Result : STN_Message do
          STN_Message'Read (Stream, Result);
      end return;
   end Constructor;

   overriding function Image (This : STN_Message) return String is separate;

begin
   Register ("STN", STN_Message'Tag);
end NMEA.Messages.STN;
