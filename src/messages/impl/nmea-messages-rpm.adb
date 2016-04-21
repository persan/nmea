package body NMEA.Messages.RPM is


   -----------------
   -- Constructor --
   -----------------

   overriding function Constructor
     (Stream : not null access Ada.Streams.Root_Stream_Type'Class)
      return RPM_Message
   is

   begin
      return Result : RPM_Message do
          RPM_Message'Read (Stream, Result);
      end return;
   end Constructor;

   overriding function Image (This : RPM_Message) return String is separate;

begin
   Register ("RPM", RPM_Message'Tag);
end NMEA.Messages.RPM;
