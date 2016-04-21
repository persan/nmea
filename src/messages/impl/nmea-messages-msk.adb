package body NMEA.Messages.MSK is


   -----------------
   -- Constructor --
   -----------------

   overriding function Constructor
     (Stream : not null access Ada.Streams.Root_Stream_Type'Class)
      return MSK_Message
   is

   begin
      return Result : MSK_Message do
          MSK_Message'Read (Stream, Result);
      end return;
   end Constructor;

   overriding function Image (This : MSK_Message) return String is separate;

begin
   Register ("MSK", MSK_Message'Tag);
end NMEA.Messages.MSK;
