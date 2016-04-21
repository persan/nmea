package body NMEA.Messages.RMA is


   -----------------
   -- Constructor --
   -----------------

   overriding function Constructor
     (Stream : not null access Ada.Streams.Root_Stream_Type'Class)
      return RMA_Message
   is

   begin
      return Result : RMA_Message do
          RMA_Message'Read (Stream, Result);
      end return;
   end Constructor;

   overriding function Image (This : RMA_Message) return String is separate;

begin
   Register ("RMA", RMA_Message'Tag);
end NMEA.Messages.RMA;
