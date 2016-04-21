separate (NMEA.Messages.VWR)
overriding
function Image (This : VWR_Message) return String is
      pragma Unreferenced (This);
begin
   return "Image ""VWR"" not implemented";
end;
