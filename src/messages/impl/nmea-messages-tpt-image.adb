separate (NMEA.Messages.TPT)
overriding
function Image (This : TPT_Message) return String is
      pragma Unreferenced (This);
begin
   return "Image ""TPT"" not implemented";
end;
