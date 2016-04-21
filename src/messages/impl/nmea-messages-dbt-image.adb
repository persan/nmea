separate (NMEA.Messages.DBT)
overriding
function Image (This : DBT_Message) return String is
      pragma Unreferenced (This);
begin
   return "Image ""DBT"" not implemented";
end;
