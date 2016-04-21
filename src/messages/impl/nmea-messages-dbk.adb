package body NMEA.Messages.DBK is


   -----------------
   -- Constructor --
   -----------------

   overriding function Constructor
     (Stream : not null access Ada.Streams.Root_Stream_Type'Class)
      return DBK_Message
   is

   begin
      return Result : DBK_Message do
          DBK_Message'Read (Stream, Result);
      end return;
   end Constructor;

   overriding function Image (This : DBK_Message) return String is separate;

begin
   Register ("DBK", DBK_Message'Tag);
end NMEA.Messages.DBK;
