package body NMEA.Messages.RMM is


   -----------------
   -- Constructor --
   -----------------

   overriding function Constructor
     (Stream : not null access Ada.Streams.Root_Stream_Type'Class)
      return RMM_Message
   is

   begin
      return Result : RMM_Message do
          RMM_Message'Read (Stream, Result);
      end return;
   end Constructor;

   overriding function Image (This : RMM_Message) return String is separate;

begin
   Register ("RMM", RMM_Message'Tag);
end NMEA.Messages.RMM;
