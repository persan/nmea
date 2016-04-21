package body NMEA.Messages.BWR is


   -----------------
   -- Constructor --
   -----------------

   overriding function Constructor
     (Stream : not null access Ada.Streams.Root_Stream_Type'Class)
      return BWR_Message
   is

   begin
      return Result : BWR_Message do
          BWR_Message'Read (Stream, Result);
      end return;
   end Constructor;

   overriding function Image (This : BWR_Message) return String is separate;

begin
   Register ("BWR", BWR_Message'Tag);
end NMEA.Messages.BWR;
