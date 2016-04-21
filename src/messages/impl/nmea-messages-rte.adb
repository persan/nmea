package body NMEA.Messages.RTE is


   -----------------
   -- Constructor --
   -----------------

   overriding function Constructor
     (Stream : not null access Ada.Streams.Root_Stream_Type'Class)
      return RTE_Message
   is

   begin
      return Result : RTE_Message do
          RTE_Message'Read (Stream, Result);
      end return;
   end Constructor;

   overriding function Image (This : RTE_Message) return String is separate;

begin
   Register ("RTE", RTE_Message'Tag);
end NMEA.Messages.RTE;
