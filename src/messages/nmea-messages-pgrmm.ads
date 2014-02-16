with Ada.Streams;
package NMEA.Messages.PGRMM is
   type PGRMM_Message is new Message with record
     null;
   end record;

   overriding function Image (This : PGRMM_Message) return String;

private
   overriding
   function Constructor
     (Stream : not null access Ada.Streams.Root_Stream_Type'Class)
      return PGRMM_Message;
end NMEA.Messages.PGRMM;
