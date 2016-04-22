   --  ALM - GPS Almanac Data
--  This sentence expresses orbital data for a specified GPS satellite.
--          1   2   3  4   5  6    7  8    9    10     11     12     13     14  15   16
--          |   |   |  |   |  |    |  |    |    |      |      |      |      |   |    |
--   $--ALM,x.x,x.x,xx,x.x,hh,hhhh,hh,hhhh,hhhh,hhhhhh,hhhhhh,hhhhhh,hhhhhh,hhh,hhh,*hh<CR><LF>
--  Field Number:
--  1. Total number of messages
--  2. Message Number
--  3. Satellite PRN number (01 to 32)
--  4. GPS Week Number
--  5. SV health, bits 17-24 of each almanac page
--  6. Eccentricity
--  7. Almanac Reference Time
--  8. Inclination Angle
--  9. Rate of Right Ascension
--  10. Root of semi-major axis
--  11. Argument of perigee
--  12. Longitude of ascension node
--  13. Mean anomaly
--  14. F0 Clock Parameter
--  15. F1 Clock Parameter
--  16. Checksum
--  Fields 5 through 15 are dumped as raw hex.
--  Example: $GPALM,1,1,15,1159,00,441d,4e,16be,fd5e,a10c9f,4a2da4,686e81,58cbe1,0a4,001*5B

package NMEA.Messages.ALM is


   type ALM_Message is new Message with record
      Total_Number_Of_Messages : NMEA_Integer;
      Message_Number           : NMEA_Integer;
      Satellite_PRN_Number     : NMEA_Integer;

   end record;

   overriding function Image (This : ALM_Message) return String;

private
   overriding
   function Constructor
     (Stream : not null access Ada.Streams.Root_Stream_Type'Class)
      return ALM_Message;
end NMEA.Messages.ALM;
