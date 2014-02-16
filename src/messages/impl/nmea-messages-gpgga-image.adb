separate (NMEA.Messages.GPGGA)
overriding
function Image (This : GPGGA_Message) return String is
      pragma Unreferenced (This);
begin
   return "Image ""GPGGA"" not implemented";
end;
