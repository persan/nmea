with Ada.Streams;
package NMEA.Messages.GPGSV is
   type GPGSV_Message is new Message with record
     null;
   end record;

   overriding function Image (This : GPGSV_Message) return String;

private
   overriding
   function Constructor
     (Stream : not null access Ada.Streams.Root_Stream_Type'Class)
      return GPGSV_Message;
end NMEA.Messages.GPGSV;
