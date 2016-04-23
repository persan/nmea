--  TFI - Trawl Filling Indicator
--          1 2 3 4
--          | | | |
--   $--TFI,x,y,z*hh<CR><LF>
--  Field Number:
--  1. Catch sensor #1 (0 = off, 1 = on, 2 = no answer)
--  2. Catch sensor #2 (0 = off, 1 = on, 2 = no answer)
--  3. Catch sensor #3 (0 = off, 1 = on, 2 = no answer)
--  4. Checksum.

--  From [GLOBALSAT]. Shown with a "@II" leader rather than "$GP".

package NMEA.Messages.TFI is
   type TFI_Message is new Message with record
     null;
   end record;

   overriding function Image (This : TFI_Message) return String;

private
   overriding
   function Constructor
     (Stream : not null access Ada.Streams.Root_Stream_Type'Class)
      return TFI_Message;
end NMEA.Messages.TFI;
