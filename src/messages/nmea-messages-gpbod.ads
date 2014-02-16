with Ada.Streams;
package NMEA.Messages.GPBOD is
   type GPBOD_Message is new Message with record
     null;
   end record;

   overriding function Image (This : GPBOD_Message) return String;

private
   overriding
   function Constructor
     (Stream : not null access Ada.Streams.Root_Stream_Type'Class)
      return GPBOD_Message;
end NMEA.Messages.GPBOD;
