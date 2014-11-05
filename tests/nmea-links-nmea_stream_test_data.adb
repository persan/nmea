--  This package is intended to set up and tear down  the test environment.
--  Once created by GNATtest, this package will never be overwritten
--  automatically. Contents of this package can be modified in any way
--  except for sections surrounded by a 'read only' marker.

package body NMEA.Links.Nmea_Stream_Test_Data is

   --  Local_Nmea_Stream : aliased GNATtest_Generated.GNATtest_Standard.NMEA.Links.Nmea_Stream;
   procedure Set_Up (Gnattest_T : in out Test_Nmea_Stream) is
   begin
      null;
      --  Gnattest_T.Fixture := Local_Nmea_Stream'Access;
   end Set_Up;

   procedure Tear_Down (Gnattest_T : in out Test_Nmea_Stream) is
   begin
      null;
   end Tear_Down;

end NMEA.Links.Nmea_Stream_Test_Data;
