separate (NMEA.Messages.Vbw)
overriding
function Image (This : Vbw_Message) return String is
      pragma Unreferenced (This);
begin
   return "Image ""Vbw"" not implemented";
end;
