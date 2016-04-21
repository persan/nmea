with Ada.Streams;
package NMEA.Messages.GSV is
   type GSV_Message is new Message with record
     null;
   end record;

   overriding function Image (This : GSV_Message) return String;

private
   overriding
   function Constructor
     (Stream : not null access Ada.Streams.Root_Stream_Type'Class)
      return GSV_Message;
end NMEA.Messages.GSV;
