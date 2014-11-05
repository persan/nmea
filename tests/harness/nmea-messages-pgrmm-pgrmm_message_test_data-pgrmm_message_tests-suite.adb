--  This package has been generated automatically by GNATtest.
--  Do not edit any part of it, see GNATtest documentation for more details.

--  begin read only
with AUnit.Test_Caller;
with Gnattest_Generated;

package body NMEA.Messages.PGRMM.PGRMM_Message_Test_Data.PGRMM_Message_Tests.Suite is

   package Runner_1 is new AUnit.Test_Caller
     (GNATtest_Generated.GNATtest_Standard.NMEA.Messages.PGRMM.PGRMM_Message_Test_Data.PGRMM_Message_Tests.Test_PGRMM_Message);

   Result : aliased AUnit.Test_Suites.Test_Suite;

   Case_1_1_Test_Image_438dff : aliased Runner_1.Test_Case;
   Case_2_1_Test_Constructor_6de81c : aliased Runner_1.Test_Case;
   Case_1i_1_Test_Constructor_6de81c : aliased Runner_1.Test_Case;

   function Suite return AUnit.Test_Suites.Access_Test_Suite is
   begin

      Runner_1.Create
        (Case_1_1_Test_Image_438dff,
         "nmea-messages-pgrmm.ads:7:4:",
         Test_Image_438dff'Access);
      Runner_1.Create
        (Case_2_1_Test_Constructor_6de81c,
         "nmea-messages-pgrmm.ads:10:4:",
         Test_Constructor_6de81c'Access);
      Runner_1.Create
        (Case_1i_1_Test_Constructor_6de81c,
         "nmea-messages-pgrmm.ads:10:4: inherited at nmea-messages-pgrmm.ads:3:4:",
         Test_Constructor_6de81c'Access);

      Result.Add_Test (Case_1_1_Test_Image_438dff'Access);
      Result.Add_Test (Case_2_1_Test_Constructor_6de81c'Access);
      Result.Add_Test (Case_1i_1_Test_Constructor_6de81c'Access);

      return Result'Access;

   end Suite;

end NMEA.Messages.PGRMM.PGRMM_Message_Test_Data.PGRMM_Message_Tests.Suite;
--  end read only
