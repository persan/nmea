separate (NMEA.Messages.RPM)
overriding
function Image (This : RPM_Message) return String is
      pragma Unreferenced (This);
begin
   return "Image ""RPM"" not implemented";
end;
