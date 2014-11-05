--  This package has been generated automatically by GNATtest.
--  Do not edit any part of it, see GNATtest documentation for more details.

--  begin read only
with AUnit.Test_Caller;
with Gnattest_Generated;

package body NMEA.Links.Nmea_Stream_Test_Data.Nmea_Stream_Tests.Suite is

   package Runner_1 is new AUnit.Test_Caller
     (GNATtest_Generated.GNATtest_Standard.NMEA.Links.Nmea_Stream_Test_Data.Nmea_Stream_Tests.Test_Nmea_Stream);

   Result : aliased AUnit.Test_Suites.Test_Suite;

   Case_1_1_Test_Dump_c87a97 : aliased Runner_1.Test_Case;
   Case_2_1_Test_Read_b2fc29 : aliased Runner_1.Test_Case;
   Case_3_1_Test_Write_f61559 : aliased Runner_1.Test_Case;
   Case_1i_1_Test_Read_b2fc29 : aliased Runner_1.Test_Case;
   Case_2i_1_Test_Write_f61559 : aliased Runner_1.Test_Case;

   function Suite return AUnit.Test_Suites.Access_Test_Suite is
   begin

      Runner_1.Create
        (Case_1_1_Test_Dump_c87a97,
         "nmea-links.ads:29:4:",
         Test_Dump_c87a97'Access);
      Runner_1.Create
        (Case_2_1_Test_Read_b2fc29,
         "nmea-links.ads:46:4:",
         Test_Read_b2fc29'Access);
      Runner_1.Create
        (Case_3_1_Test_Write_f61559,
         "nmea-links.ads:51:4:",
         Test_Write_f61559'Access);
      Runner_1.Create
        (Case_1i_1_Test_Read_b2fc29,
         "nmea-links.ads:46:4: inherited at nmea-links.ads:41:4:",
         Test_Read_b2fc29'Access);
      Runner_1.Create
        (Case_2i_1_Test_Write_f61559,
         "nmea-links.ads:51:4: inherited at nmea-links.ads:41:4:",
         Test_Write_f61559'Access);

      Result.Add_Test (Case_1_1_Test_Dump_c87a97'Access);
      Result.Add_Test (Case_2_1_Test_Read_b2fc29'Access);
      Result.Add_Test (Case_3_1_Test_Write_f61559'Access);
      Result.Add_Test (Case_1i_1_Test_Read_b2fc29'Access);
      Result.Add_Test (Case_2i_1_Test_Write_f61559'Access);

      return Result'Access;

   end Suite;

end NMEA.Links.Nmea_Stream_Test_Data.Nmea_Stream_Tests.Suite;
--  end read only
