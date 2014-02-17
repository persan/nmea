with Ada.Text_IO.Text_Streams;
with NMEA.Links;
with NMEA.Messages;

with NMEA.Messages.CPGGA; pragma Unreferenced (NMEA.Messages.CPGGA);
with NMEA.Messages.GPBOD; pragma Unreferenced (NMEA.Messages.GPBOD);
with NMEA.Messages.GPCGA; pragma Unreferenced (NMEA.Messages.GPCGA);
with NMEA.Messages.GPGGA; pragma Unreferenced (NMEA.Messages.GPGGA);
with NMEA.Messages.GPGLL; pragma Unreferenced (NMEA.Messages.GPGLL);
with NMEA.Messages.GPGSA; pragma Unreferenced (NMEA.Messages.GPGSA);
with NMEA.Messages.GPGSV; pragma Unreferenced (NMEA.Messages.GPGSV);
with NMEA.Messages.GPRMB; pragma Unreferenced (NMEA.Messages.GPRMB);
with NMEA.Messages.GPRMC; pragma Unreferenced (NMEA.Messages.GPRMC);
with NMEA.Messages.GPRTE; pragma Unreferenced (NMEA.Messages.GPRTE);
with NMEA.Messages.HCHDG; pragma Unreferenced (NMEA.Messages.HCHDG);
with NMEA.Messages.PGRME; pragma Unreferenced (NMEA.Messages.PGRME);
with NMEA.Messages.PGRMM; pragma Unreferenced (NMEA.Messages.PGRMM);
with NMEA.Messages.PGRMZ; pragma Unreferenced (NMEA.Messages.PGRMZ);


with Ada.Exceptions;
with GNAT.Traceback.Symbolic;

procedure NMEA.Main is
   use Ada.Text_IO;

   In_File      : Ada.Text_IO.File_Type;
   Buffer       : NMEA.Links.Nmea_Frame;
   Out_File     : Ada.Text_IO.File_Type;

begin
   Open   (In_File, Ada.Text_IO.In_File,   "NMEA.data");
   Create (Out_File, Ada.Text_IO.Out_File, "NMEA.data.out");

   begin
      while not End_Of_File (In_File) loop
         NMEA.Links.Nmea_Frame'Read (Text_Streams.Stream (In_File), Buffer);
         Put_Line ("------------------------------------------------------------------------------------------------");
         Put_Line (Buffer.Image);
         declare
            Msg : NMEA.Messages.Message'Class := NMEA.Messages.Message'Class'Input (Buffer.Stream);
         begin
            Put ("              ");
            NMEA.Messages.Message'Class'Output (Ada.Text_IO.Text_Streams.Stream (Ada.Text_IO.Standard_Output), Msg);
            NMEA.Messages.Message'Class'Output (Ada.Text_IO.Text_Streams.Stream (Out_File), Msg);
         end;
      end loop;
   end;
   Close (In_File);
   Close (Out_File);
exception
   when E : others =>
      Close (In_File);
      Close (Out_File);
      Put_Line (Ada.Exceptions.Exception_Information (E) &
                  GNAT.Traceback.Symbolic.Symbolic_Traceback (E));
end NMEA.Main;
