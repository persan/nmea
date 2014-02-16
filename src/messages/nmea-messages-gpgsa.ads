with Ada.Streams;
package NMEA.Messages.GPGSA is
   type GPGSA_Message is new Message with record
      null;
   end record;

   overriding function Image (This : GPGSA_Message) return String;

private
   overriding
   function Constructor
     (Stream : not null access Ada.Streams.Root_Stream_Type'Class)
  return GPGSA_Message;
end NMEA.Messages.GPGSA;
