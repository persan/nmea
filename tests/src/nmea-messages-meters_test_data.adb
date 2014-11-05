--  This package is intended to set up and tear down  the test environment.
--  Once created by GNATtest, this package will never be overwritten
--  automatically. Contents of this package can be modified in any way
--  except for sections surrounded by a 'read only' marker.

package body NMEA.Messages.Meters_Test_Data is

   Local_Meters : aliased GNATtest_Generated.GNATtest_Standard.NMEA.Messages.Meters;
   procedure Set_Up (Gnattest_T : in out Test_Meters) is
   begin
     GNATtest_Generated.GNATtest_Standard.NMEA.Messages.NMEA_Long_Float_Test_Data.NMEA_Long_Float_Tests.Test_NMEA_Long_Float(Gnattest_T).Set_Up;
      Gnattest_T.Fixture := Local_Meters'Access;
   end Set_Up;

   procedure Tear_Down (Gnattest_T : in out Test_Meters) is
   begin
     GNATtest_Generated.GNATtest_Standard.NMEA.Messages.NMEA_Long_Float_Test_Data.NMEA_Long_Float_Tests.Test_NMEA_Long_Float(Gnattest_T).Tear_Down;
   end Tear_Down;

end NMEA.Messages.Meters_Test_Data;
