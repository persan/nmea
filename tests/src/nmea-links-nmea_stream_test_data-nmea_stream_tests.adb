--  This package has been generated automatically by GNATtest.
--  You are allowed to add your code to the bodies of test routines.
--  Such changes will be kept during further regeneration of this file.
--  All code placed outside of test routine bodies will be lost. The
--  code intended to set up and tear down the test environment should be
--  placed into NMEA.Links.Nmea_Stream_Test_Data.

with AUnit.Assertions; use AUnit.Assertions;

package body NMEA.Links.Nmea_Stream_Test_Data.Nmea_Stream_Tests is


--  begin read only
   procedure Test_1_Dump (Gnattest_T : in out Test_Nmea_Stream);
   procedure Test_Dump_c87a97 (Gnattest_T : in out Test_Nmea_Stream) renames Test_1_Dump;
--  id:2.1/c87a976bb5daabf8/Dump/1/0/
   procedure Test_1_Dump (Gnattest_T : in out Test_Nmea_Stream) is
   --  nmea-links.ads:29:4:Dump
--  end read only

      pragma Unreferenced (Gnattest_T);

   begin

      AUnit.Assertions.Assert
        (Gnattest_Generated.Default_Assert_Value,
         "Test not implemented.");

--  begin read only
   end Test_1_Dump;
--  end read only


--  begin read only
   procedure Test_1_Read (Gnattest_T : in out Test_Nmea_Stream);
   procedure Test_Read_b2fc29 (Gnattest_T : in out Test_Nmea_Stream) renames Test_1_Read;
--  id:2.1/b2fc290b4ef39b8d/Read/1/0/
   procedure Test_1_Read (Gnattest_T : in out Test_Nmea_Stream) is
   --  nmea-links.ads:46:4:Read
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
   procedure Test_1_Write (Gnattest_T : in out Test_Nmea_Stream);
   procedure Test_Write_f61559 (Gnattest_T : in out Test_Nmea_Stream) renames Test_1_Write;
--  id:2.1/f6155912e5118412/Write/1/0/
   procedure Test_1_Write (Gnattest_T : in out Test_Nmea_Stream) is
   --  nmea-links.ads:51:4:Write
--  end read only

      pragma Unreferenced (Gnattest_T);

   begin

      AUnit.Assertions.Assert
        (Gnattest_Generated.Default_Assert_Value,
         "Test not implemented.");

--  begin read only
   end Test_1_Write;
--  end read only

end NMEA.Links.Nmea_Stream_Test_Data.Nmea_Stream_Tests;
