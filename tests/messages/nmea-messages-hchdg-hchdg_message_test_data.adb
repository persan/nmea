--  This package is intended to set up and tear down  the test environment.
--  Once created by GNATtest, this package will never be overwritten
--  automatically. Contents of this package can be modified in any way
--  except for sections surrounded by a 'read only' marker.

package body NMEA.Messages.HCHDG.HCHDG_Message_Test_Data is

   Local_HCHDG_Message : aliased GNATtest_Generated.GNATtest_Standard.NMEA.Messages.HCHDG.HCHDG_Message;
   procedure Set_Up (Gnattest_T : in out Test_HCHDG_Message) is
   begin
      Gnattest_T.Fixture := Local_HCHDG_Message'Access;
   end Set_Up;

   procedure Tear_Down (Gnattest_T : in out Test_HCHDG_Message) is
   begin
      null;
   end Tear_Down;

end NMEA.Messages.HCHDG.HCHDG_Message_Test_Data;
