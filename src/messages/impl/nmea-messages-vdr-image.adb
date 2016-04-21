separate (NMEA.Messages.VDR)
overriding
function Image (This : VDR_Message) return String is
      pragma Unreferenced (This);
begin
   return "Image ""VDR"" not implemented";
end;
