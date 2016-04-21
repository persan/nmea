separate (NMEA.Messages.FSI)
overriding
function Image (This : FSI_Message) return String is
      pragma Unreferenced (This);
begin
   return "Image ""FSI"" not implemented";
end;
