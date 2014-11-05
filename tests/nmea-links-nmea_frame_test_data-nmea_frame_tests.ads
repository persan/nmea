--  This package has been generated automatically by GNATtest.
--  Do not edit any part of it, see GNATtest documentation for more details.

--  begin read only
with GNATtest_Generated;

package NMEA.Links.Nmea_Frame_Test_Data.Nmea_Frame_Tests is

   type Test_Nmea_Frame is new
     GNATtest_Generated.GNATtest_Standard.NMEA.Links.Nmea_Frame_Test_Data.Test_Nmea_Frame with null record;

   procedure Test_Read_3ebf75 (Gnattest_T : in out Test_Nmea_Frame);
   --  nmea-links.ads:9:4:Read

   procedure Test_Write_99892c (Gnattest_T : in out Test_Nmea_Frame);
   --  nmea-links.ads:13:4:Write

   procedure Test_Stream_0b87c4 (Gnattest_T : in out Test_Nmea_Frame);
   --  nmea-links.ads:23:4:Stream

   procedure Test_Image_1b1951 (Gnattest_T : in out Test_Nmea_Frame);
   --  nmea-links.ads:27:4:Image

   procedure Test_Dump_5dabde (Gnattest_T : in out Test_Nmea_Frame);
   --  nmea-links.ads:30:4:Dump

   procedure Test_Check_Checksum_8078a2 (Gnattest_T : in out Test_Nmea_Frame);
   --  nmea-links.ads:35:4:Check_Checksum

   procedure Test_Check_Checksum_8862e3 (Gnattest_T : in out Test_Nmea_Frame);
   --  nmea-links.ads:36:4:Check_Checksum

   procedure Test_Generate_Checksum_bc2181 (Gnattest_T : in out Test_Nmea_Frame);
   --  nmea-links.ads:37:4:Generate_Checksum

end NMEA.Links.Nmea_Frame_Test_Data.Nmea_Frame_Tests;
--  end read only
