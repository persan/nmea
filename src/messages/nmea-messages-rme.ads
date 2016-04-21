with Ada.Streams;
package NMEA.Messages.RME is
   type RME_Message is new Message with record
     null;
   end record;

   overriding function Image (This : RME_Message) return String;

private
   overriding
   function Constructor
     (Stream : not null access Ada.Streams.Root_Stream_Type'Class)
      return RME_Message;
end NMEA.Messages.RME;
