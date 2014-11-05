--  This package has been generated automatically by GNATtest.
--  You are allowed to add your code to the bodies of test routines.
--  Such changes will be kept during further regeneration of this file.
--  All code placed outside of test routine bodies will be lost. The
--  code intended to set up and tear down the test environment should be
--  placed into NMEA.Messages.GPRTE.GPRTE_Message_Test_Data.

with AUnit.Assertions; use AUnit.Assertions;

package body NMEA.Messages.GPRTE.GPRTE_Message_Test_Data.GPRTE_Message_Tests is


--  begin read only
   procedure Test_Image (Gnattest_T : in out Test_GPRTE_Message);
   procedure Test_Image_ec000c (Gnattest_T : in out Test_GPRTE_Message) renames Test_Image;
--  id:2.1/ec000cb91d8e7e11/Image/1/0/
   procedure Test_Image (Gnattest_T : in out Test_GPRTE_Message) is
   --  nmea-messages-gprte.ads:7:4:Image
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
   procedure Test_Constructor (Gnattest_T : in out Test_GPRTE_Message);
   procedure Test_Constructor_4960fa (Gnattest_T : in out Test_GPRTE_Message) renames Test_Constructor;
--  id:2.1/4960fa18cceac183/Constructor/1/0/
   procedure Test_Constructor (Gnattest_T : in out Test_GPRTE_Message) is
   --  nmea-messages-gprte.ads:10:4:Constructor
--  end read only

      pragma Unreferenced (Gnattest_T);

   begin

      AUnit.Assertions.Assert
        (Gnattest_Generated.Default_Assert_Value,
         "Test not implemented.");

--  begin read only
   end Test_Constructor;
--  end read only

end NMEA.Messages.GPRTE.GPRTE_Message_Test_Data.GPRTE_Message_Tests;
