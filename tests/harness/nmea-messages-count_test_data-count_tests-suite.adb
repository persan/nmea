--  This package has been generated automatically by GNATtest.
--  Do not edit any part of it, see GNATtest documentation for more details.

--  begin read only
with AUnit.Test_Caller;
with Gnattest_Generated;

package body NMEA.Messages.Count_Test_Data.Count_Tests.Suite is

   package Runner_1 is new AUnit.Test_Caller
     (GNATtest_Generated.GNATtest_Standard.NMEA.Messages.Count_Test_Data.Count_Tests.Test_Count);

   Result : aliased AUnit.Test_Suites.Test_Suite;

   Case_1i_1_Test_Read_7e055c : aliased Runner_1.Test_Case;
   Case_2i_1_Test_Write_6fb053 : aliased Runner_1.Test_Case;

   function Suite return AUnit.Test_Suites.Access_Test_Suite is
   begin

      Runner_1.Create
        (Case_1i_1_Test_Read_7e055c,
         "nmea-messages.ads:98:4: inherited at nmea-messages.ads:144:4:",
         Test_Read_7e055c'Access);
      Runner_1.Create
        (Case_2i_1_Test_Write_6fb053,
         "nmea-messages.ads:101:4: inherited at nmea-messages.ads:144:4:",
         Test_Write_6fb053'Access);

      Result.Add_Test (Case_1i_1_Test_Read_7e055c'Access);
      Result.Add_Test (Case_2i_1_Test_Write_6fb053'Access);

      return Result'Access;

   end Suite;

end NMEA.Messages.Count_Test_Data.Count_Tests.Suite;
--  end read only
