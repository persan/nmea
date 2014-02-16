separate (NMEA.Messages.GPGLL)
overriding
function Image (This : GPGLL_Message) return String is
      pragma Unreferenced (This);
begin
   return "Image ""GPGLL"" not implemented";
end;
