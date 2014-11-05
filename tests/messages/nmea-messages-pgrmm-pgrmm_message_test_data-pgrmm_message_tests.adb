--  This package has been generated automatically by GNATtest.
--  You are allowed to add your code to the bodies of test routines.
--  Such changes will be kept during further regeneration of this file.
--  All code placed outside of test routine bodies will be lost. The
--  code intended to set up and tear down the test environment should be
--  placed into NMEA.Messages.PGRMM.PGRMM_Message_Test_Data.

with AUnit.Assertions; use AUnit.Assertions;

package body NMEA.Messages.PGRMM.PGRMM_Message_Test_Data.PGRMM_Message_Tests is


--  begin read only
   procedure Test_Image (Gnattest_T : in out Test_PGRMM_Message);
   procedure Test_Image_438dff (Gnattest_T : in out Test_PGRMM_Message) renames Test_Image;
--  id:2.1/438dffc2866610c4/Image/1/0/
   procedure Test_Image (Gnattest_T : in out Test_PGRMM_Message) is
   --  nmea-messages-pgrmm.ads:7:4:Image
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
   procedure Test_Constructor (Gnattest_T : in out Test_PGRMM_Message);
   procedure Test_Constructor_6de81c (Gnattest_T : in out Test_PGRMM_Message) renames Test_Constructor;
--  id:2.1/6de81c47adfcd82a/Constructor/1/0/
   procedure Test_Constructor (Gnattest_T : in out Test_PGRMM_Message) is
   --  nmea-messages-pgrmm.ads:10:4:Constructor
--  end read only

      pragma Unreferenced (Gnattest_T);

   begin

      AUnit.Assertions.Assert
        (Gnattest_Generated.Default_Assert_Value,
         "Test not implemented.");

--  begin read only
   end Test_Constructor;
--  end read only

end NMEA.Messages.PGRMM.PGRMM_Message_Test_Data.PGRMM_Message_Tests;
