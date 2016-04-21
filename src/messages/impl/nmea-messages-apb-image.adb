separate (NMEA.Messages.APB)
overriding
function Image (This : APB_Message) return String is
      pragma Unreferenced (This);
begin
   return "Image ""APB"" not implemented";
end;
