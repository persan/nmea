separate (NMEA.Messages.SFI)
overriding
function Image (This : SFI_Message) return String is
      pragma Unreferenced (This);
begin
   return "Image ""SFI"" not implemented";
end;
