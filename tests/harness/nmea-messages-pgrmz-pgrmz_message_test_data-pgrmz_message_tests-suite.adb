--  This package has been generated automatically by GNATtest.
--  Do not edit any part of it, see GNATtest documentation for more details.

--  begin read only
with AUnit.Test_Caller;
with Gnattest_Generated;

package body NMEA.Messages.PGRMZ.PGRMZ_Message_Test_Data.PGRMZ_Message_Tests.Suite is

   package Runner_1 is new AUnit.Test_Caller
     (GNATtest_Generated.GNATtest_Standard.NMEA.Messages.PGRMZ.PGRMZ_Message_Test_Data.PGRMZ_Message_Tests.Test_PGRMZ_Message);

   Result : aliased AUnit.Test_Suites.Test_Suite;

   Case_1_1_Test_Image_073f9a : aliased Runner_1.Test_Case;
   Case_2_1_Test_Constructor_a25357 : aliased Runner_1.Test_Case;
   Case_1i_1_Test_Constructor_a25357 : aliased Runner_1.Test_Case;

   function Suite return AUnit.Test_Suites.Access_Test_Suite is
   begin

      Runner_1.Create
        (Case_1_1_Test_Image_073f9a,
         "nmea-messages-pgrmz.ads:7:4:",
         Test_Image_073f9a'Access);
      Runner_1.Create
        (Case_2_1_Test_Constructor_a25357,
         "nmea-messages-pgrmz.ads:10:4:",
         Test_Constructor_a25357'Access);
      Runner_1.Create
        (Case_1i_1_Test_Constructor_a25357,
         "nmea-messages-pgrmz.ads:10:4: inherited at nmea-messages-pgrmz.ads:3:4:",
         Test_Constructor_a25357'Access);

      Result.Add_Test (Case_1_1_Test_Image_073f9a'Access);
      Result.Add_Test (Case_2_1_Test_Constructor_a25357'Access);
      Result.Add_Test (Case_1i_1_Test_Constructor_a25357'Access);

      return Result'Access;

   end Suite;

end NMEA.Messages.PGRMZ.PGRMZ_Message_Test_Data.PGRMZ_Message_Tests.Suite;
--  end read only
