--  This package has been generated automatically by GNATtest.
--  You are allowed to add your code to the bodies of test routines.
--  Such changes will be kept during further regeneration of this file.
--  All code placed outside of test routine bodies will be lost. The
--  code intended to set up and tear down the test environment should be
--  placed into NMEA.Messages.GPCGA.GPCGA_Message_Test_Data.

with AUnit.Assertions; use AUnit.Assertions;

package body NMEA.Messages.GPCGA.GPCGA_Message_Test_Data.GPCGA_Message_Tests is


--  begin read only
   procedure Test_Image (Gnattest_T : in out Test_GPCGA_Message);
   procedure Test_Image_80ddc1 (Gnattest_T : in out Test_GPCGA_Message) renames Test_Image;
--  id:2.1/80ddc1c7599eb1a1/Image/1/0/
   procedure Test_Image (Gnattest_T : in out Test_GPCGA_Message) is
   --  nmea-messages-gpcga.ads:16:4:Image
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
   procedure Test_Constructor (Gnattest_T : in out Test_GPCGA_Message);
   procedure Test_Constructor_a5064d (Gnattest_T : in out Test_GPCGA_Message) renames Test_Constructor;
--  id:2.1/a5064da871ac3c48/Constructor/1/0/
   procedure Test_Constructor (Gnattest_T : in out Test_GPCGA_Message) is
   --  nmea-messages-gpcga.ads:19:4:Constructor
--  end read only

      pragma Unreferenced (Gnattest_T);

   begin

      AUnit.Assertions.Assert
        (Gnattest_Generated.Default_Assert_Value,
         "Test not implemented.");

--  begin read only
   end Test_Constructor;
--  end read only

end NMEA.Messages.GPCGA.GPCGA_Message_Test_Data.GPCGA_Message_Tests;
