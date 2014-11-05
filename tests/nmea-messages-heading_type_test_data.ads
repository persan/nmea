--  This package is intended to set up and tear down  the test environment.
--  Once created by GNATtest, this package will never be overwritten
--  automatically. Contents of this package can be modified in any way
--  except for sections surrounded by a 'read only' marker.

with NMEA.Messages.NMEA_Long_Float_Test_Data.NMEA_Long_Float_Tests;

with GNATtest_Generated;

package NMEA.Messages.Heading_Type_Test_Data is

--  begin read only
   type Test_Heading_Type is new
     GNATtest_Generated.GNATtest_Standard.NMEA.Messages.NMEA_Long_Float_Test_Data.NMEA_Long_Float_Tests.Test_NMEA_Long_Float
--  end read only
   with null record;

   procedure Set_Up (Gnattest_T : in out Test_Heading_Type);
   procedure Tear_Down (Gnattest_T : in out Test_Heading_Type);

end NMEA.Messages.Heading_Type_Test_Data;
