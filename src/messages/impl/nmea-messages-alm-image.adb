separate (NMEA.Messages.ALM)
overriding
function Image (This : ALM_Message) return String is
      pragma Unreferenced (This);
begin
   return "Image ""ALM"" not implemented";
end;
