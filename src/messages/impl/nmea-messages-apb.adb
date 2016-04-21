package body NMEA.Messages.APB is


   -----------------
   -- Constructor --
   -----------------

   overriding function Constructor
     (Stream : not null access Ada.Streams.Root_Stream_Type'Class)
      return APB_Message
   is

   begin
      return Result : APB_Message do
          APB_Message'Read (Stream, Result);
      end return;
   end Constructor;

   overriding function Image (This : APB_Message) return String is separate;

begin
   Register ("APB", APB_Message'Tag);
end NMEA.Messages.APB;
