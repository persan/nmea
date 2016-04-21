separate (NMEA.Messages.WNC)
overriding
function Image (This : WNC_Message) return String is
      pragma Unreferenced (This);
begin
   return "Image ""WNC"" not implemented";
end;
