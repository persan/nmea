separate (NMEA.Messages.HDT)
overriding
function Image (This : HDT_Message) return String is
      pragma Unreferenced (This);
begin
   return "Image ""HDT"" not implemented";
end;
