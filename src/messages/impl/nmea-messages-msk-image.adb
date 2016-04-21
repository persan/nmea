separate (NMEA.Messages.MSK)
overriding
function Image (This : MSK_Message) return String is
      pragma Unreferenced (This);
begin
   return "Image ""MSK"" not implemented";
end;
