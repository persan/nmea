with Ada.Streams;
package NMEA.Messages.PGRME is
   type PGRME_Message is new Message with record
     null;
   end record;

   overriding function Image (This : PGRME_Message) return String;

private
   overriding
   function Constructor
     (Stream : not null access Ada.Streams.Root_Stream_Type'Class)
      return PGRME_Message;
end NMEA.Messages.PGRME;
