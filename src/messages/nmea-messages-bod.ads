with Ada.Streams;
package NMEA.Messages.BOD is
   type BOD_Message is new Message with record
     null;
   end record;

   overriding function Image (This : BOD_Message) return String;

private
   overriding
   function Constructor
     (Stream : not null access Ada.Streams.Root_Stream_Type'Class)
      return BOD_Message;
end NMEA.Messages.BOD;
