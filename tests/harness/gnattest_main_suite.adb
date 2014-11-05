--  This package has been generated automatically by GNATtest.
--  Do not edit any part of it, see GNATtest documentation for more details.

--  begin read only
with NMEA.Messages.CPGGA.CPGGA_Message_Test_Data.CPGGA_Message_Tests.Suite;
with NMEA.Messages.Count_Test_Data.Count_Tests.Suite;
with NMEA.Messages.DGPS_Station_ID_Test_Data.DGPS_Station_ID_Tests.Suite;
with NMEA.Messages.Dilution_Test_Data.Dilution_Tests.Suite;
with NMEA.Messages.Fix_Quality_Type_Test_Data.Fix_Quality_Type_Tests.Suite;
with NMEA.Messages.Heading_Type_Test_Data.Heading_Type_Tests.Suite;
with NMEA.Messages.Knots_Type_Test_Data.Knots_Type_Tests.Suite;
with NMEA.Messages.Latitude_Type_Test_Data.Latitude_Type_Tests.Suite;
with NMEA.Messages.Longitude_Type_Test_Data.Longitude_Type_Tests.Suite;
with NMEA.Messages.Magnetic_Variation_Type_Test_Data.Magnetic_Variation_Type_Tests.Suite;
with NMEA.Messages.Meters_Test_Data.Meters_Tests.Suite;
with NMEA.Messages.NMEA_Field_Test_Data.NMEA_Field_Tests.Suite;
with NMEA.Messages.NMEA_Integer_Test_Data.NMEA_Integer_Tests.Suite;
with NMEA.Messages.NMEA_Left_Right_Test_Data.NMEA_Left_Right_Tests.Suite;
with NMEA.Messages.NMEA_Long_Float_Test_Data.NMEA_Long_Float_Tests.Suite;
with NMEA.Messages.NMEA_Seconds_Test_Data.NMEA_Seconds_Tests.Suite;
with NMEA.Messages.NMEA_Status_Test_Data.NMEA_Status_Tests.Suite;
with NMEA.Messages.NMEA_String_Test_Data.NMEA_String_Tests.Suite;
with NMEA.Messages.Nautical_Mile_Type_Test_Data.Nautical_Mile_Type_Tests.Suite;
with NMEA.Messages.Nmea_Hight_Test_Data.Nmea_Hight_Tests.Suite;
with NMEA.Messages.Test_Data.Tests.Suite;
with NMEA.Messages.UTC_Date_Type_Test_Data.UTC_Date_Type_Tests.Suite;
with NMEA.Messages.UTC_Time_Type_Test_Data.UTC_Time_Type_Tests.Suite;
with NMEA.Messages.Waypoint_ID_Test_Data.Waypoint_ID_Tests.Suite;
with NMEA.Messages.GPBOD.GPBOD_Message_Test_Data.GPBOD_Message_Tests.Suite;
with NMEA.Messages.GPCGA.GPCGA_Message_Test_Data.GPCGA_Message_Tests.Suite;
with NMEA.Messages.GPGGA.GPGGA_Message_Test_Data.GPGGA_Message_Tests.Suite;
with NMEA.Messages.GPGLL.GPGLL_Message_Test_Data.GPGLL_Message_Tests.Suite;
with NMEA.Messages.GPGSA.GPGSA_Message_Test_Data.GPGSA_Message_Tests.Suite;
with NMEA.Messages.GPGSV.GPGSV_Message_Test_Data.GPGSV_Message_Tests.Suite;
with NMEA.Messages.GPRMB.GPRMB_Message_Test_Data.GPRMB_Message_Tests.Suite;
with NMEA.Messages.GPRMC.GPRMC_Message_Test_Data.GPRMC_Message_Tests.Suite;
with NMEA.Messages.GPRTE.GPRTE_Message_Test_Data.GPRTE_Message_Tests.Suite;
with NMEA.Messages.HCHDG.HCHDG_Message_Test_Data.HCHDG_Message_Tests.Suite;
with NMEA.Messages.PGRME.PGRME_Message_Test_Data.PGRME_Message_Tests.Suite;
with NMEA.Messages.PGRMM.PGRMM_Message_Test_Data.PGRMM_Message_Tests.Suite;
with NMEA.Messages.PGRMZ.PGRMZ_Message_Test_Data.PGRMZ_Message_Tests.Suite;
with NMEA.Links.Nmea_Frame_Test_Data.Nmea_Frame_Tests.Suite;
with NMEA.Links.Nmea_Stream_Test_Data.Nmea_Stream_Tests.Suite;
with NMEA.Links.Test_Data.Tests.Suite;

package body Gnattest_Main_Suite is

   Result : aliased AUnit.Test_Suites.Test_Suite;

   function Suite return AUnit.Test_Suites.Access_Test_Suite is
   begin

      Result.Add_Test (NMEA.Messages.CPGGA.CPGGA_Message_Test_Data.CPGGA_Message_Tests.Suite.Suite);
      Result.Add_Test (NMEA.Messages.Count_Test_Data.Count_Tests.Suite.Suite);
      Result.Add_Test (NMEA.Messages.DGPS_Station_ID_Test_Data.DGPS_Station_ID_Tests.Suite.Suite);
      Result.Add_Test (NMEA.Messages.Dilution_Test_Data.Dilution_Tests.Suite.Suite);
      Result.Add_Test (NMEA.Messages.Fix_Quality_Type_Test_Data.Fix_Quality_Type_Tests.Suite.Suite);
      Result.Add_Test (NMEA.Messages.Heading_Type_Test_Data.Heading_Type_Tests.Suite.Suite);
      Result.Add_Test (NMEA.Messages.Knots_Type_Test_Data.Knots_Type_Tests.Suite.Suite);
      Result.Add_Test (NMEA.Messages.Latitude_Type_Test_Data.Latitude_Type_Tests.Suite.Suite);
      Result.Add_Test (NMEA.Messages.Longitude_Type_Test_Data.Longitude_Type_Tests.Suite.Suite);
      Result.Add_Test (NMEA.Messages.Magnetic_Variation_Type_Test_Data.Magnetic_Variation_Type_Tests.Suite.Suite);
      Result.Add_Test (NMEA.Messages.Meters_Test_Data.Meters_Tests.Suite.Suite);
      Result.Add_Test (NMEA.Messages.NMEA_Field_Test_Data.NMEA_Field_Tests.Suite.Suite);
      Result.Add_Test (NMEA.Messages.NMEA_Integer_Test_Data.NMEA_Integer_Tests.Suite.Suite);
      Result.Add_Test (NMEA.Messages.NMEA_Left_Right_Test_Data.NMEA_Left_Right_Tests.Suite.Suite);
      Result.Add_Test (NMEA.Messages.NMEA_Long_Float_Test_Data.NMEA_Long_Float_Tests.Suite.Suite);
      Result.Add_Test (NMEA.Messages.NMEA_Seconds_Test_Data.NMEA_Seconds_Tests.Suite.Suite);
      Result.Add_Test (NMEA.Messages.NMEA_Status_Test_Data.NMEA_Status_Tests.Suite.Suite);
      Result.Add_Test (NMEA.Messages.NMEA_String_Test_Data.NMEA_String_Tests.Suite.Suite);
      Result.Add_Test (NMEA.Messages.Nautical_Mile_Type_Test_Data.Nautical_Mile_Type_Tests.Suite.Suite);
      Result.Add_Test (NMEA.Messages.Nmea_Hight_Test_Data.Nmea_Hight_Tests.Suite.Suite);
      Result.Add_Test (NMEA.Messages.Test_Data.Tests.Suite.Suite);
      Result.Add_Test (NMEA.Messages.UTC_Date_Type_Test_Data.UTC_Date_Type_Tests.Suite.Suite);
      Result.Add_Test (NMEA.Messages.UTC_Time_Type_Test_Data.UTC_Time_Type_Tests.Suite.Suite);
      Result.Add_Test (NMEA.Messages.Waypoint_ID_Test_Data.Waypoint_ID_Tests.Suite.Suite);
      Result.Add_Test (NMEA.Messages.GPBOD.GPBOD_Message_Test_Data.GPBOD_Message_Tests.Suite.Suite);
      Result.Add_Test (NMEA.Messages.GPCGA.GPCGA_Message_Test_Data.GPCGA_Message_Tests.Suite.Suite);
      Result.Add_Test (NMEA.Messages.GPGGA.GPGGA_Message_Test_Data.GPGGA_Message_Tests.Suite.Suite);
      Result.Add_Test (NMEA.Messages.GPGLL.GPGLL_Message_Test_Data.GPGLL_Message_Tests.Suite.Suite);
      Result.Add_Test (NMEA.Messages.GPGSA.GPGSA_Message_Test_Data.GPGSA_Message_Tests.Suite.Suite);
      Result.Add_Test (NMEA.Messages.GPGSV.GPGSV_Message_Test_Data.GPGSV_Message_Tests.Suite.Suite);
      Result.Add_Test (NMEA.Messages.GPRMB.GPRMB_Message_Test_Data.GPRMB_Message_Tests.Suite.Suite);
      Result.Add_Test (NMEA.Messages.GPRMC.GPRMC_Message_Test_Data.GPRMC_Message_Tests.Suite.Suite);
      Result.Add_Test (NMEA.Messages.GPRTE.GPRTE_Message_Test_Data.GPRTE_Message_Tests.Suite.Suite);
      Result.Add_Test (NMEA.Messages.HCHDG.HCHDG_Message_Test_Data.HCHDG_Message_Tests.Suite.Suite);
      Result.Add_Test (NMEA.Messages.PGRME.PGRME_Message_Test_Data.PGRME_Message_Tests.Suite.Suite);
      Result.Add_Test (NMEA.Messages.PGRMM.PGRMM_Message_Test_Data.PGRMM_Message_Tests.Suite.Suite);
      Result.Add_Test (NMEA.Messages.PGRMZ.PGRMZ_Message_Test_Data.PGRMZ_Message_Tests.Suite.Suite);
      Result.Add_Test (NMEA.Links.Nmea_Frame_Test_Data.Nmea_Frame_Tests.Suite.Suite);
      Result.Add_Test (NMEA.Links.Nmea_Stream_Test_Data.Nmea_Stream_Tests.Suite.Suite);
      Result.Add_Test (NMEA.Links.Test_Data.Tests.Suite.Suite);

      return Result'Access;

   end Suite;

end Gnattest_Main_Suite;
--  end read only
