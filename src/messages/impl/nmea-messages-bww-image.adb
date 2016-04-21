separate (NMEA.Messages.BWW)
overriding
function Image (This : BWW_Message) return String is
      pragma Unreferenced (This);
begin
   return "Image ""BWW"" not implemented";
end;
