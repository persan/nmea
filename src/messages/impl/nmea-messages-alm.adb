package body NMEA.Messages.ALM is


   -----------------
   -- Constructor --
   -----------------

   overriding function Constructor
     (Stream : not null access Ada.Streams.Root_Stream_Type'Class)
      return ALM_Message
   is

   begin
      return Result : ALM_Message do
          ALM_Message'Read (Stream, Result);
      end return;
   end Constructor;

   overriding function Image (This : ALM_Message) return String is separate;

begin
   Register ("ALM", ALM_Message'Tag);
end NMEA.Messages.ALM;
