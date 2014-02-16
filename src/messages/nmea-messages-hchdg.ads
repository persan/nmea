with Ada.Streams;
package NMEA.Messages.HCHDG is
   type HCHDG_Message is new Message with record
     null;
   end record;

   overriding function Image (This : HCHDG_Message) return String;

private
   overriding
   function Constructor
     (Stream : not null access Ada.Streams.Root_Stream_Type'Class)
      return HCHDG_Message;
end NMEA.Messages.HCHDG;
