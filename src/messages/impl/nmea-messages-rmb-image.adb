separate (NMEA.Messages.RMB)
overriding
function Image (This : RMB_Message) return String is
      pragma Unreferenced (This);
begin
   return "Image ""RMB"" not implemented";
end;
