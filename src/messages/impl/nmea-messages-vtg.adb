package body NMEA.Messages.VTG is


   -----------------
   -- Constructor --
   -----------------

   overriding function Constructor
     (Stream : not null access Ada.Streams.Root_Stream_Type'Class)
      return VTG_Message
   is

   begin
      return Result : VTG_Message do
          VTG_Message'Read (Stream, Result);
      end return;
   end Constructor;

   overriding function Image (This : VTG_Message) return String is separate;

begin
   Register ("VTG", VTG_Message'Tag);
end NMEA.Messages.VTG;
