package body NMEA.Messages.VBW is


   -----------------
   -- Constructor --
   -----------------

   overriding function Constructor
     (Stream : not null access Ada.Streams.Root_Stream_Type'Class)
      return VBW_Message
   is

   begin
      return Result : VBW_Message do
         VBW_Message'Read (Stream, Result);
      end return;
   end Constructor;

   overriding function Image (This : VBW_Message) return String is separate;

begin
   Register ("VBW", VBW_Message'Tag);
end NMEA.Messages.VBW;
