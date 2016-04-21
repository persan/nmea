with Ada.Streams;
package NMEA.Messages.GSA is
   type GSA_Message is new Message with record
      null;
   end record;

   overriding function Image (This : GSA_Message) return String;

private
   overriding
   function Constructor
     (Stream : not null access Ada.Streams.Root_Stream_Type'Class)
  return GSA_Message;
end NMEA.Messages.GSA;
