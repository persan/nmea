separate (NMEA.Messages.RSD)
overriding
function Image (This : RSD_Message) return String is
      pragma Unreferenced (This);
begin
   return "Image ""RSD"" not implemented";
end;
