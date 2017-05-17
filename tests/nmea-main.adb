with Ada.Text_IO.Text_Streams;
with NMEA.Links;
with NMEA.Messages;

with NMEA.Messages.GGA; pragma Unreferenced (NMEA.Messages.GGA);
with NMEA.Messages.BOD; pragma Unreferenced (NMEA.Messages.BOD);
pragma Unreferenced (NMEA.Messages.GGA);
with NMEA.Messages.GLL; pragma Unreferenced (NMEA.Messages.GLL);
with NMEA.Messages.GSA; pragma Unreferenced (NMEA.Messages.GSA);
with NMEA.Messages.GSV; pragma Unreferenced (NMEA.Messages.GSV);
with NMEA.Messages.RMB; pragma Unreferenced (NMEA.Messages.RMB);
with NMEA.Messages.RMC; pragma Unreferenced (NMEA.Messages.RMC);
with NMEA.Messages.RTE; pragma Unreferenced (NMEA.Messages.RTE);
with NMEA.Messages.HDG; pragma Unreferenced (NMEA.Messages.HDG);


with Ada.Exceptions;
with GNAT.Traceback.Symbolic;

procedure NMEA.Main is
   use Ada.Text_IO;

   In_File      : Ada.Text_IO.File_Type;
   Buffer       : NMEA.Links.Nmea_Frame;
   Out_File     : Ada.Text_IO.File_Type;

begin
   Open   (In_File, Ada.Text_IO.In_File,   "data/NMEA.data");
   Create (Out_File, Ada.Text_IO.Out_File, "data/NMEA.data.out");

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
end NMEA.Main;
