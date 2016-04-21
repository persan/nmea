separate (NMEA.Messages.XTR)
overriding
function Image (This : XTR_Message) return String is
      pragma Unreferenced (This);
begin
   return "Image ""XTR"" not implemented";
end;
