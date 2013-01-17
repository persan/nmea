with Ada.Streams;
package NMEA.Messages.GPCGA is
   type GPCGA_Message is new Message with record
      Fix                         : UTC_Time_Type;
      Lat                         : Latitude_Type;
      Long                        : Longitude_Type;
      Fix_Quality                 : Fix_Quality_Type;
      Satelites                   : Count;
      Horisontal_Dilution         : Dilution;
      Altitude                    : Meters;
      Height_Of_Geoid             : Meters;
      Time_Since_Last_DGPS_Update : NMEA_Seconds;
      Station_ID                  : DGPS_Station_ID;
   end record;

   overriding function Image (This : GPCGA_Message) return String;

private
   overriding
   function Constructor
     (Stream : not null access Ada.Streams.Root_Stream_Type'Class)
      return GPCGA_Message;
end NMEA.Messages.GPCGA;
