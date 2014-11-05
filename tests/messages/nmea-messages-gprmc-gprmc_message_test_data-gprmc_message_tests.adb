--  This package has been generated automatically by GNATtest.
--  You are allowed to add your code to the bodies of test routines.
--  Such changes will be kept during further regeneration of this file.
--  All code placed outside of test routine bodies will be lost. The
--  code intended to set up and tear down the test environment should be
--  placed into NMEA.Messages.GPRMC.GPRMC_Message_Test_Data.

with AUnit.Assertions; use AUnit.Assertions;

package body NMEA.Messages.GPRMC.GPRMC_Message_Test_Data.GPRMC_Message_Tests is


--  begin read only
   procedure Test_Image (Gnattest_T : in out Test_GPRMC_Message);
   procedure Test_Image_e990f5 (Gnattest_T : in out Test_GPRMC_Message) renames Test_Image;
--  id:2.1/e990f5bbd3200eaf/Image/1/0/
   procedure Test_Image (Gnattest_T : in out Test_GPRMC_Message) is
   --  nmea-messages-gprmc.ads:14:4:Image
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
   procedure Test_Constructor (Gnattest_T : in out Test_GPRMC_Message);
   procedure Test_Constructor_afc6f0 (Gnattest_T : in out Test_GPRMC_Message) renames Test_Constructor;
--  id:2.1/afc6f0515ad7a812/Constructor/1/0/
   procedure Test_Constructor (Gnattest_T : in out Test_GPRMC_Message) is
   --  nmea-messages-gprmc.ads:17:4:Constructor
--  end read only

      pragma Unreferenced (Gnattest_T);

   begin

      AUnit.Assertions.Assert
        (Gnattest_Generated.Default_Assert_Value,
         "Test not implemented.");

--  begin read only
   end Test_Constructor;
--  end read only

end NMEA.Messages.GPRMC.GPRMC_Message_Test_Data.GPRMC_Message_Tests;
