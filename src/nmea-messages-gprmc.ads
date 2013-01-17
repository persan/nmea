with Ada.Streams;
package NMEA.Messages.GPRMC is
   type GPRMC_Message is new Message with record
      Fix                         : UTC_Time_Type;
      Validity                    : NMEA_Status;
      Lat                         : Latitude_Type;
      Long                        : Longitude_Type;
      Speed_Over_Ground           : Knots_Type;
      True_Course_Made_Good       : Heading_Type;
      Date                        : UTC_Date_Type;
      Magnetic_Variation          : Magnetic_Variation_Type;
   end record;

   overriding function Image (This : GPRMC_Message) return String;

private
   overriding
   function Constructor
     (Stream : not null access Ada.Streams.Root_Stream_Type'Class)
      return GPRMC_Message;
end NMEA.Messages.GPRMC;
