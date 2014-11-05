--  This package has been generated automatically by GNATtest.
--  Do not edit any part of it, see GNATtest documentation for more details.

--  begin read only
with AUnit.Test_Caller;
with Gnattest_Generated;

package body NMEA.Messages.HCHDG.HCHDG_Message_Test_Data.HCHDG_Message_Tests.Suite is

   package Runner_1 is new AUnit.Test_Caller
     (GNATtest_Generated.GNATtest_Standard.NMEA.Messages.HCHDG.HCHDG_Message_Test_Data.HCHDG_Message_Tests.Test_HCHDG_Message);

   Result : aliased AUnit.Test_Suites.Test_Suite;

   Case_1_1_Test_Image_b09344 : aliased Runner_1.Test_Case;
   Case_2_1_Test_Constructor_067ead : aliased Runner_1.Test_Case;
   Case_1i_1_Test_Constructor_067ead : aliased Runner_1.Test_Case;

   function Suite return AUnit.Test_Suites.Access_Test_Suite is
   begin

      Runner_1.Create
        (Case_1_1_Test_Image_b09344,
         "nmea-messages-hchdg.ads:7:4:",
         Test_Image_b09344'Access);
      Runner_1.Create
        (Case_2_1_Test_Constructor_067ead,
         "nmea-messages-hchdg.ads:10:4:",
         Test_Constructor_067ead'Access);
      Runner_1.Create
        (Case_1i_1_Test_Constructor_067ead,
         "nmea-messages-hchdg.ads:10:4: inherited at nmea-messages-hchdg.ads:3:4:",
         Test_Constructor_067ead'Access);

      Result.Add_Test (Case_1_1_Test_Image_b09344'Access);
      Result.Add_Test (Case_2_1_Test_Constructor_067ead'Access);
      Result.Add_Test (Case_1i_1_Test_Constructor_067ead'Access);

      return Result'Access;

   end Suite;

end NMEA.Messages.HCHDG.HCHDG_Message_Test_Data.HCHDG_Message_Tests.Suite;
--  end read only
