--  This package is intended to set up and tear down  the test environment.
--  Once created by GNATtest, this package will never be overwritten
--  automatically. Contents of this package can be modified in any way
--  except for sections surrounded by a 'read only' marker.

package body NMEA.Messages.DGPS_Station_ID_Test_Data is

   Local_DGPS_Station_ID : aliased GNATtest_Generated.GNATtest_Standard.NMEA.Messages.DGPS_Station_ID;
   procedure Set_Up (Gnattest_T : in out Test_DGPS_Station_ID) is
   begin
     GNATtest_Generated.GNATtest_Standard.NMEA.Messages.NMEA_Integer_Test_Data.NMEA_Integer_Tests.Test_NMEA_Integer(Gnattest_T).Set_Up;
      Gnattest_T.Fixture := Local_DGPS_Station_ID'Access;
   end Set_Up;

   procedure Tear_Down (Gnattest_T : in out Test_DGPS_Station_ID) is
   begin
     GNATtest_Generated.GNATtest_Standard.NMEA.Messages.NMEA_Integer_Test_Data.NMEA_Integer_Tests.Test_NMEA_Integer(Gnattest_T).Tear_Down;
   end Tear_Down;

end NMEA.Messages.DGPS_Station_ID_Test_Data;
