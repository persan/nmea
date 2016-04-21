with Ada.Streams;
package NMEA.Messages.RMZ is
   type RMZ_Message is new Message with record
     null;
   end record;

   overriding function Image (This : RMZ_Message) return String;

private
   overriding
   function Constructor
     (Stream : not null access Ada.Streams.Root_Stream_Type'Class)
      return RMZ_Message;
end NMEA.Messages.RMZ;
