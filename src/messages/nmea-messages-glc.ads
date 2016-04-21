--  GLC - Geographic Position, Loran-C
--  This sentence is obsolete over most of its former coverage area. The US/Canadian/Russian Loran-C network was shut down in 2010; it is still as of 2015 in limited use in Europe. Loran-C operations in Norway will cease from 1st Jan 2016. [NORWAY]
--                                             12    14
--          1    2   3 4   5 6   7 8   9 10  11|   13|
--          |    |   | |   | |   | |   | |   | |   | |
--   $--GLC,xxxx,x.x,a,x.x,a,x.x,a.x,x,a,x.x,a,x.x,a*hh<CR><LF>
--  Field Number:
--  1. GRI Microseconds/10 
--  2. Master TOA Microseconds 
--  3. Master TOA Signal Status 
--  4. Time Difference 1 Microseconds 
--  5. Time Difference 1 Signal Status 
--  6. Time Difference 2 Microseconds 
--  7. Time Difference 2 Signal Status 
--  8. Time Difference 3 Microseconds 
--  9. Time Difference 3 Signal Status 
--  10. Time Difference 4 Microseconds 
--  11. Time Difference 4 Signal Status 
--  12. Time Difference 5 Microseconds 
--  13. Time Difference 5 Signal Status 
--  14. Checksum 

package NMEA.Messages.GLC is
   type GLC_Message is new Message with record
     null;
   end record;

   overriding function Image (This : GLC_Message) return String;

private
   overriding
   function Constructor
     (Stream : not null access Ada.Streams.Root_Stream_Type'Class)
      return GLC_Message;
end NMEA.Messages.GLC;
