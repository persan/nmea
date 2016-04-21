separate (NMEA.Messages.VHW)
overriding
function Image (This : VHW_Message) return String is
      pragma Unreferenced (This);
begin
   return "Image ""VHW"" not implemented";
end;
