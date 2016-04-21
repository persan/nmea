package body NMEA.Messages.AAM is


   -----------------
   -- Constructor --
   -----------------

   overriding function Constructor
     (Stream : not null access Ada.Streams.Root_Stream_Type'Class)
      return AAM_Message
   is

   begin
      return Result : AAM_Message do
          AAM_Message'Read (Stream, Result);
      end return;
   end Constructor;

   overriding function Image (This : AAM_Message) return String is separate;

begin
   Register ("AAM", AAM_Message'Tag);
end NMEA.Messages.AAM;
