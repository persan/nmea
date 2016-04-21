--  DPT - Depth of Water
--          1   2   3
--          |   |   |
--   $--DPT,x.x,x.x*hh<CR><LF>
--  Field Number:
--  1. Depth, meters 
--  2. Offset from transducer, positive means distance from tansducer to water line negative means distance from transducer to keel 
--  3. Checksum 
--  This sentence was incorrectly titled "Heading - Deviation & Variation" in [BETKE]. It’s documented at http://www.humminbird.com/normal.asp?id=853

package NMEA.Messages.DPT is
   type DPT_Message is new Message with record
     null;
   end record;

   overriding function Image (This : DPT_Message) return String;

private
   overriding
   function Constructor
     (Stream : not null access Ada.Streams.Root_Stream_Type'Class)
      return DPT_Message;
end NMEA.Messages.DPT;
