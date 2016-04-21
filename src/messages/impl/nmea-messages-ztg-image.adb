separate (NMEA.Messages.ZTG)
overriding
function Image (This : ZTG_Message) return String is
      pragma Unreferenced (This);
begin
   return "Image ""ZTG"" not implemented";
end;
