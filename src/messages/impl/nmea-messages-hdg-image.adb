separate (NMEA.Messages.HDG)
overriding
function Image (This : HDG_Message) return String is
      pragma Unreferenced (This);
begin
   return "Image ""HDG"" not implemented";
end;
