--  GLL - Geographic Position - Latitude/Longitude
--  This is one of the sentences commonly emitted by GPS units.
--          1       2 3        4 5         6 7   8
--          |       | |        | |         | |   |
--   $--GLL,llll.ll,a,yyyyy.yy,a,hhmmss.ss,a,m,*hh<CR><LF>
--  Field Number:
--  1. Latitude
--  2. N or S (North or South)
--  3. Longitude
--  4. E or W (East or West)
--  5. Universal Time Coordinated (UTC)
--  6. Status A - Data Valid, V - Data Invalid
--  7. FAA mode indicator (NMEA 2.3 and later)
--  8. Checksum

package NMEA.Messages.GLL is
   type GLL_Message is new Message with record
      Latitude  : Latitude_Type;
      Longitude : Longitude_Type;
      Time      : UTC_Time_Type;
      Status    : NMEA_Status_Type;
      FAA_Mode  : NMEA_Dummy_Field;
   end record;

   overriding function Image (This : GLL_Message) return String;

private
   overriding
   function Constructor
     (Stream : not null access Ada.Streams.Root_Stream_Type'Class)
      return GLL_Message;
end NMEA.Messages.GLL;
