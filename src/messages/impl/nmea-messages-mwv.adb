package body NMEA.Messages.MWV is


   -----------------
   -- Constructor --
   -----------------

   overriding function Constructor
     (Stream : not null access Ada.Streams.Root_Stream_Type'Class)
      return MWV_Message
   is

   begin
      return Result : MWV_Message do
          MWV_Message'Read (Stream, Result);
      end return;
   end Constructor;

   overriding function Image (This : MWV_Message) return String is separate;

begin
   Register ("MWV", MWV_Message'Tag);
end NMEA.Messages.MWV;
