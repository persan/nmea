--  This package has been generated automatically by GNATtest.
--  You are allowed to add your code to the bodies of test routines.
--  Such changes will be kept during further regeneration of this file.
--  All code placed outside of test routine bodies will be lost. The
--  code intended to set up and tear down the test environment should be
--  placed into NMEA.Messages.UTC_Date_Type_Test_Data.

with AUnit.Assertions; use AUnit.Assertions;

package body NMEA.Messages.UTC_Date_Type_Test_Data.UTC_Date_Type_Tests is


--  begin read only
   procedure Test_1_Read (Gnattest_T : in out Test_UTC_Date_Type);
   procedure Test_Read_7e055c (Gnattest_T : in out Test_UTC_Date_Type) renames Test_1_Read;
--  id:2.1/7e055c16dc4b97ff/Read/1/0/
   procedure Test_1_Read (Gnattest_T : in out Test_UTC_Date_Type) is
   --  nmea-messages.ads:205:4:Read
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
   procedure Test_1_Write (Gnattest_T : in out Test_UTC_Date_Type);
   procedure Test_Write_6fb053 (Gnattest_T : in out Test_UTC_Date_Type) renames Test_1_Write;
--  id:2.1/6fb0538ba91015a7/Write/1/0/
   procedure Test_1_Write (Gnattest_T : in out Test_UTC_Date_Type) is
   --  nmea-messages.ads:209:4:Write
--  end read only

      pragma Unreferenced (Gnattest_T);

   begin

      AUnit.Assertions.Assert
        (Gnattest_Generated.Default_Assert_Value,
         "Test not implemented.");

--  begin read only
   end Test_1_Write;
--  end read only

end NMEA.Messages.UTC_Date_Type_Test_Data.UTC_Date_Type_Tests;
