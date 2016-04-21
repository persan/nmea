package body NMEA.Messages.DBT is


   -----------------
   -- Constructor --
   -----------------

   overriding function Constructor
     (Stream : not null access Ada.Streams.Root_Stream_Type'Class)
      return DBT_Message
   is

   begin
      return Result : DBT_Message do
          DBT_Message'Read (Stream, Result);
      end return;
   end Constructor;

   overriding function Image (This : DBT_Message) return String is separate;

begin
   Register ("DBT", DBT_Message'Tag);
end NMEA.Messages.DBT;
