--  RMC - Recommended Minimum Navigation Information
--  This is one of the sentences commonly emitted by GPS units.
--                                                            12
--          1         2 3       4 5        6  7   8   9    10 11|  13
--          |         | |       | |        |  |   |   |    |  | |   |
--   $--RMC,hhmmss.ss,A,llll.ll,a,yyyyy.yy,a,x.x,x.x,xxxx,x.x,a,m,*hh<CR><LF>
--  Field Number:
--  1. UTC Time
--  2. Status, V=Navigation receiver warning A=Valid
--  3. Latitude
--  4. N or S
--  5. Longitude
--  6. E or W
--  7. Speed over ground, knots
--  8. Track made good, degrees true
--  9. Date, ddmmyy
--  10. Magnetic Variation, degrees
--  11. E or W
--  12. FAA mode indicator (NMEA 2.3 and later)
--  13. Checksum
--  A status of V means the GPS has a valid fix that is below an internal quality threshold, e.g. because the dilution of precision is too high or an elevation mask test failed.

package NMEA.Messages.RMC is
   type RMC_Message is new Message with record
      Fix                         : UTC_Time_Type;
      Validity                    : NMEA_Status;
      Lat                         : Latitude_Type;
      Long                        : Longitude_Type;
      Speed_Over_Ground           : Knots_Type;
      True_Course_Made_Good       : Heading_Type;
      Date                        : UTC_Time_Type;
      Magnetic_Variation          : Magnetic_Variation_Type;
   end record;

   overriding function Image (This : RMC_Message) return String;

private
   overriding
   function Constructor
     (Stream : not null access Ada.Streams.Root_Stream_Type'Class)
      return RMC_Message;
end NMEA.Messages.RMC;
