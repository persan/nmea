package body NMEA.Messages.DTM is


   -----------------
   -- Constructor --
   -----------------

   overriding function Constructor
     (Stream : not null access Ada.Streams.Root_Stream_Type'Class)
      return DTM_Message
   is

   begin
      return Result : DTM_Message do
          DTM_Message'Read (Stream, Result);
      end return;
   end Constructor;

   overriding function Image (This : DTM_Message) return String is separate;

begin
   Register ("DTM", DTM_Message'Tag);
end NMEA.Messages.DTM;
