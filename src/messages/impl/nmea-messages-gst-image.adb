separate (NMEA.Messages.GST)
overriding
function Image (This : GST_Message) return String is
      pragma Unreferenced (This);
begin
   return "Image ""GST"" not implemented";
end;
