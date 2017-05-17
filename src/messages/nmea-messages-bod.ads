--  BOD - Bearing - Waypoint to Waypoint
--          1   2 3   4 5    6    7
--          |   | |   | |    |    |
--   $--BOD,x.x,T,x.x,M,c--c,c--c*hh<CR><LF>
--  Field Number:
--  1. Bearing Degrees, TRUE
--  2. T = True
--  3. Bearing Degrees, Magnetic
--  4. M = Magnetic
--  5. TO Waypoint
--  6. FROM Waypoint
--  7. Checksum
--  Example 1: $GPBOD,099.3,T,105.6,M,POINTB,*01
--  Waypoint ID: "POINTB" Bearing 99.3 True, 105.6 Magnetic This sentence is transmitted in the GOTO mode, without an active route on your GPS. WARNING: this is the bearing from the moment you press enter in the GOTO page to the destination waypoint and is NOT updated dynamically! To update the information, (current bearing to waypoint), you will have to press enter in the GOTO page again.
--  Example 2: $GPBOD,097.0,T,103.2,M,POINTB,POINTA*52
--  This sentence is transmitted when a route is active. It contains the active leg information: origin waypoint "POINTA" and destination waypoint "POINTB", bearing between the two points 97.0 True, 103.2 Magnetic. It does NOT display the bearing from current location to destination waypoint! WARNING Again this information does not change until you are on the next leg of the route. (The bearing from POINTA to POINTB does not change during the time you are on this leg.)
--  This sentence has been replaced by BWW in NMEA 4.00 (and posssibly earlier versions) [ANON].

package NMEA.Messages.BOD is

   type BOD_Message is new Message with record
      Bearing_Degrees_TRUE     : NMEA_Dummy_Field;
      T_True                   : NMEA_Dummy_Field;
      Bearing_Degrees_Magnetic : NMEA_Dummy_Field;
      M_Magnetic               : NMEA_Dummy_Field;
      TO_Waypoint              : NMEA_Dummy_Field;
      FROM_Waypoint            : NMEA_Dummy_Field;
   end record;

   overriding function Image (This : BOD_Message) return String;

private
   overriding
   function Constructor
     (Stream : not null access Ada.Streams.Root_Stream_Type'Class)
      return BOD_Message;
end NMEA.Messages.BOD;
