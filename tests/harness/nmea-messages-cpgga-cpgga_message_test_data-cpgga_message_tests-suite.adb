--  This package has been generated automatically by GNATtest.
--  Do not edit any part of it, see GNATtest documentation for more details.

--  begin read only
with AUnit.Test_Caller;
with Gnattest_Generated;

package body NMEA.Messages.CPGGA.CPGGA_Message_Test_Data.CPGGA_Message_Tests.Suite is

   package Runner_1 is new AUnit.Test_Caller
     (GNATtest_Generated.GNATtest_Standard.NMEA.Messages.CPGGA.CPGGA_Message_Test_Data.CPGGA_Message_Tests.Test_CPGGA_Message);

   Result : aliased AUnit.Test_Suites.Test_Suite;

   Case_1_1_Test_Image_125580 : aliased Runner_1.Test_Case;
   Case_2_1_Test_Constructor_479dde : aliased Runner_1.Test_Case;
   Case_1i_1_Test_Constructor_479dde : aliased Runner_1.Test_Case;

   function Suite return AUnit.Test_Suites.Access_Test_Suite is
   begin

      Runner_1.Create
        (Case_1_1_Test_Image_125580,
         "nmea-messages-cpgga.ads:16:4:",
         Test_Image_125580'Access);
      Runner_1.Create
        (Case_2_1_Test_Constructor_479dde,
         "nmea-messages-cpgga.ads:19:4:",
         Test_Constructor_479dde'Access);
      Runner_1.Create
        (Case_1i_1_Test_Constructor_479dde,
         "nmea-messages-cpgga.ads:19:4: inherited at nmea-messages-cpgga.ads:3:4:",
         Test_Constructor_479dde'Access);

      Result.Add_Test (Case_1_1_Test_Image_125580'Access);
      Result.Add_Test (Case_2_1_Test_Constructor_479dde'Access);
      Result.Add_Test (Case_1i_1_Test_Constructor_479dde'Access);

      return Result'Access;

   end Suite;

end NMEA.Messages.CPGGA.CPGGA_Message_Test_Data.CPGGA_Message_Tests.Suite;
--  end read only
