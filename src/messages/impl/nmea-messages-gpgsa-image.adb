separate (NMEA.Messages.GPGSA)
overriding
function Image (This : GPGSA_Message) return String is
      pragma Unreferenced (This);
begin
   return "Image ""GPGSA"" not implemented";
end;
