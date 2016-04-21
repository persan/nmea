separate (NMEA.Messages.GTD)
overriding
function Image (This : GTD_Message) return String is
      pragma Unreferenced (This);
begin
   return "Image ""GTD"" not implemented";
end;
