with Ada.Streams;
package NMEA.Messages.RTE is
   type RTE_Message is new Message with record
     null;
   end record;

   overriding function Image (This : RTE_Message) return String;

private
   overriding
   function Constructor
     (Stream : not null access Ada.Streams.Root_Stream_Type'Class)
      return RTE_Message;
end NMEA.Messages.RTE;
