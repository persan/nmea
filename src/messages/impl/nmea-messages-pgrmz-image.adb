separate (NMEA.Messages.PGRMZ)
overriding
function Image (This : PGRMZ_Message) return String is
      pragma Unreferenced (This);
begin
   return "Image ""PGRMZ"" not implemented";
end;
