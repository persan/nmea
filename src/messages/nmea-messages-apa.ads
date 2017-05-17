--  APA - Autopilot Sentence "A"
--  This sentence is sent by some GPS receivers to allow them to be used to control an autopilot unit. This sentence is commonly used by autopilots and contains navigation receiver warning flag status, cross-track-error, waypoint arrival status, initial bearing from origin waypoint to the destination, continuous bearing from present position to destination and recommended heading-to-steer to destination waypoint for the active navigation leg of the journey.
--          1 2  3   4 5 6 7  8  9 10    11
--          | |  |   | | | |  |  | |     |
--   $--APA,A,A,x.xx,L,N,A,A,xxx,M,c---c*hh<CR><LF>
--  Field Number:
--  1. Status V = Loran-C Blink or SNR warning V = general warning flag or other navigation systems when a reliable fix is not available
--  2. Status V = Loran-C Cycle Lock warning flag A = OK or not used
--  3. Cross Track Error Magnitude
--  4. Direction to steer, L or R
--  5. Cross Track Units (Nautic miles or kilometers)
--  6. Status A = Arrival Circle Entered
--  7. Status A = Perpendicular passed at waypoint
--  8. Bearing origin to destination
--  9. M = Magnetic, T = True
--  10. Destination Waypoint ID
--  11. Checksum
--  Example: $GPAPA,A,A,0.10,R,N,V,V,011,M,DEST,011,M*82

package NMEA.Messages.APA is


   type APA_Message is new Message with record
      Blink_Warning                    : NMEA_Boolean ('V', 'A');
      Cycle_Lock_Warning               : NMEA_Boolean ('A', 'V');
      Cross_Track_Error_Magnitude      : NMEA_Long_Float;
      Steer_Left                       : NMEA_Boolean (False => 'R', True => 'L');
      Cross_Track_Units_is_KM          : NMEA_Boolean ('N', 'K');
      Arrival_Circle_Entered           : NMEA_Boolean ('V', 'A');
      Perpendicular_Passed_At_Waypoint : NMEA_Boolean ('V', 'A');
      Bearing_Origin_To_Destination    : NMEA_Integer;
      Is_Magnetic                      : NMEA_Boolean ('T', 'M');
      Destination_Waypoint_ID          : NMEA_String;
   end record;

   overriding function Image (This : APA_Message) return String;

private
   overriding
   function Constructor
     (Stream : not null access Ada.Streams.Root_Stream_Type'Class)
      return APA_Message;
end NMEA.Messages.APA;
