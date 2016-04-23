--  SFI - Scanning Frequency Information
--          1   2   3      4                     x
--          |   |   |      |                     |
--   $--SFI,x.x,x.x,xxxxxx,c .......... xxxxxx,c*hh<CR><LF>
--  Field Number:
--   1. Total Number Of Messages
--   2. Message Number
--   3. Frequency 1
--   4. Mode 1
--   x. Checksum

package NMEA.Messages.SFI is
   type SFI_Message is new Message with record
     null;
   end record;

   overriding function Image (This : SFI_Message) return String;

private
   overriding
   function Constructor
     (Stream : not null access Ada.Streams.Root_Stream_Type'Class)
      return SFI_Message;
end NMEA.Messages.SFI;
