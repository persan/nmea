--  This package is intended to set up and tear down  the test environment.
--  Once created by GNATtest, this package will never be overwritten
--  automatically. Contents of this package can be modified in any way
--  except for sections surrounded by a 'read only' marker.

package body NMEA.Messages.NMEA_String_Test_Data is

   --  Local_NMEA_String : aliased GNATtest_Generated.GNATtest_Standard.NMEA.Messages.NMEA_String;
   procedure Set_Up (Gnattest_T : in out Test_NMEA_String) is
   begin
     GNATtest_Generated.GNATtest_Standard.NMEA.Messages.NMEA_Field_Test_Data.NMEA_Field_Tests.Test_NMEA_Field(Gnattest_T).Set_Up;
      null;
      --  Gnattest_T.Fixture := Local_NMEA_String'Access;
   end Set_Up;

   procedure Tear_Down (Gnattest_T : in out Test_NMEA_String) is
   begin
     GNATtest_Generated.GNATtest_Standard.NMEA.Messages.NMEA_Field_Test_Data.NMEA_Field_Tests.Test_NMEA_Field(Gnattest_T).Tear_Down;
   end Tear_Down;

end NMEA.Messages.NMEA_String_Test_Data;
