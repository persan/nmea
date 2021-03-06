--  AAM - Waypoint Arrival Alarm
--  This sentence is generated by some units to indicate the status of arrival (entering the arrival circle, or passing the perpendicular of the course line) at the destination waypoint.
--          1 2 3   4 5    6
--          | | |   | |    |
--   $--AAM,A,A,x.x,N,c--c*hh<CR><LF>
--  Field Number:
--  1. Status, BOOLEAN, A = Arrival circle entered, V = not passed
--  2. Status, BOOLEAN, A = perpendicular passed at waypoint, V = not passed
--  3. Arrival circle radius
--  4. Units of radius, nautical miles
--  5. Waypoint ID
--  6. Checksum
--  Example: GPAAM,A,A,0.10,N,WPTNME*43
--  WPTNME is the waypoint name.

package NMEA.Messages.AAM is


   type AAM_Message is new Message with record
      Arrival_Circle_Entered           : NMEA_Boolean ('V', 'A');
      Perpendicular_Passed_At_Waypoint : NMEA_Boolean ('V', 'A');
      Arrival_Circle_Radius            : NMEA_Long_Float;
      Units_Of_Radius                  : NMEA_Constant_Character ('N');
      Waypoint_ID                      : NMEA_Waypoint_ID;
   end record;

   overriding function Image (This : AAM_Message) return String;

private
   overriding
   function Constructor
     (Stream : not null access Ada.Streams.Root_Stream_Type'Class)
      return AAM_Message;
end NMEA.Messages.AAM;
