separate (NMEA.Messages.VPW)
overriding
function Image (This : VPW_Message) return String is
      pragma Unreferenced (This);
begin
   return "Image ""VPW"" not implemented";
end;
