separate (NMEA.Messages.PGRME)
overriding
function Image (This : PGRME_Message) return String is
      pragma Unreferenced (This);
begin
   return "Image ""PGRME"" not implemented";
end;
