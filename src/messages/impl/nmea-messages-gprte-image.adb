separate (NMEA.Messages.GPRTE)
overriding
function Image (This : GPRTE_Message) return String is
      pragma Unreferenced (This);
begin
   return "Image ""GPRTE"" not implemented";
end;
