package body NMEA.Messages.GPCGA is


   -----------------
   -- Constructor --
   -----------------

   overriding function Constructor
     (Stream : not null access Ada.Streams.Root_Stream_Type'Class)
      return GPCGA_Message
   is

   begin
      return Result : GPCGA_Message do
          GPCGA_Message'Read (Stream, Result);
      end return;
   end Constructor;

   overriding function Image (This : GPCGA_Message) return String is
      pragma Unreferenced (This);
   begin
      return "N/A";
   end;

begin
   Register ("GPCGA", GPCGA_Message'Tag);
end NMEA.Messages.GPCGA;
