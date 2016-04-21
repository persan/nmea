package body NMEA.Messages.GBS is


   -----------------
   -- Constructor --
   -----------------

   overriding function Constructor
     (Stream : not null access Ada.Streams.Root_Stream_Type'Class)
      return GBS_Message
   is

   begin
      return Result : GBS_Message do
          GBS_Message'Read (Stream, Result);
      end return;
   end Constructor;

   overriding function Image (This : GBS_Message) return String is separate;

begin
   Register ("GBS", GBS_Message'Tag);
end NMEA.Messages.GBS;
