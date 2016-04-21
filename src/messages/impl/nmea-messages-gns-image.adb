separate (NMEA.Messages.GNS)
overriding
function Image (This : GNS_Message) return String is
      pragma Unreferenced (This);
begin
   return "Image ""GNS"" not implemented";
end;
