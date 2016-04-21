separate (NMEA.Messages.DBK)
overriding
function Image (This : DBK_Message) return String is
      pragma Unreferenced (This);
begin
   return "Image ""DBK"" not implemented";
end;
