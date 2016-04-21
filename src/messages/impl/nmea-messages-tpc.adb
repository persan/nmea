package body NMEA.Messages.TPC is


   -----------------
   -- Constructor --
   -----------------

   overriding function Constructor
     (Stream : not null access Ada.Streams.Root_Stream_Type'Class)
      return TPC_Message
   is

   begin
      return Result : TPC_Message do
          TPC_Message'Read (Stream, Result);
      end return;
   end Constructor;

   overriding function Image (This : TPC_Message) return String is separate;

begin
   Register ("TPC", TPC_Message'Tag);
end NMEA.Messages.TPC;
