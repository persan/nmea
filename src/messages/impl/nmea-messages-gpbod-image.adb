separate (NMEA.Messages.GPBOD)
overriding
function Image (This : GPBOD_Message) return String is
      pragma Unreferenced (This);
begin
   return "Image ""GPBOD"" not implemented";
end;
