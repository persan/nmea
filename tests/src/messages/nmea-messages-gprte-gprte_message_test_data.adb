--  This package is intended to set up and tear down  the test environment.
--  Once created by GNATtest, this package will never be overwritten
--  automatically. Contents of this package can be modified in any way
--  except for sections surrounded by a 'read only' marker.

package body NMEA.Messages.GPRTE.GPRTE_Message_Test_Data is

   Local_GPRTE_Message : aliased GNATtest_Generated.GNATtest_Standard.NMEA.Messages.GPRTE.GPRTE_Message;
   procedure Set_Up (Gnattest_T : in out Test_GPRTE_Message) is
   begin
      Gnattest_T.Fixture := Local_GPRTE_Message'Access;
   end Set_Up;

   procedure Tear_Down (Gnattest_T : in out Test_GPRTE_Message) is
   begin
      null;
   end Tear_Down;

end NMEA.Messages.GPRTE.GPRTE_Message_Test_Data;
