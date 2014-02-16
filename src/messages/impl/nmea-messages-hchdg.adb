package body NMEA.Messages.HCHDG is


   -----------------
   -- Constructor --
   -----------------

   overriding function Constructor
     (Stream : not null access Ada.Streams.Root_Stream_Type'Class)
      return HCHDG_Message
   is

   begin
      return Result : HCHDG_Message do
          HCHDG_Message'Read (Stream, Result);
      end return;
   end Constructor;

   overriding function Image (This : HCHDG_Message) return String is separate;

begin
   Register ("HCHDG", HCHDG_Message'Tag);
end NMEA.Messages.HCHDG;
