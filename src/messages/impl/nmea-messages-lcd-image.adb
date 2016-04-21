separate (NMEA.Messages.LCD)
overriding
function Image (This : LCD_Message) return String is
      pragma Unreferenced (This);
begin
   return "Image ""LCD"" not implemented";
end;
