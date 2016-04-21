package body NMEA.Messages.FSI is


   -----------------
   -- Constructor --
   -----------------

   overriding function Constructor
     (Stream : not null access Ada.Streams.Root_Stream_Type'Class)
      return FSI_Message
   is

   begin
      return Result : FSI_Message do
          FSI_Message'Read (Stream, Result);
      end return;
   end Constructor;

   overriding function Image (This : FSI_Message) return String is separate;

begin
   Register ("FSI", FSI_Message'Tag);
end NMEA.Messages.FSI;
