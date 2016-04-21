separate (NMEA.Messages.TPR)
overriding
function Image (This : TPR_Message) return String is
      pragma Unreferenced (This);
begin
   return "Image ""TPR"" not implemented";
end;
