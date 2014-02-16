with Ada.Streams;
package NMEA.Messages.GPGGA is
   type GPGGA_Message is new Message with record
      null;
   end record;

   overriding function Image (This : GPGGA_Message) return String;

private
   overriding
   function Constructor
     (Stream : not null access Ada.Streams.Root_Stream_Type'Class)
  return GPGGA_Message;
end NMEA.Messages.GPGGA;
