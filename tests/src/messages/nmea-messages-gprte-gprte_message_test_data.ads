--  This package is intended to set up and tear down  the test environment.
--  Once created by GNATtest, this package will never be overwritten
--  automatically. Contents of this package can be modified in any way
--  except for sections surrounded by a 'read only' marker.


with AUnit.Test_Fixtures;

with GNATtest_Generated;

package NMEA.Messages.GPRTE.GPRTE_Message_Test_Data is

   type GPRTE_Message_Access is access all GNATtest_Generated.GNATtest_Standard.NMEA.Messages.GPRTE.GPRTE_Message'Class;

--  begin read only
   type Test_GPRTE_Message is new AUnit.Test_Fixtures.Test_Fixture
--  end read only
   with record
      Fixture : GPRTE_Message_Access;
   end record;

   procedure Set_Up (Gnattest_T : in out Test_GPRTE_Message);
   procedure Tear_Down (Gnattest_T : in out Test_GPRTE_Message);

end NMEA.Messages.GPRTE.GPRTE_Message_Test_Data;
