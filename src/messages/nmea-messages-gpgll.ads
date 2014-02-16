with Ada.Streams;
package NMEA.Messages.GPGLL is
   type GPGLL_Message is new Message with record
     null;
   end record;

   overriding function Image (This : GPGLL_Message) return String;

private
   overriding
   function Constructor
     (Stream : not null access Ada.Streams.Root_Stream_Type'Class)
      return GPGLL_Message;
end NMEA.Messages.GPGLL;
