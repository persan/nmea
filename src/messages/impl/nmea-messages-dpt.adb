package body NMEA.Messages.DPT is


   -----------------
   -- Constructor --
   -----------------

   overriding function Constructor
     (Stream : not null access Ada.Streams.Root_Stream_Type'Class)
      return DPT_Message
   is

   begin
      return Result : DPT_Message do
          DPT_Message'Read (Stream, Result);
      end return;
   end Constructor;

   overriding function Image (This : DPT_Message) return String is separate;

begin
   Register ("DPT", DPT_Message'Tag);
end NMEA.Messages.DPT;
