--  This package is intended to set up and tear down  the test environment.
--  Once created by GNATtest, this package will never be overwritten
--  automatically. Contents of this package can be modified in any way
--  except for sections surrounded by a 'read only' marker.

package body NMEA.Links.Nmea_Frame_Test_Data is

   Local_Nmea_Frame : aliased GNATtest_Generated.GNATtest_Standard.NMEA.Links.Nmea_Frame;
   procedure Set_Up (Gnattest_T : in out Test_Nmea_Frame) is
   begin
      Gnattest_T.Fixture := Local_Nmea_Frame'Access;
   end Set_Up;

   procedure Tear_Down (Gnattest_T : in out Test_Nmea_Frame) is
   begin
      null;
   end Tear_Down;

end NMEA.Links.Nmea_Frame_Test_Data;
