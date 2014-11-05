--  This package is intended to set up and tear down  the test environment.
--  Once created by GNATtest, this package will never be overwritten
--  automatically. Contents of this package can be modified in any way
--  except for sections surrounded by a 'read only' marker.

package body NMEA.Messages.Fix_Quality_Type_Test_Data is

   Local_Fix_Quality_Type : aliased GNATtest_Generated.GNATtest_Standard.NMEA.Messages.Fix_Quality_Type;
   procedure Set_Up (Gnattest_T : in out Test_Fix_Quality_Type) is
   begin
     GNATtest_Generated.GNATtest_Standard.NMEA.Messages.NMEA_Long_Float_Test_Data.NMEA_Long_Float_Tests.Test_NMEA_Long_Float(Gnattest_T).Set_Up;
      Gnattest_T.Fixture := Local_Fix_Quality_Type'Access;
   end Set_Up;

   procedure Tear_Down (Gnattest_T : in out Test_Fix_Quality_Type) is
   begin
     GNATtest_Generated.GNATtest_Standard.NMEA.Messages.NMEA_Long_Float_Test_Data.NMEA_Long_Float_Tests.Test_NMEA_Long_Float(Gnattest_T).Tear_Down;
   end Tear_Down;

end NMEA.Messages.Fix_Quality_Type_Test_Data;
