with Ada.Streams;
package NMEA.Messages.CPGGA is
   type CPGGA_Message is new Message with record
      Time                                  : UTC_Time_Type;
      Latitude                              : Latitude_Type;
      Longitude                             : Longitude_Type;
      Fix_Quality                           : Fix_Quality_Type;
      Number_Of_Satelites                   : NMEA_Integer;
      Horizontal_Dilution_Of_Precision      : UTC_Date_Type;
      Altitude                              : Nmea_Hight;
      Height_Of_Geoid_Above_WGS84_Ellipsoid : Nmea_Hight;
      Time_Since_Last_DGPS_Update           : NMEA_Seconds;
      DGPS_Reference_Station_Id             : NMEA_String (4);
   end record;

   overriding function Image (This : CPGGA_Message) return String;

private
   overriding
   function Constructor
     (Stream : not null access Ada.Streams.Root_Stream_Type'Class)
  return CPGGA_Message;
end NMEA.Messages.CPGGA;
