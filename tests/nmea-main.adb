with Ada.Text_IO.Text_Streams;
with NMEA.Links;
with NMEA.Messages;

with NMEA.Messages.BOD; pragma Unreferenced (NMEA.Messages.BOD);
with NMEA.Messages.GGA; pragma Unreferenced (NMEA.Messages.GGA); -- @GPS3
with NMEA.Messages.GLL; pragma Unreferenced (NMEA.Messages.GLL); -- @GPS3
with NMEA.Messages.GSA; pragma Unreferenced (NMEA.Messages.GSA);
with NMEA.Messages.GSV; pragma Unreferenced (NMEA.Messages.GSV);
with NMEA.Messages.HDG; pragma Unreferenced (NMEA.Messages.HDG);
with NMEA.Messages.RMB; pragma Unreferenced (NMEA.Messages.RMB);
with NMEA.Messages.RMC; pragma Unreferenced (NMEA.Messages.RMC); -- @GPS3
with NMEA.Messages.RME; pragma Unreferenced (NMEA.Messages.RME);
with NMEA.Messages.RMM; pragma Unreferenced (NMEA.Messages.RMM);
with NMEA.Messages.RMZ; pragma Unreferenced (NMEA.Messages.RMZ);
with NMEA.Messages.RTE; pragma Unreferenced (NMEA.Messages.RTE);
with NMEA.Messages.VDM; pragma Unreferenced (NMEA.Messages.VDM);
with NMEA.Messages.VTG; pragma Unreferenced (NMEA.Messages.VTG); -- @GPS3
with NMEA.Messages.ZDA; pragma Unreferenced (NMEA.Messages.ZDA); -- @GPS3


with Ada.Exceptions;
with GNAT.Traceback.Symbolic;

procedure NMEA.Main is
   procedure Test (Path : String);
   procedure Test (Path : String) is
      use Ada.Text_IO;

      In_File      : Ada.Text_IO.File_Type;
      Buffer       : NMEA.Links.Nmea_Frame;
      Out_File     : Ada.Text_IO.File_Type;

   begin
      Put_Line ("-- Reading : " & Path);
      Open   (In_File, Ada.Text_IO.In_File,   Path);
      Create (Out_File, Ada.Text_IO.Out_File, Path & ".out");

      begin
         while not End_Of_File (In_File) loop
            NMEA.Links.Nmea_Frame'Read (Text_Streams.Stream (In_File), Buffer);
            Put_Line ("------------------------------------------------------------------------------------------------");
            Put_Line (Buffer.Image);
            declare
               Msg : constant NMEA.Messages.Message'Class := NMEA.Messages.Message'Class'Input (Buffer.Stream);
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
   end;
begin
   Test ("data/NMEA.data");
   Test ("data/nmea-sample");
end NMEA.Main;
