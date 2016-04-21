separate (NMEA.Messages.WPL)
overriding
function Image (This : WPL_Message) return String is
      pragma Unreferenced (This);
begin
   return "Image ""WPL"" not implemented";
end;
