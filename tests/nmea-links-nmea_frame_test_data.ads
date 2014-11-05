--  This package is intended to set up and tear down  the test environment.
--  Once created by GNATtest, this package will never be overwritten
--  automatically. Contents of this package can be modified in any way
--  except for sections surrounded by a 'read only' marker.


with AUnit.Test_Fixtures;

with GNATtest_Generated;

package NMEA.Links.Nmea_Frame_Test_Data is

   type Nmea_Frame_Access is access all GNATtest_Generated.GNATtest_Standard.NMEA.Links.Nmea_Frame'Class;

--  begin read only
   type Test_Nmea_Frame is new AUnit.Test_Fixtures.Test_Fixture
--  end read only
   with record
      Fixture : Nmea_Frame_Access;
   end record;

   procedure Set_Up (Gnattest_T : in out Test_Nmea_Frame);
   procedure Tear_Down (Gnattest_T : in out Test_Nmea_Frame);

end NMEA.Links.Nmea_Frame_Test_Data;
