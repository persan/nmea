separate (NMEA.Messages.HSC)
overriding
function Image (This : HSC_Message) return String is
      pragma Unreferenced (This);
begin
   return "Image ""HSC"" not implemented";
end;
