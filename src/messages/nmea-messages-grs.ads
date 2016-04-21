--  GRS - GPS Range Residuals
--                1    2  3  4  5  6  7  8  9 10 11 12 13 14  15
--                |    |  |  |  |  |  |  |  |  |  |  |  |  |   |
--   $ --GRS,hhmmss.ss,m,xx,xx,xx,xx,xx,xx,xx,xx,xx,xx,xx,xx,*hh<CR><LF>
--  Field Number:
--  1. TC time of associated GGA fix 
--  2. 0 = Residuals used in GGA, 1 = residuals calculated after GGA 
--  3. Satellite 1 residual in meters 
--  4. Satellite 2 residual in meters 
--  5. Satellite 3 residual in meters 
--  6. Satellite 4 residual in meters (blank if unused) 
--  7. Satellite 5 residual in meters (blank if unused) 
--  8. Satellite 6 residual in meters (blank if unused) 
--  9. Satellite 7 residual in meters (blank if unused) 
--  10. Satellite 8 residual in meters (blank if unused) 
--  11. Satellite 9 residual in meters (blank if unused) 
--  12. Satellite 10 residual in meters (blank if unused) 
--  13. Satellite 11 residual in meters (blank if unused) 
--  14. Satellite 12 residual in meters (blank if unused) 
--  15. Checksum 
--  The order of satellites MUST match those in the last GSA.
--  Example: $GPGRS,024603.00,1,-1.8,-2.7,0.3,,,,,,,,,*6C
--  Note that the talker ID may be GP, GL, or GN, depending on if the residuals are for GPS-only, GLONASS-only, or combined solution, respectively.

package NMEA.Messages.GRS is
   type GRS_Message is new Message with record
     null;
   end record;

   overriding function Image (This : GRS_Message) return String;

private
   overriding
   function Constructor
     (Stream : not null access Ada.Streams.Root_Stream_Type'Class)
      return GRS_Message;
end NMEA.Messages.GRS;
