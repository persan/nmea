separate (NMEA.Messages.RMM)
overriding
function Image (This : RMM_Message) return String is
      pragma Unreferenced (This);
begin
   return "Image ""RMM"" not implemented";
end;
