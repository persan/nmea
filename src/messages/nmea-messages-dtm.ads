--  DTM - Datum Reference
--            1  2  3   4  5   6  7  8    9
--            |  |  |   |  |   |  |  |    |
--   $ --DTM,ref,x,llll,c,llll,c,aaa,ref*hh<CR><LF>
--  Field Number:
--  1. Local datum code.
--  2. Local datum subcode. May be blank.
--  3. Latitude offset (minutes)
--  4. N or S
--  5. Longitude offset (minutes)
--  6. E or W
--  7. Altitude offset in meters
--  8. Datum name. What's usually seen here is "W84", the standard WGS84 datum used by GPS.
--  9. Checksum.

package NMEA.Messages.DTM is
   type DTM_Message is new Message with record
      Local_Datum_Code    : NMEA_Dummy_Field;
      Local_Datum_Subcode : NMEA_Dummy_Field;
      Latitude_Offset     : NMEA_Dummy_Field;
      N_Or_S              : NMEA_Dummy_Field;
      Longitude_Offset    : NMEA_Dummy_Field;
      E_Or_W              : NMEA_Dummy_Field;
      Altitude_Offset     : NMEA_Dummy_Field;
      Datum_Name          : NMEA_Dummy_Field;
   end record;

   overriding function Image (This : DTM_Message) return String;

private
   overriding
   function Constructor
     (Stream : not null access Ada.Streams.Root_Stream_Type'Class)
      return DTM_Message;
end NMEA.Messages.DTM;
