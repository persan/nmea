--  This package is intended to set up and tear down  the test environment.
--  Once created by GNATtest, this package will never be overwritten
--  automatically. Contents of this package can be modified in any way
--  except for sections surrounded by a 'read only' marker.

with NMEA.Messages.Longitude_Type_Test_Data.Longitude_Type_Tests;

with GNATtest_Generated;

package NMEA.Messages.Magnetic_Variation_Type_Test_Data is

--  begin read only
   type Test_Magnetic_Variation_Type is new
     GNATtest_Generated.GNATtest_Standard.NMEA.Messages.Longitude_Type_Test_Data.Longitude_Type_Tests.Test_Longitude_Type
--  end read only
   with null record;

   procedure Set_Up (Gnattest_T : in out Test_Magnetic_Variation_Type);
   procedure Tear_Down (Gnattest_T : in out Test_Magnetic_Variation_Type);

end NMEA.Messages.Magnetic_Variation_Type_Test_Data;
