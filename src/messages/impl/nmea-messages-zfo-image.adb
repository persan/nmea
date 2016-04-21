separate (NMEA.Messages.ZFO)
overriding
function Image (This : ZFO_Message) return String is
      pragma Unreferenced (This);
begin
   return "Image ""ZFO"" not implemented";
end;
