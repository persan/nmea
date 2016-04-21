separate (NMEA.Messages.BWR)
overriding
function Image (This : BWR_Message) return String is
      pragma Unreferenced (This);
begin
   return "Image ""BWR"" not implemented";
end;
