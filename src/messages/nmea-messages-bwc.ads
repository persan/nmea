--  BWC - Bearing & Distance to Waypoint - Great Circle
--                                                           12
--          1         2       3 4        5 6   7 8   9 10  11|    13 14
--          |         |       | |        | |   | |   | |   | |    |   |
--   $--BWC,hhmmss.ss,llll.ll,a,yyyyy.yy,a,x.x,T,x.x,M,x.x,N,c--c,m,*hh<CR><LF>
--  Field Number:
--  1. UTCTime 
--  2. Waypoint Latitude 
--  3. N = North, S = South 
--  4. Waypoint Longitude 
--  5. E = East, W = West 
--  6. Bearing, True 
--  7. T = True 
--  8. Bearing, Magnetic 
--  9. M = Magnetic 
--  10. Nautical Miles 
--  11. N = Nautical Miles 
--  12. Waypoint ID 
--  13. FAA mode indicator (NMEA 2.3 and later, optional) 
--  14. Checksum 
--  Example 1: $GPBWC,081837,,,,,,T,,M,,N,*13
--  Example 2: GPBWC,220516,5130.02,N,00046.34,W,213.8,T,218.0,M,0004.6,N,EGLM*11

package NMEA.Messages.BWC is
   type BWC_Message is new Message with record
     null;
   end record;

   overriding function Image (This : BWC_Message) return String;

private
   overriding
   function Constructor
     (Stream : not null access Ada.Streams.Root_Stream_Type'Class)
      return BWC_Message;
end NMEA.Messages.BWC;
