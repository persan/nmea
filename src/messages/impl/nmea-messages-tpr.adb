package body NMEA.Messages.TPR is


   -----------------
   -- Constructor --
   -----------------

   overriding function Constructor
     (Stream : not null access Ada.Streams.Root_Stream_Type'Class)
      return TPR_Message
   is

   begin
      return Result : TPR_Message do
          TPR_Message'Read (Stream, Result);
      end return;
   end Constructor;

   overriding function Image (This : TPR_Message) return String is separate;

begin
   Register ("TPR", TPR_Message'Tag);
end NMEA.Messages.TPR;
