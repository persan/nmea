separate (NMEA.Messages.TTM)
overriding
function Image (This : TTM_Message) return String is
      pragma Unreferenced (This);
begin
   return "Image ""TTM"" not implemented";
end;
