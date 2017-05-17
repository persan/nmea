separate (NMEA.Messages.RME)
overriding
function Image (This : RME_Message) return String is
      pragma Unreferenced (This);
begin
   return "Image ""RME"" not implemented";
end;
