--  APB - Autopilot Sentence "B"
--  This is a fixed form of the APA sentence with some ambiguities removed.
--  Note: Some autopilots, Robertson in particular, misinterpret "bearing from origin to destination" as "bearing from present position to destination". This is likely due to the difference between the APB sentence and the APA sentence. for the APA sentence this would be the correct thing to do for the data in the same field. APA only differs from APB in this one field and APA leaves off the last two fields where this distinction is clearly spelled out. This will result in poor performance if the boat is sufficiently off-course that the two bearings are different. 13 15
--          1 2 3   4 5 6 7 8   9 10   11  12|   14|
--          | | |   | | | | |   | |    |   | |   | |
--   $--APB,A,A,x.x,a,N,A,A,x.x,a,c--c,x.x,a,x.x,a*hh<CR><LF>
--  Field Number:
--  1. Status V = Loran-C Blink or SNR warning V = general warning flag or other navigation systems when a reliable fix is not available 
--  2. Status V = Loran-C Cycle Lock warning flag A = OK or not used 
--  3. Cross Track Error Magnitude 
--  4. Direction to steer, L or R 
--  5. Cross Track Units, N = Nautical Miles 
--  6. Status A = Arrival Circle Entered 
--  7. Status A = Perpendicular passed at waypoint 
--  8. Bearing origin to destination 
--  9. M = Magnetic, T = True 
--  10. Destination Waypoint ID 
--  11. Bearing, present position to Destination 
--  12. M = Magnetic, T = True 
--  13. Heading to steer to destination waypoint 
--  14. M = Magnetic, T = True 
--  15. Checksum 
--  Example: $GPAPB,A,A,0.10,R,N,V,V,011,M,DEST,011,M,011,M*82

package NMEA.Messages.APB is
   type APB_Message is new Message with record
     null;
   end record;

   overriding function Image (This : APB_Message) return String;

private
   overriding
   function Constructor
     (Stream : not null access Ada.Streams.Root_Stream_Type'Class)
      return APB_Message;
end NMEA.Messages.APB;
