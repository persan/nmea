separate (NMEA.Messages.VLW)
overriding
function Image (This : VLW_Message) return String is
      pragma Unreferenced (This);
begin
   return "Image ""VLW"" not implemented";
end;
