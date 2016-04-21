package body NMEA.Messages.RMZ is


   -----------------
   -- Constructor --
   -----------------

   overriding function Constructor
     (Stream : not null access Ada.Streams.Root_Stream_Type'Class)
      return RMZ_Message
   is

   begin
      return Result : RMZ_Message do
          RMZ_Message'Read (Stream, Result);
      end return;
   end Constructor;

   overriding function Image (This : RMZ_Message) return String is separate;

begin
   Register ("RMZ", RMZ_Message'Tag);
end NMEA.Messages.RMZ;
