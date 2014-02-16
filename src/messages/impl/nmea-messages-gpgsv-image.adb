separate (NMEA.Messages.GPGSV)
overriding
function Image (This : GPGSV_Message) return String is
      pragma Unreferenced (This);
begin
   return "Image ""GPGSV"" not implemented";
end;
