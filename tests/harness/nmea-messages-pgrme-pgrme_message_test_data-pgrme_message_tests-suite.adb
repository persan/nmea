--  This package has been generated automatically by GNATtest.
--  Do not edit any part of it, see GNATtest documentation for more details.

--  begin read only
with AUnit.Test_Caller;
with Gnattest_Generated;

package body NMEA.Messages.PGRME.PGRME_Message_Test_Data.PGRME_Message_Tests.Suite is

   package Runner_1 is new AUnit.Test_Caller
     (GNATtest_Generated.GNATtest_Standard.NMEA.Messages.PGRME.PGRME_Message_Test_Data.PGRME_Message_Tests.Test_PGRME_Message);

   Result : aliased AUnit.Test_Suites.Test_Suite;

   Case_1_1_Test_Image_af6f9a : aliased Runner_1.Test_Case;
   Case_2_1_Test_Constructor_2acfb3 : aliased Runner_1.Test_Case;
   Case_1i_1_Test_Constructor_2acfb3 : aliased Runner_1.Test_Case;

   function Suite return AUnit.Test_Suites.Access_Test_Suite is
   begin

      Runner_1.Create
        (Case_1_1_Test_Image_af6f9a,
         "nmea-messages-pgrme.ads:7:4:",
         Test_Image_af6f9a'Access);
      Runner_1.Create
        (Case_2_1_Test_Constructor_2acfb3,
         "nmea-messages-pgrme.ads:10:4:",
         Test_Constructor_2acfb3'Access);
      Runner_1.Create
        (Case_1i_1_Test_Constructor_2acfb3,
         "nmea-messages-pgrme.ads:10:4: inherited at nmea-messages-pgrme.ads:3:4:",
         Test_Constructor_2acfb3'Access);

      Result.Add_Test (Case_1_1_Test_Image_af6f9a'Access);
      Result.Add_Test (Case_2_1_Test_Constructor_2acfb3'Access);
      Result.Add_Test (Case_1i_1_Test_Constructor_2acfb3'Access);

      return Result'Access;

   end Suite;

end NMEA.Messages.PGRME.PGRME_Message_Test_Data.PGRME_Message_Tests.Suite;
--  end read only
