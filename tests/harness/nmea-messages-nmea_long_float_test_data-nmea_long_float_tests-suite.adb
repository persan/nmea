--  This package has been generated automatically by GNATtest.
--  Do not edit any part of it, see GNATtest documentation for more details.

--  begin read only
with AUnit.Test_Caller;
with Gnattest_Generated;

package body NMEA.Messages.NMEA_Long_Float_Test_Data.NMEA_Long_Float_Tests.Suite is

   package Runner_1 is new AUnit.Test_Caller
     (GNATtest_Generated.GNATtest_Standard.NMEA.Messages.NMEA_Long_Float_Test_Data.NMEA_Long_Float_Tests.Test_NMEA_Long_Float);

   Result : aliased AUnit.Test_Suites.Test_Suite;

   Case_1_1_Test_Read_7e055c : aliased Runner_1.Test_Case;
   Case_2_1_Test_Write_6fb053 : aliased Runner_1.Test_Case;
   Case_3_1_Test_Image_708c3f : aliased Runner_1.Test_Case;

   function Suite return AUnit.Test_Suites.Access_Test_Suite is
   begin

      Runner_1.Create
        (Case_1_1_Test_Read_7e055c,
         "nmea-messages.ads:70:4:",
         Test_Read_7e055c'Access);
      Runner_1.Create
        (Case_2_1_Test_Write_6fb053,
         "nmea-messages.ads:74:4:",
         Test_Write_6fb053'Access);
      Runner_1.Create
        (Case_3_1_Test_Image_708c3f,
         "nmea-messages.ads:78:4:",
         Test_Image_708c3f'Access);

      Result.Add_Test (Case_1_1_Test_Read_7e055c'Access);
      Result.Add_Test (Case_2_1_Test_Write_6fb053'Access);
      Result.Add_Test (Case_3_1_Test_Image_708c3f'Access);

      return Result'Access;

   end Suite;

end NMEA.Messages.NMEA_Long_Float_Test_Data.NMEA_Long_Float_Tests.Suite;
--  end read only
