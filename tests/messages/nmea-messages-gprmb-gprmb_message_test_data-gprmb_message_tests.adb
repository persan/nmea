--  This package has been generated automatically by GNATtest.
--  You are allowed to add your code to the bodies of test routines.
--  Such changes will be kept during further regeneration of this file.
--  All code placed outside of test routine bodies will be lost. The
--  code intended to set up and tear down the test environment should be
--  placed into NMEA.Messages.GPRMB.GPRMB_Message_Test_Data.

with AUnit.Assertions; use AUnit.Assertions;

package body NMEA.Messages.GPRMB.GPRMB_Message_Test_Data.GPRMB_Message_Tests is


--  begin read only
   procedure Test_Image (Gnattest_T : in out Test_GPRMB_Message);
   procedure Test_Image_3c227f (Gnattest_T : in out Test_GPRMB_Message) renames Test_Image;
--  id:2.1/3c227f70d1a473ca/Image/1/0/
   procedure Test_Image (Gnattest_T : in out Test_GPRMB_Message) is
   --  nmea-messages-gprmb.ads:17:4:Image
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
   procedure Test_Constructor (Gnattest_T : in out Test_GPRMB_Message);
   procedure Test_Constructor_96b9e9 (Gnattest_T : in out Test_GPRMB_Message) renames Test_Constructor;
--  id:2.1/96b9e90d2020989c/Constructor/1/0/
   procedure Test_Constructor (Gnattest_T : in out Test_GPRMB_Message) is
   --  nmea-messages-gprmb.ads:20:4:Constructor
--  end read only

      pragma Unreferenced (Gnattest_T);

   begin

      AUnit.Assertions.Assert
        (Gnattest_Generated.Default_Assert_Value,
         "Test not implemented.");

--  begin read only
   end Test_Constructor;
--  end read only

end NMEA.Messages.GPRMB.GPRMB_Message_Test_Data.GPRMB_Message_Tests;
