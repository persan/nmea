--  This package has been generated automatically by GNATtest.
--  You are allowed to add your code to the bodies of test routines.
--  Such changes will be kept during further regeneration of this file.
--  All code placed outside of test routine bodies will be lost. The
--  code intended to set up and tear down the test environment should be
--  placed into NMEA.Messages.NMEA_Long_Float_Test_Data.

with AUnit.Assertions; use AUnit.Assertions;

package body NMEA.Messages.NMEA_Long_Float_Test_Data.NMEA_Long_Float_Tests is


--  begin read only
   procedure Test_1_Read (Gnattest_T : in out Test_NMEA_Long_Float);
   procedure Test_Read_7e055c (Gnattest_T : in out Test_NMEA_Long_Float) renames Test_1_Read;
--  id:2.1/7e055c16dc4b97ff/Read/1/0/
   procedure Test_1_Read (Gnattest_T : in out Test_NMEA_Long_Float) is
   --  nmea-messages.ads:70:4:Read
--  end read only

      pragma Unreferenced (Gnattest_T);

   begin

      AUnit.Assertions.Assert
        (Gnattest_Generated.Default_Assert_Value,
         "Test not implemented.");

--  begin read only
   end Test_1_Read;
--  end read only


--  begin read only
   procedure Test_1_Write (Gnattest_T : in out Test_NMEA_Long_Float);
   procedure Test_Write_6fb053 (Gnattest_T : in out Test_NMEA_Long_Float) renames Test_1_Write;
--  id:2.1/6fb0538ba91015a7/Write/1/0/
   procedure Test_1_Write (Gnattest_T : in out Test_NMEA_Long_Float) is
   --  nmea-messages.ads:74:4:Write
--  end read only

      pragma Unreferenced (Gnattest_T);

   begin

      AUnit.Assertions.Assert
        (Gnattest_Generated.Default_Assert_Value,
         "Test not implemented.");

--  begin read only
   end Test_1_Write;
--  end read only


--  begin read only
   procedure Test_1_Image (Gnattest_T : in out Test_NMEA_Long_Float);
   procedure Test_Image_708c3f (Gnattest_T : in out Test_NMEA_Long_Float) renames Test_1_Image;
--  id:2.1/708c3fd412872693/Image/1/0/
   procedure Test_1_Image (Gnattest_T : in out Test_NMEA_Long_Float) is
   --  nmea-messages.ads:78:4:Image
--  end read only

      pragma Unreferenced (Gnattest_T);

   begin

      AUnit.Assertions.Assert
        (Gnattest_Generated.Default_Assert_Value,
         "Test not implemented.");

--  begin read only
   end Test_1_Image;
--  end read only

end NMEA.Messages.NMEA_Long_Float_Test_Data.NMEA_Long_Float_Tests;
