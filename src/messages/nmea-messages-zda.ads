--  ZDA - Time & Date - UTC, day, month, year and local time zone
--  This is one of the sentences commonly emitted by GPS units.
--          1         2  3  4    5  6  7
--          |         |  |  |    |  |  |
--   $--ZDA,hhmmss.ss,xx,xx,xxxx,xx,xx*hh<CR><LF>
--  Field Number:
--  1. UTC time (hours, minutes, seconds, may have fractional subsecond)
--  2. Day, 01 to 31
--  3. Month, 01 to 12
--  4. Year (4 digits)
--  5. Local zone description, 00 to +- 13 hours
--  6. Local zone minutes description, apply same sign as local hours
--  7. Checksum
--  Example: $GPZDA,160012.71,11,03,2004,-1,00*7D

package NMEA.Messages.ZDA is
   type ZDA_Message is new Message with record
      Time                           : UTC_Time_Type;
      Day_01_To_31                   : NMEA_Day_Number;
      Month_01_To_12                 : NMEA_Month_Number;
      Year_4_Digits                  : NMEA_Year_Number;
      Local_Zone_Description         : NMEA_Zone_Description_Hours;
      Local_Zone_Minutes_Description : NMEA_Zone_Description_Minutes;
   end record;

   overriding function Image (This : ZDA_Message) return String;

private
   overriding
   function Constructor
     (Stream : not null access Ada.Streams.Root_Stream_Type'Class)
      return ZDA_Message;
end NMEA.Messages.ZDA;
