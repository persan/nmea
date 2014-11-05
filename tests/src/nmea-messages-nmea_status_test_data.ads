--  This package is intended to set up and tear down  the test environment.
--  Once created by GNATtest, this package will never be overwritten
--  automatically. Contents of this package can be modified in any way
--  except for sections surrounded by a 'read only' marker.

with NMEA.Messages.NMEA_Field_Test_Data.NMEA_Field_Tests;

with GNATtest_Generated;

package NMEA.Messages.NMEA_Status_Test_Data is

--  begin read only
   type Test_NMEA_Status is new
     GNATtest_Generated.GNATtest_Standard.NMEA.Messages.NMEA_Field_Test_Data.NMEA_Field_Tests.Test_NMEA_Field
--  end read only
   with null record;

   procedure Set_Up (Gnattest_T : in out Test_NMEA_Status);
   procedure Tear_Down (Gnattest_T : in out Test_NMEA_Status);

end NMEA.Messages.NMEA_Status_Test_Data;
