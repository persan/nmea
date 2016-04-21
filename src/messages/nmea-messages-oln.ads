--  OLN - Omega Lane Numbers
--          1          2          3          4
--          |--------+ |--------+ |--------+ |
--   $--OLN,aa,xxx,xxx,aa,xxx,xxx,aa,xxx,xxx*hh<CR><LF>
--  Field Number:
--  1. Omega Pair 1 
--  2. Omega Pair 1 
--  3. Omega Pair 1 
--  4. Checksum 
--  (The OLN sentence is obsolete as of 2.30)

package NMEA.Messages.OLN is
   type OLN_Message is new Message with record
     null;
   end record;

   overriding function Image (This : OLN_Message) return String;

private
   overriding
   function Constructor
     (Stream : not null access Ada.Streams.Root_Stream_Type'Class)
      return OLN_Message;
end NMEA.Messages.OLN;
