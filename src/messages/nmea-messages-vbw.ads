--  VBW - Dual Ground/Water Speed
--          1   2   3 4   5   6 7
--          |   |   | |   |   | |
--   $--VBW,x.x,x.x,A,x.x,x.x,A*hh<CR><LF>
--  Field Number:
--  1. Longitudinal water speed, "-" means astern 
--  2. Transverse water speed, "-" means port 
--  3. Status, A = Data Valid 
--  4. Longitudinal ground speed, "-" means astern 
--  5. Transverse ground speed, "-" means port 
--  6. Status, A = Data Valid 
--  7. Checksum 

package NMEA.Messages.VBW is
   type VBW_Message is new Message with record
     null;
   end record;

   overriding function Image (This : VBW_Message) return String;

private
   overriding
   function Constructor
     (Stream : not null access Ada.Streams.Root_Stream_Type'Class)
      return VBW_Message;
end NMEA.Messages.VBW;
