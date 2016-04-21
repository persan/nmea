separate (NMEA.Messages.GSA)
overriding
function Image (This : GSA_Message) return String is
      pragma Unreferenced (This);
begin
   return "Image ""GSA"" not implemented";
end;
