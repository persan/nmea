package body NMEA.Messages.APA is


   -----------------
   -- Constructor --
   -----------------

   overriding function Constructor
     (Stream : not null access Ada.Streams.Root_Stream_Type'Class)
      return APA_Message
   is

   begin
      return Result : APA_Message do
          APA_Message'Read (Stream, Result);
      end return;
   end Constructor;

   overriding function Image (This : APA_Message) return String is separate;

begin
   Register ("APA", APA_Message'Tag);
end NMEA.Messages.APA;
