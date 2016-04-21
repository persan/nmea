--  GST - GPS Pseudorange Noise Statistics
--                1    2 3 4 5 6 7 8   9
--                |    | | | | | | |   |
--   $ --GST,hhmmss.ss,x,x,x,x,x,x,x,*hh<CR><LF>
--  Field Number:
--  1. TC time of associated GGA fix 
--  2. Total RMS standard deviation of ranges inputs to the navigation solution 
--  3. Standard deviation (meters) of semi-major axis of error ellipse 
--  4. Standard deviation (meters) of semi-minor axis of error ellipse 
--  5. Orientation of semi-major axis of error ellipse (true north degrees) 
--  6. Standard deviation (meters) of latitude error 
--  7. Standard deviation (meters) of longitude error 
--  8. Standard deviation (meters) of altitude error 
--  9. Checksum 

package NMEA.Messages.GST is
   type GST_Message is new Message with record
     null;
   end record;

   overriding function Image (This : GST_Message) return String;

private
   overriding
   function Constructor
     (Stream : not null access Ada.Streams.Root_Stream_Type'Class)
      return GST_Message;
end NMEA.Messages.GST;
