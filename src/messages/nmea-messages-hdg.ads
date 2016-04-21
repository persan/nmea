with Ada.Streams;
package NMEA.Messages.HDG is
   type HDG_Message is new Message with record
     null;
   end record;

   overriding function Image (This : HDG_Message) return String;

private
   overriding
   function Constructor
     (Stream : not null access Ada.Streams.Root_Stream_Type'Class)
      return HDG_Message;
end NMEA.Messages.HDG;
