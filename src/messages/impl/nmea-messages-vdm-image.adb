separate (NMEA.Messages.VDM)
overriding
function Image (This : VDM_Message) return String is
      pragma Unreferenced (This);
begin
   return "Image ""VDM"" not implemented";
end;
