separate (NMEA.Messages.ZDA)
overriding
function Image (This : ZDA_Message) return String is
      pragma Unreferenced (This);
begin
   return "Image ""ZDA"" not implemented";
end;
