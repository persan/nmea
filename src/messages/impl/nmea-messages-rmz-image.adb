separate (NMEA.Messages.RMZ)
overriding
function Image (This : RMZ_Message) return String is
      pragma Unreferenced (This);
begin
   return "Image ""RMZ"" not implemented";
end;
