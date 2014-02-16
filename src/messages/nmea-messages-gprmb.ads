with Ada.Streams;
package NMEA.Messages.GPRMB is
   type GPRMB_Message is new Message with record
      Validity                       : NMEA_Status;
      CrossTrac                      : Nautical_Mile_Type;
      steer                          : NMEA_Left_Right;
      Origin_waypoint                : Waypoint_ID;
      Destination_waypoint           : Waypoint_ID;
      Destination_waypoint_Latitude  : Latitude_Type;
      Destination_Waypoint_Longitude : Longitude_Type;
      Range_To_Destination           : Nautical_Mile_Type;
      True_Bearing_To_Destination    : Heading_Type;
      Velocity_Towards_Destination   : Knots_Type;
      Arrival_Alarm                  : NMEA_Status;
   end record;

   overriding function Image (This : GPRMB_Message) return String;

private
   overriding
   function Constructor
     (Stream : not null access Ada.Streams.Root_Stream_Type'Class)
      return GPRMB_Message;
end NMEA.Messages.GPRMB;
