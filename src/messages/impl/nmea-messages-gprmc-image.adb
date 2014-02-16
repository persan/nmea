separate (NMEA.Messages.GPRMC)
overriding
function Image (This : GPRMC_Message) return String is
      pragma Unreferenced (This);
begin
   return "Image ""GPRMC"" not implemented";
end;
