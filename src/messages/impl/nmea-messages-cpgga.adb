package body NMEA.Messages.CPGGA is


   -----------------
   -- Constructor --
   -----------------

   overriding function Constructor
     (Stream : not null access Ada.Streams.Root_Stream_Type'Class)
      return CPGGA_Message
   is

   begin
      return Result : CPGGA_Message do
          CPGGA_Message'Read (Stream, Result);
      end return;
   end Constructor;

   overriding function Image (This : CPGGA_Message) return String is separate;

begin
   Register ("CPGGA", CPGGA_Message'Tag);
end NMEA.Messages.CPGGA;
