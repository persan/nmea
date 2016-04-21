with Ada.Streams;
package NMEA.Messages.GLL is
   type GLL_Message is new Message with record
     null;
   end record;

   overriding function Image (This : GLL_Message) return String;

private
   overriding
   function Constructor
     (Stream : not null access Ada.Streams.Root_Stream_Type'Class)
      return GLL_Message;
end NMEA.Messages.GLL;
