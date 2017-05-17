package body NMEA.Messages.VDM is


   -----------------
   -- Constructor --
   -----------------

   overriding function Constructor
     (Stream : not null access Ada.Streams.Root_Stream_Type'Class)
      return VDM_Message
   is

   begin
      return Result : VDM_Message do
          VDM_Message'Read (Stream, Result);
      end return;
   end Constructor;

   overriding function Image (This : VDM_Message) return String is separate;

begin
   Register ("VDM", VDM_Message'Tag);
end NMEA.Messages.VDM;
