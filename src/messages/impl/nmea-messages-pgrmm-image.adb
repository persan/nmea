separate (NMEA.Messages.PGRMM)
overriding
function Image (This : PGRMM_Message) return String is
      pragma Unreferenced (This);
begin
   return "Image ""PGRMM"" not implemented";
end;
