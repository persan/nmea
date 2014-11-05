--  This package has been generated automatically by GNATtest.
--  You are allowed to add your code to the bodies of test routines.
--  Such changes will be kept during further regeneration of this file.
--  All code placed outside of test routine bodies will be lost. The
--  code intended to set up and tear down the test environment should be
--  placed into NMEA.Messages.HCHDG.HCHDG_Message_Test_Data.

with AUnit.Assertions; use AUnit.Assertions;

package body NMEA.Messages.HCHDG.HCHDG_Message_Test_Data.HCHDG_Message_Tests is


--  begin read only
   procedure Test_Image (Gnattest_T : in out Test_HCHDG_Message);
   procedure Test_Image_b09344 (Gnattest_T : in out Test_HCHDG_Message) renames Test_Image;
--  id:2.1/b0934440f828b5eb/Image/1/0/
   procedure Test_Image (Gnattest_T : in out Test_HCHDG_Message) is
   --  nmea-messages-hchdg.ads:7:4:Image
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
   procedure Test_Constructor (Gnattest_T : in out Test_HCHDG_Message);
   procedure Test_Constructor_067ead (Gnattest_T : in out Test_HCHDG_Message) renames Test_Constructor;
--  id:2.1/067ead4bd9633206/Constructor/1/0/
   procedure Test_Constructor (Gnattest_T : in out Test_HCHDG_Message) is
   --  nmea-messages-hchdg.ads:10:4:Constructor
--  end read only

      pragma Unreferenced (Gnattest_T);

   begin

      AUnit.Assertions.Assert
        (Gnattest_Generated.Default_Assert_Value,
         "Test not implemented.");

--  begin read only
   end Test_Constructor;
--  end read only

end NMEA.Messages.HCHDG.HCHDG_Message_Test_Data.HCHDG_Message_Tests;
