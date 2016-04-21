package body NMEA.Messages.R00 is


   -----------------
   -- Constructor --
   -----------------

   overriding function Constructor
     (Stream : not null access Ada.Streams.Root_Stream_Type'Class)
      return R00_Message
   is

   begin
      return Result : R00_Message do
          R00_Message'Read (Stream, Result);
      end return;
   end Constructor;

   overriding function Image (This : R00_Message) return String is separate;

begin
   Register ("R00", R00_Message'Tag);
end NMEA.Messages.R00;
