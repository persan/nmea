package body NMEA.Messages.ROT is


   -----------------
   -- Constructor --
   -----------------

   overriding function Constructor
     (Stream : not null access Ada.Streams.Root_Stream_Type'Class)
      return ROT_Message
   is

   begin
      return Result : ROT_Message do
          ROT_Message'Read (Stream, Result);
      end return;
   end Constructor;

   overriding function Image (This : ROT_Message) return String is separate;

begin
   Register ("ROT", ROT_Message'Tag);
end NMEA.Messages.ROT;
