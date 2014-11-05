--  This package has been generated automatically by GNATtest.
--  Do not edit any part of it, see GNATtest documentation for more details.

--  begin read only
with AUnit.Test_Caller;
with Gnattest_Generated;

package body NMEA.Messages.UTC_Time_Type_Test_Data.UTC_Time_Type_Tests.Suite is

   package Runner_1 is new AUnit.Test_Caller
     (GNATtest_Generated.GNATtest_Standard.NMEA.Messages.UTC_Time_Type_Test_Data.UTC_Time_Type_Tests.Test_UTC_Time_Type);

   Result : aliased AUnit.Test_Suites.Test_Suite;

   Case_1_1_Test_Read_7e055c : aliased Runner_1.Test_Case;
   Case_2_1_Test_Write_6fb053 : aliased Runner_1.Test_Case;

   function Suite return AUnit.Test_Suites.Access_Test_Suite is
   begin

      Runner_1.Create
        (Case_1_1_Test_Read_7e055c,
         "nmea-messages.ads:56:4:",
         Test_Read_7e055c'Access);
      Runner_1.Create
        (Case_2_1_Test_Write_6fb053,
         "nmea-messages.ads:60:4:",
         Test_Write_6fb053'Access);

      Result.Add_Test (Case_1_1_Test_Read_7e055c'Access);
      Result.Add_Test (Case_2_1_Test_Write_6fb053'Access);

      return Result'Access;

   end Suite;

end NMEA.Messages.UTC_Time_Type_Test_Data.UTC_Time_Type_Tests.Suite;
--  end read only
