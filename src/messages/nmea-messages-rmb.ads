--  RMB - Recommended Minimum Navigation Information
--  To be sent by a navigation receiver when a destination waypoint is active.
--                                                               14
--          1 2   3 4    5    6       7 8        9 10  11  12  13|  15
--          | |   | |    |    |       | |        | |   |   |   | |   |
--   $--RMB,A,x.x,a,c--c,c--c,llll.ll,a,yyyyy.yy,a,x.x,x.x,x.x,A,m,*hh<CR><LF>
--  Field Number:
--  1. Status, A= Active, V = Void
--  2. Cross Track error - nautical miles
--  3. Direction to Steer, Left or Right
--  4. TO Waypoint ID
--  5. FROM Waypoint ID
--  6. Destination Waypoint Latitude
--  7. N or S
--  8. Destination Waypoint Longitude
--  9. E or W
--  10. Range to destination in nautical miles
--  11. Bearing to destination in degrees True
--  12. Destination closing velocity in knots
--  13. Arrival Status, A = Arrival Circle Entered
--  14. FAA mode indicator (NMEA 2.3 and later)
--  15. Checksum
--  Example: $GPRMB,A,0.66,L,003,004,4917.24,N,12309.57,W,001.3,052.5,000.5,V*0B

package NMEA.Messages.RMB is
   type RMB_Message is new Message with record
      Status                         : NMEA_Status;
      Cross_Track_error              : Nautical_Mile_Type;
      Direction_to_Steer             : NMEA_Left_Right;
      Origin_waypoint                : Waypoint_ID;
      Destination_waypoint           : Waypoint_ID;
      Destination_waypoint_Latitude  : Latitude_Type;
      Destination_Waypoint_Longitude : Longitude_Type;
      Range_To_Destination           : Nautical_Mile_Type;
      True_Bearing_To_Destination    : Heading_Type;
      Velocity_Towards_Destination   : Knots_Type;
      Arrival_Alarm                  : NMEA_Status;
   end record;

   overriding function Image (This : RMB_Message) return String;

private
   overriding
   function Constructor
     (Stream : not null access Ada.Streams.Root_Stream_Type'Class)
      return RMB_Message;
end NMEA.Messages.RMB;
