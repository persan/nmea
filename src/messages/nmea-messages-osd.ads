--  OSD - Own Ship Data
--          1   2 3   4 5   6 7   8   9 10
--          |   | |   | |   | |   |   | |
--   $--OSD,x.x,A,x.x,a,x.x,a,x.x,x.x,a*hh<CR><LF>
--  Field Number:
--  1. Heading, degrees true 
--  2. Status, A = Data Valid 
--  3. Vessel Course, degrees True 
--  4. Course Reference 
--  5. Vessel Speed 
--  6. Speed Reference 
--  7. Vessel Set, degrees True 
--  8. Vessel drift (speed) 
--  9. Speed Units 
--  10. Checksum 

package NMEA.Messages.OSD is
   type OSD_Message is new Message with record
     null;
   end record;

   overriding function Image (This : OSD_Message) return String;

private
   overriding
   function Constructor
     (Stream : not null access Ada.Streams.Root_Stream_Type'Class)
      return OSD_Message;
end NMEA.Messages.OSD;
