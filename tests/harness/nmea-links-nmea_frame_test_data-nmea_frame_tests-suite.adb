--  This package has been generated automatically by GNATtest.
--  Do not edit any part of it, see GNATtest documentation for more details.

--  begin read only
with AUnit.Test_Caller;
with Gnattest_Generated;

package body NMEA.Links.Nmea_Frame_Test_Data.Nmea_Frame_Tests.Suite is

   package Runner_1 is new AUnit.Test_Caller
     (GNATtest_Generated.GNATtest_Standard.NMEA.Links.Nmea_Frame_Test_Data.Nmea_Frame_Tests.Test_Nmea_Frame);

   Result : aliased AUnit.Test_Suites.Test_Suite;

   Case_1_1_Test_Read_3ebf75 : aliased Runner_1.Test_Case;
   Case_2_1_Test_Write_99892c : aliased Runner_1.Test_Case;
   Case_3_1_Test_Stream_0b87c4 : aliased Runner_1.Test_Case;
   Case_4_1_Test_Image_1b1951 : aliased Runner_1.Test_Case;
   Case_5_1_Test_Dump_5dabde : aliased Runner_1.Test_Case;
   Case_6_1_Test_Check_Checksum_8078a2 : aliased Runner_1.Test_Case;
   Case_7_1_Test_Check_Checksum_8862e3 : aliased Runner_1.Test_Case;
   Case_8_1_Test_Generate_Checksum_bc2181 : aliased Runner_1.Test_Case;

   function Suite return AUnit.Test_Suites.Access_Test_Suite is
   begin

      Runner_1.Create
        (Case_1_1_Test_Read_3ebf75,
         "nmea-links.ads:9:4:",
         Test_Read_3ebf75'Access);
      Runner_1.Create
        (Case_2_1_Test_Write_99892c,
         "nmea-links.ads:13:4:",
         Test_Write_99892c'Access);
      Runner_1.Create
        (Case_3_1_Test_Stream_0b87c4,
         "nmea-links.ads:23:4:",
         Test_Stream_0b87c4'Access);
      Runner_1.Create
        (Case_4_1_Test_Image_1b1951,
         "nmea-links.ads:27:4:",
         Test_Image_1b1951'Access);
      Runner_1.Create
        (Case_5_1_Test_Dump_5dabde,
         "nmea-links.ads:30:4:",
         Test_Dump_5dabde'Access);
      Runner_1.Create
        (Case_6_1_Test_Check_Checksum_8078a2,
         "nmea-links.ads:35:4:",
         Test_Check_Checksum_8078a2'Access);
      Runner_1.Create
        (Case_7_1_Test_Check_Checksum_8862e3,
         "nmea-links.ads:36:4:",
         Test_Check_Checksum_8862e3'Access);
      Runner_1.Create
        (Case_8_1_Test_Generate_Checksum_bc2181,
         "nmea-links.ads:37:4:",
         Test_Generate_Checksum_bc2181'Access);

      Result.Add_Test (Case_1_1_Test_Read_3ebf75'Access);
      Result.Add_Test (Case_2_1_Test_Write_99892c'Access);
      Result.Add_Test (Case_3_1_Test_Stream_0b87c4'Access);
      Result.Add_Test (Case_4_1_Test_Image_1b1951'Access);
      Result.Add_Test (Case_5_1_Test_Dump_5dabde'Access);
      Result.Add_Test (Case_6_1_Test_Check_Checksum_8078a2'Access);
      Result.Add_Test (Case_7_1_Test_Check_Checksum_8862e3'Access);
      Result.Add_Test (Case_8_1_Test_Generate_Checksum_bc2181'Access);

      return Result'Access;

   end Suite;

end NMEA.Links.Nmea_Frame_Test_Data.Nmea_Frame_Tests.Suite;
--  end read only
