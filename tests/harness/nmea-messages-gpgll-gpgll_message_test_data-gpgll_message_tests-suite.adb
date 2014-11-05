--  This package has been generated automatically by GNATtest.
--  Do not edit any part of it, see GNATtest documentation for more details.

--  begin read only
with AUnit.Test_Caller;
with Gnattest_Generated;

package body NMEA.Messages.GPGLL.GPGLL_Message_Test_Data.GPGLL_Message_Tests.Suite is

   package Runner_1 is new AUnit.Test_Caller
     (GNATtest_Generated.GNATtest_Standard.NMEA.Messages.GPGLL.GPGLL_Message_Test_Data.GPGLL_Message_Tests.Test_GPGLL_Message);

   Result : aliased AUnit.Test_Suites.Test_Suite;

   Case_1_1_Test_Image_370a86 : aliased Runner_1.Test_Case;
   Case_2_1_Test_Constructor_177c70 : aliased Runner_1.Test_Case;
   Case_1i_1_Test_Constructor_177c70 : aliased Runner_1.Test_Case;

   function Suite return AUnit.Test_Suites.Access_Test_Suite is
   begin

      Runner_1.Create
        (Case_1_1_Test_Image_370a86,
         "nmea-messages-gpgll.ads:7:4:",
         Test_Image_370a86'Access);
      Runner_1.Create
        (Case_2_1_Test_Constructor_177c70,
         "nmea-messages-gpgll.ads:10:4:",
         Test_Constructor_177c70'Access);
      Runner_1.Create
        (Case_1i_1_Test_Constructor_177c70,
         "nmea-messages-gpgll.ads:10:4: inherited at nmea-messages-gpgll.ads:3:4:",
         Test_Constructor_177c70'Access);

      Result.Add_Test (Case_1_1_Test_Image_370a86'Access);
      Result.Add_Test (Case_2_1_Test_Constructor_177c70'Access);
      Result.Add_Test (Case_1i_1_Test_Constructor_177c70'Access);

      return Result'Access;

   end Suite;

end NMEA.Messages.GPGLL.GPGLL_Message_Test_Data.GPGLL_Message_Tests.Suite;
--  end read only
