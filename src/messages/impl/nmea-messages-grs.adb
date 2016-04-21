package body NMEA.Messages.GRS is


   -----------------
   -- Constructor --
   -----------------

   overriding function Constructor
     (Stream : not null access Ada.Streams.Root_Stream_Type'Class)
      return GRS_Message
   is

   begin
      return Result : GRS_Message do
          GRS_Message'Read (Stream, Result);
      end return;
   end Constructor;

   overriding function Image (This : GRS_Message) return String is separate;

begin
   Register ("GRS", GRS_Message'Tag);
end NMEA.Messages.GRS;
