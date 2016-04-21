separate (NMEA.Messages.HDM)
overriding
function Image (This : HDM_Message) return String is
      pragma Unreferenced (This);
begin
   return "Image ""HDM"" not implemented";
end;
