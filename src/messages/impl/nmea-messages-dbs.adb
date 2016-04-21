package body NMEA.Messages.DBS is


   -----------------
   -- Constructor --
   -----------------

   overriding function Constructor
     (Stream : not null access Ada.Streams.Root_Stream_Type'Class)
      return DBS_Message
   is

   begin
      return Result : DBS_Message do
          DBS_Message'Read (Stream, Result);
      end return;
   end Constructor;

   overriding function Image (This : DBS_Message) return String is separate;

begin
   Register ("DBS", DBS_Message'Tag);
end NMEA.Messages.DBS;
