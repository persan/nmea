--  This package has been generated automatically by GNATtest.
--  You are allowed to add your code to the bodies of test routines.
--  Such changes will be kept during further regeneration of this file.
--  All code placed outside of test routine bodies will be lost. The
--  code intended to set up and tear down the test environment should be
--  placed into NMEA.Messages.PGRME.PGRME_Message_Test_Data.

with AUnit.Assertions; use AUnit.Assertions;

package body NMEA.Messages.PGRME.PGRME_Message_Test_Data.PGRME_Message_Tests is


--  begin read only
   procedure Test_Image (Gnattest_T : in out Test_PGRME_Message);
   procedure Test_Image_af6f9a (Gnattest_T : in out Test_PGRME_Message) renames Test_Image;
--  id:2.1/af6f9a8617b4caf2/Image/1/0/
   procedure Test_Image (Gnattest_T : in out Test_PGRME_Message) is
   --  nmea-messages-pgrme.ads:7:4:Image
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
   procedure Test_Constructor (Gnattest_T : in out Test_PGRME_Message);
   procedure Test_Constructor_2acfb3 (Gnattest_T : in out Test_PGRME_Message) renames Test_Constructor;
--  id:2.1/2acfb39ff75291fa/Constructor/1/0/
   procedure Test_Constructor (Gnattest_T : in out Test_PGRME_Message) is
   --  nmea-messages-pgrme.ads:10:4:Constructor
--  end read only

      pragma Unreferenced (Gnattest_T);

   begin

      AUnit.Assertions.Assert
        (Gnattest_Generated.Default_Assert_Value,
         "Test not implemented.");

--  begin read only
   end Test_Constructor;
--  end read only

end NMEA.Messages.PGRME.PGRME_Message_Test_Data.PGRME_Message_Tests;
