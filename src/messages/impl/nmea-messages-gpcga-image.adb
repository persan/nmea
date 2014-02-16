separate (NMEA.Messages.GPCGA)
overriding
function Image (This : GPCGA_Message) return String is
      pragma Unreferenced (This);
begin
   return "Image ""GPCGA"" not implemented";
end;
