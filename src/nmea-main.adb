with Ada.Text_IO.Text_Streams;
with NMEA.Links;
with NMEA.Messages;
with NMEA.Messages.GPCGA; pragma Unreferenced (NMEA.Messages.GPCGA);
with NMEA.Messages.GPRMC; pragma Unreferenced (NMEA.Messages.GPRMC);
with NMEA.Messages.GPRMB; pragma Unreferenced (NMEA.Messages.GPRMB);
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
         declare
            Msg : NMEA.Messages.Message'Class := NMEA.Messages.Message'Class'Input (Buffer.Stream);
         begin
            Put_Line (Buffer.Image);
            Put ("              ");
            NMEA.Messages.Message'Class'Output (Ada.Text_IO.Text_Streams.Stream (Ada.Text_IO.Standard_Output), Msg);
            Put_Line (Out_File, Msg.Image);
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
