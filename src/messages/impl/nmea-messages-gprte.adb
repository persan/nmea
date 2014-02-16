package body NMEA.Messages.GPRTE is


   -----------------
   -- Constructor --
   -----------------

   overriding function Constructor
     (Stream : not null access Ada.Streams.Root_Stream_Type'Class)
      return GPRTE_Message
   is

   begin
      return Result : GPRTE_Message do
          GPRTE_Message'Read (Stream, Result);
      end return;
   end Constructor;

   overriding function Image (This : GPRTE_Message) return String is separate;

begin
   Register ("GPRTE", GPRTE_Message'Tag);
end NMEA.Messages.GPRTE;
