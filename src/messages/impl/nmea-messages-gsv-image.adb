separate (NMEA.Messages.GSV)
overriding
function Image (This : GSV_Message) return String is
      pragma Unreferenced (This);
begin
   return "Image ""GSV"" not implemented";
end;
