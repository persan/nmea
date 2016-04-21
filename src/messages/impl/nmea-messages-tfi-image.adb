separate (NMEA.Messages.TFI)
overriding
function Image (This : TFI_Message) return String is
      pragma Unreferenced (This);
begin
   return "Image ""TFI"" not implemented";
end;
