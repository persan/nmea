separate (NMEA.Messages.RSA)
overriding
function Image (This : RSA_Message) return String is
      pragma Unreferenced (This);
begin
   return "Image ""RSA"" not implemented";
end;
