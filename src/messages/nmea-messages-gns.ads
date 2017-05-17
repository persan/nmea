--  GNS - Fix data
--         1         2       3 4        5 6    7  8   9   10  11  12  13
--         |         |       | |        | |    |  |   |   |   |   |   |
--  $--GNS,hhmmss.ss,llll.ll,a,yyyyy.yy,a,c--c,xx,x.x,x.x,x.x,x.x,x.x*hh
--  Field Number:
--  1. UTC
--  2. Latitude
--  3. N or S (North or South)
--  4. Longitude
--  5. E or W (East or West)
--  6. Mode indicator (non-null)
--  7. Total number of satelites in use,00-99
--  8. HDROP
--  9. Antenna altitude, meters, re:mean-sea-level(geoid.
--  10. Goeidal separation meters
--  11. Age of diferential data
--  12. Differential reference station ID
--  13. Checksum
--  The Mode indicator is two or more characters, with the first and second defined for GPS and GLONASS. Further characters may be defined. For each system, the character can have a value (table may be incomplete):
--  N = Constellation not in use, or no valid fix
--  A = Autonomous (non-differential)
--  D = Differential mode
--  P = Precise (no degradation, like Selective Availability)
--  R = Real Time Kinematic
--  F = Float RTK
--  E = Estimated (dead reckoning) Mode
--  M = Manual Input Mode
--  S = Simulator Mode

package NMEA.Messages.GNS is
   type GNS_Message is new Message with record
      UTC : NMEA_Dummy_Field;
      Latitude                          : NMEA_Dummy_Field;
      N_Or_S_North_Or_South             : NMEA_Dummy_Field;
      Longitude                         : NMEA_Dummy_Field;
      E_Or_W_East_Or_West               : NMEA_Dummy_Field;
      Mode_Indicator                    : NMEA_Dummy_Field;
      Total_Number_Of_Satelites_In_Use  : NMEA_Dummy_Field;
      HDROP                             : NMEA_Dummy_Field;
      Antenna_Altitude                  : NMEA_Dummy_Field;
      Goeidal_Separation                : NMEA_Dummy_Field;
      Age_Of_Diferential_Data           : NMEA_Dummy_Field;
      Differential_Reference_Station_ID : NMEA_Dummy_Field;
   end record;

   overriding function Image (This : GNS_Message) return String;

private
   overriding
   function Constructor
     (Stream : not null access Ada.Streams.Root_Stream_Type'Class)
      return GNS_Message;
end NMEA.Messages.GNS;
