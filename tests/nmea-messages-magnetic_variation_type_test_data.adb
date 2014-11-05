--  This package is intended to set up and tear down  the test environment.
--  Once created by GNATtest, this package will never be overwritten
--  automatically. Contents of this package can be modified in any way
--  except for sections surrounded by a 'read only' marker.

package body NMEA.Messages.Magnetic_Variation_Type_Test_Data is

   Local_Magnetic_Variation_Type : aliased GNATtest_Generated.GNATtest_Standard.NMEA.Messages.Magnetic_Variation_Type;
   procedure Set_Up (Gnattest_T : in out Test_Magnetic_Variation_Type) is
   begin
     GNATtest_Generated.GNATtest_Standard.NMEA.Messages.Longitude_Type_Test_Data.Longitude_Type_Tests.Test_Longitude_Type(Gnattest_T).Set_Up;
      Gnattest_T.Fixture := Local_Magnetic_Variation_Type'Access;
   end Set_Up;

   procedure Tear_Down (Gnattest_T : in out Test_Magnetic_Variation_Type) is
   begin
     GNATtest_Generated.GNATtest_Standard.NMEA.Messages.Longitude_Type_Test_Data.Longitude_Type_Tests.Test_Longitude_Type(Gnattest_T).Tear_Down;
   end Tear_Down;

end NMEA.Messages.Magnetic_Variation_Type_Test_Data;
