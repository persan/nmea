separate (NMEA.Messages.DTM)
overriding
function Image (This : DTM_Message) return String is
      pragma Unreferenced (This);
begin
   return "Image ""DTM"" not implemented";
end;
