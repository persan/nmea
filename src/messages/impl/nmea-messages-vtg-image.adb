separate (NMEA.Messages.VTG)
overriding
function Image (This : VTG_Message) return String is
      pragma Unreferenced (This);
begin
   return "Image ""VTG"" not implemented";
end;
