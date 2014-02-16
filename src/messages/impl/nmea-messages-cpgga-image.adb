separate (NMEA.Messages.CPGGA)
overriding
function Image (This : CPGGA_Message) return String is
      pragma Unreferenced (This);
begin
   return "Image ""CPGGA"" not implemented";
end;
