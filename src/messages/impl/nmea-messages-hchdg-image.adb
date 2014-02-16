separate (NMEA.Messages.HCHDG)
overriding
function Image (This : HCHDG_Message) return String is
      pragma Unreferenced (This);
begin
   return "Image ""HCHDG"" not implemented";
end;
