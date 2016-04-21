separate (NMEA.Messages.AAM)
overriding
function Image (This : AAM_Message) return String is
      pragma Unreferenced (This);
begin
   return "Image ""AAM"" not implemented";
end;
