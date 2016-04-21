separate (NMEA.Messages.VBW)
overriding
function Image (This : VBW_Message) return String is
      pragma Unreferenced (This);
begin
   return "Image ""Vbw"" not implemented";
end;
