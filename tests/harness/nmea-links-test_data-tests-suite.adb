--  This package has been generated automatically by GNATtest.
--  Do not edit any part of it, see GNATtest documentation for more details.

--  begin read only
with AUnit.Test_Caller;
with Gnattest_Generated;

package body NMEA.Links.Test_Data.Tests.Suite is

   package Runner_1 is new AUnit.Test_Caller
     (GNATtest_Generated.GNATtest_Standard.NMEA.Links.Test_Data.Tests.Test);

   Result : aliased AUnit.Test_Suites.Test_Suite;

   Case_1_1_Test_Image_52d17c : aliased Runner_1.Test_Case;
   Case_2_1_Test_Image_8ee860 : aliased Runner_1.Test_Case;

   function Suite return AUnit.Test_Suites.Access_Test_Suite is
   begin

      Runner_1.Create
        (Case_1_1_Test_Image_52d17c,
         "nmea-links.ads:62:4:",
         Test_Image_52d17c'Access);
      Runner_1.Create
        (Case_2_1_Test_Image_8ee860,
         "nmea-links.ads:63:4:",
         Test_Image_8ee860'Access);

      Result.Add_Test (Case_1_1_Test_Image_52d17c'Access);
      Result.Add_Test (Case_2_1_Test_Image_8ee860'Access);

      return Result'Access;

   end Suite;

end NMEA.Links.Test_Data.Tests.Suite;
--  end read only
