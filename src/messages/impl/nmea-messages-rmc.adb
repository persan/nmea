package body NMEA.Messages.RMC is


   -----------------
   -- Constructor --
   -----------------

   overriding function Constructor
     (Stream : not null access Ada.Streams.Root_Stream_Type'Class)
      return RMC_Message
   is

   begin
      return Result : RMC_Message do
          RMC_Message'Read (Stream, Result);
      end return;
   end Constructor;

   overriding function Image (This : RMC_Message) return String is separate;

begin
   Register ("RMC", RMC_Message'Tag);
end NMEA.Messages.RMC;
