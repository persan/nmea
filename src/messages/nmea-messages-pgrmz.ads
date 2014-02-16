with Ada.Streams;
package NMEA.Messages.PGRMZ is
   type PGRMZ_Message is new Message with record
     null;
   end record;

   overriding function Image (This : PGRMZ_Message) return String;

private
   overriding
   function Constructor
     (Stream : not null access Ada.Streams.Root_Stream_Type'Class)
      return PGRMZ_Message;
end NMEA.Messages.PGRMZ;
