--  This package has been generated automatically by GNATtest.
--  You are allowed to add your code to the bodies of test routines.
--  Such changes will be kept during further regeneration of this file.
--  All code placed outside of test routine bodies will be lost. The
--  code intended to set up and tear down the test environment should be
--  placed into NMEA.Links.Test_Data.

with AUnit.Assertions; use AUnit.Assertions;

package body NMEA.Links.Test_Data.Tests is


--  begin read only
   procedure Test_1_Image (Gnattest_T : in out Test);
   procedure Test_Image_52d17c (Gnattest_T : in out Test) renames Test_1_Image;
--  id:2.1/52d17ce9464d6b24/Image/1/0/
   procedure Test_1_Image (Gnattest_T : in out Test) is
   --  nmea-links.ads:62:4:Image
--  end read only

      pragma Unreferenced (Gnattest_T);

   begin

      AUnit.Assertions.Assert
        (Gnattest_Generated.Default_Assert_Value,
         "Test not implemented.");

--  begin read only
   end Test_1_Image;
--  end read only


--  begin read only
   procedure Test_2_Image (Gnattest_T : in out Test);
   procedure Test_Image_8ee860 (Gnattest_T : in out Test) renames Test_2_Image;
--  id:2.1/8ee8609e9d6f59b4/Image/0/0/
   procedure Test_2_Image (Gnattest_T : in out Test) is
   --  nmea-links.ads:63:4:Image
--  end read only

      pragma Unreferenced (Gnattest_T);

   begin

      AUnit.Assertions.Assert
        (Gnattest_Generated.Default_Assert_Value,
         "Test not implemented.");

--  begin read only
   end Test_2_Image;
--  end read only

end NMEA.Links.Test_Data.Tests;
