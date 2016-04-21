separate (NMEA.Messages.VDO)
overriding
function Image (This : VDO_Message) return String is
      pragma Unreferenced (This);
begin
   return "Image ""VDO"" not implemented";
end;
