--  This package has been generated automatically by GNATtest.
--  You are allowed to add your code to the bodies of test routines.
--  Such changes will be kept during further regeneration of this file.
--  All code placed outside of test routine bodies will be lost. The
--  code intended to set up and tear down the test environment should be
--  placed into NMEA.Messages.GPBOD.GPBOD_Message_Test_Data.

with AUnit.Assertions; use AUnit.Assertions;

package body NMEA.Messages.GPBOD.GPBOD_Message_Test_Data.GPBOD_Message_Tests is


--  begin read only
   procedure Test_Image (Gnattest_T : in out Test_GPBOD_Message);
   procedure Test_Image_9250de (Gnattest_T : in out Test_GPBOD_Message) renames Test_Image;
--  id:2.1/9250de16e4c8e1e6/Image/1/0/
   procedure Test_Image (Gnattest_T : in out Test_GPBOD_Message) is
   --  nmea-messages-gpbod.ads:7:4:Image
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
   procedure Test_Constructor (Gnattest_T : in out Test_GPBOD_Message);
   procedure Test_Constructor_aa3bd3 (Gnattest_T : in out Test_GPBOD_Message) renames Test_Constructor;
--  id:2.1/aa3bd35b3829add1/Constructor/1/0/
   procedure Test_Constructor (Gnattest_T : in out Test_GPBOD_Message) is
   --  nmea-messages-gpbod.ads:10:4:Constructor
--  end read only

      pragma Unreferenced (Gnattest_T);

   begin

      AUnit.Assertions.Assert
        (Gnattest_Generated.Default_Assert_Value,
         "Test not implemented.");

--  begin read only
   end Test_Constructor;
--  end read only

end NMEA.Messages.GPBOD.GPBOD_Message_Test_Data.GPBOD_Message_Tests;
