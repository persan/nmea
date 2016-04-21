--  TRF - TRANSIT Fix Data
--                                                                      13
--          1         2      3       4 5        6 7   8   9   10  11  12|
--          |         |      |       | |        | |   |   |   |   |   | |
--   $--TRF,hhmmss.ss,xxxxxx,llll.ll,a,yyyyy.yy,a,x.x,x.x,x.x,x.x,xxx,A*hh<CR><LF>
--  Field Number:
--  1. UTC Time
--  2. Date, ddmmyy
--  3. Latitude
--  4. N or S
--  5. Longitude
--  6. E or W
--  7. Elevation Angle
--  8. Number of iterations
--  9. Number of Doppler intervals
--  10. Update distance, nautical miles
--  11. Satellite ID
--  12. Data Validity
--  13. Checksum
--  (The TRF sentence is obsolete as of 2.3.0)

package NMEA.Messages.TRF is
   type TRF_Message is new Message with record
      null;
   end record;

   overriding function Image (This : TRF_Message) return String;

private
   overriding
   function Constructor
     (Stream : not null access Ada.Streams.Root_Stream_Type'Class)
      return TRF_Message;
end NMEA.Messages.TRF;
