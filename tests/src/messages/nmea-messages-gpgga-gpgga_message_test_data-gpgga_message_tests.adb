--  This package has been generated automatically by GNATtest.
--  You are allowed to add your code to the bodies of test routines.
--  Such changes will be kept during further regeneration of this file.
--  All code placed outside of test routine bodies will be lost. The
--  code intended to set up and tear down the test environment should be
--  placed into NMEA.Messages.GPGGA.GPGGA_Message_Test_Data.

with AUnit.Assertions; use AUnit.Assertions;

package body NMEA.Messages.GPGGA.GPGGA_Message_Test_Data.GPGGA_Message_Tests is


--  begin read only
   procedure Test_Image (Gnattest_T : in out Test_GPGGA_Message);
   procedure Test_Image_1c23d0 (Gnattest_T : in out Test_GPGGA_Message) renames Test_Image;
--  id:2.1/1c23d06a3b4a9c80/Image/1/0/
   procedure Test_Image (Gnattest_T : in out Test_GPGGA_Message) is
   --  nmea-messages-gpgga.ads:7:4:Image
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
   procedure Test_Constructor (Gnattest_T : in out Test_GPGGA_Message);
   procedure Test_Constructor_b9d7b7 (Gnattest_T : in out Test_GPGGA_Message) renames Test_Constructor;
--  id:2.1/b9d7b7a95ce5ff9d/Constructor/1/0/
   procedure Test_Constructor (Gnattest_T : in out Test_GPGGA_Message) is
   --  nmea-messages-gpgga.ads:10:4:Constructor
--  end read only

      pragma Unreferenced (Gnattest_T);

   begin

      AUnit.Assertions.Assert
        (Gnattest_Generated.Default_Assert_Value,
         "Test not implemented.");

--  begin read only
   end Test_Constructor;
--  end read only

end NMEA.Messages.GPGGA.GPGGA_Message_Test_Data.GPGGA_Message_Tests;
