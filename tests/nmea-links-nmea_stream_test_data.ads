--  This package is intended to set up and tear down  the test environment.
--  Once created by GNATtest, this package will never be overwritten
--  automatically. Contents of this package can be modified in any way
--  except for sections surrounded by a 'read only' marker.


with AUnit.Test_Fixtures;

with GNATtest_Generated;

package NMEA.Links.Nmea_Stream_Test_Data is

   type Nmea_Stream_Access is access all GNATtest_Generated.GNATtest_Standard.NMEA.Links.Nmea_Stream'Class;

--  begin read only
   type Test_Nmea_Stream is new AUnit.Test_Fixtures.Test_Fixture
--  end read only
   with record
      Fixture : Nmea_Stream_Access;
   end record;

   procedure Set_Up (Gnattest_T : in out Test_Nmea_Stream);
   procedure Tear_Down (Gnattest_T : in out Test_Nmea_Stream);

end NMEA.Links.Nmea_Stream_Test_Data;
