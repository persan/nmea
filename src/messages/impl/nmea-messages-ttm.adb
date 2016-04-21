package body NMEA.Messages.TTM is


   -----------------
   -- Constructor --
   -----------------

   overriding function Constructor
     (Stream : not null access Ada.Streams.Root_Stream_Type'Class)
      return TTM_Message
   is

   begin
      return Result : TTM_Message do
          TTM_Message'Read (Stream, Result);
      end return;
   end Constructor;

   overriding function Image (This : TTM_Message) return String is separate;

begin
   Register ("TTM", TTM_Message'Tag);
end NMEA.Messages.TTM;
