separate (NMEA.Messages.OSD)
overriding
function Image (This : OSD_Message) return String is
      pragma Unreferenced (This);
begin
   return "Image ""OSD"" not implemented";
end;
