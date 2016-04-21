package body NMEA.Messages.MSS is


   -----------------
   -- Constructor --
   -----------------

   overriding function Constructor
     (Stream : not null access Ada.Streams.Root_Stream_Type'Class)
      return MSS_Message
   is

   begin
      return Result : MSS_Message do
          MSS_Message'Read (Stream, Result);
      end return;
   end Constructor;

   overriding function Image (This : MSS_Message) return String is separate;

begin
   Register ("MSS", MSS_Message'Tag);
end NMEA.Messages.MSS;
