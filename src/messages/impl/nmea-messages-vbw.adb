package body NMEA.Messages.Vbw is


   -----------------
   -- Constructor --
   -----------------

   overriding function Constructor
     (Stream : not null access Ada.Streams.Root_Stream_Type'Class)
      return Vbw_Message
   is

   begin
      return Result : Vbw_Message do
          Vbw_Message'Read (Stream, Result);
      end return;
   end Constructor;

   overriding function Image (This : Vbw_Message) return String is separate;

begin
   Register ("Vbw", Vbw_Message'Tag);
end NMEA.Messages.Vbw;
