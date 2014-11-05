--  This package has been generated automatically by GNATtest.
--  You are allowed to add your code to the bodies of test routines.
--  Such changes will be kept during further regeneration of this file.
--  All code placed outside of test routine bodies will be lost. The
--  code intended to set up and tear down the test environment should be
--  placed into NMEA.Messages.PGRMZ.PGRMZ_Message_Test_Data.

with AUnit.Assertions; use AUnit.Assertions;

package body NMEA.Messages.PGRMZ.PGRMZ_Message_Test_Data.PGRMZ_Message_Tests is


--  begin read only
   procedure Test_Image (Gnattest_T : in out Test_PGRMZ_Message);
   procedure Test_Image_073f9a (Gnattest_T : in out Test_PGRMZ_Message) renames Test_Image;
--  id:2.1/073f9adb1fda9153/Image/1/0/
   procedure Test_Image (Gnattest_T : in out Test_PGRMZ_Message) is
   --  nmea-messages-pgrmz.ads:7:4:Image
--  end read only

      pragma Unreferenced (Gnattest_T);

   begin

      AUnit.Assertions.Assert
        (Gnattest_Generated.Default_Assert_Value,
         "Test not implemented.");

--  begin read only
   end Test_Image;
--  end read only


--  begin read only
   procedure Test_Constructor (Gnattest_T : in out Test_PGRMZ_Message);
   procedure Test_Constructor_a25357 (Gnattest_T : in out Test_PGRMZ_Message) renames Test_Constructor;
--  id:2.1/a253573989b87d99/Constructor/1/0/
   procedure Test_Constructor (Gnattest_T : in out Test_PGRMZ_Message) is
   --  nmea-messages-pgrmz.ads:10:4:Constructor
--  end read only

      pragma Unreferenced (Gnattest_T);

   begin

      AUnit.Assertions.Assert
        (Gnattest_Generated.Default_Assert_Value,
         "Test not implemented.");

--  begin read only
   end Test_Constructor;
--  end read only

end NMEA.Messages.PGRMZ.PGRMZ_Message_Test_Data.PGRMZ_Message_Tests;
