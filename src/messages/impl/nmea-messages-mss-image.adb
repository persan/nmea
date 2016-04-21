separate (NMEA.Messages.MSS)
overriding
function Image (This : MSS_Message) return String is
      pragma Unreferenced (This);
begin
   return "Image ""MSS"" not implemented";
end;
