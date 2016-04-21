separate (NMEA.Messages.TRF)
overriding
function Image (This : TRF_Message) return String is
      pragma Unreferenced (This);
begin
   return "Image ""TRF"" not implemented";
end;
