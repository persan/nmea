--  This package has been generated automatically by GNATtest.
--  Do not edit any part of it, see GNATtest documentation for more details.

--  begin read only
with AUnit.Test_Caller;
with Gnattest_Generated;

package body NMEA.Messages.Test_Data.Tests.Suite is

   package Runner_1 is new AUnit.Test_Caller
     (GNATtest_Generated.GNATtest_Standard.NMEA.Messages.Test_Data.Tests.Test);

   Result : aliased AUnit.Test_Suites.Test_Suite;

   Case_1_1_Test_Input_Message_d13f38 : aliased Runner_1.Test_Case;
   Case_2_1_Test_Output_Message_a35d9a : aliased Runner_1.Test_Case;
   Case_3_1_Test_Read_4a9984 : aliased Runner_1.Test_Case;
   Case_4_1_Test_Read_1bbe9a : aliased Runner_1.Test_Case;
   Case_5_1_Test_Try_Dump_b1b7d2 : aliased Runner_1.Test_Case;
   Case_6_1_Test_Register_fbe51c : aliased Runner_1.Test_Case;
   Case_7_1_Test_Deg_To_Float_2ed477 : aliased Runner_1.Test_Case;
   Case_8_1_Test_Image_b22639 : aliased Runner_1.Test_Case;

   function Suite return AUnit.Test_Suites.Access_Test_Suite is
   begin

      Runner_1.Create
        (Case_1_1_Test_Input_Message_d13f38,
         "nmea-messages.ads:10:4:",
         Test_Input_Message_d13f38'Access);
      Runner_1.Create
        (Case_2_1_Test_Output_Message_a35d9a,
         "nmea-messages.ads:14:4:",
         Test_Output_Message_a35d9a'Access);
      Runner_1.Create
        (Case_3_1_Test_Read_4a9984,
         "nmea-messages.ads:221:4:",
         Test_Read_4a9984'Access);
      Runner_1.Create
        (Case_4_1_Test_Read_1bbe9a,
         "nmea-messages.ads:222:4:",
         Test_Read_1bbe9a'Access);
      Runner_1.Create
        (Case_5_1_Test_Try_Dump_b1b7d2,
         "nmea-messages.ads:223:4:",
         Test_Try_Dump_b1b7d2'Access);
      Runner_1.Create
        (Case_6_1_Test_Register_fbe51c,
         "nmea-messages.ads:229:4:",
         Test_Register_fbe51c'Access);
      Runner_1.Create
        (Case_7_1_Test_Deg_To_Float_2ed477,
         "nmea-messages.ads:230:4:",
         Test_Deg_To_Float_2ed477'Access);
      Runner_1.Create
        (Case_8_1_Test_Image_b22639,
         "nmea-messages.ads:232:4:",
         Test_Image_b22639'Access);

      Result.Add_Test (Case_1_1_Test_Input_Message_d13f38'Access);
      Result.Add_Test (Case_2_1_Test_Output_Message_a35d9a'Access);
      Result.Add_Test (Case_3_1_Test_Read_4a9984'Access);
      Result.Add_Test (Case_4_1_Test_Read_1bbe9a'Access);
      Result.Add_Test (Case_5_1_Test_Try_Dump_b1b7d2'Access);
      Result.Add_Test (Case_6_1_Test_Register_fbe51c'Access);
      Result.Add_Test (Case_7_1_Test_Deg_To_Float_2ed477'Access);
      Result.Add_Test (Case_8_1_Test_Image_b22639'Access);

      return Result'Access;

   end Suite;

end NMEA.Messages.Test_Data.Tests.Suite;
--  end read only
