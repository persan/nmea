separate (NMEA.Messages.TDS)
overriding
function Image (This : TDS_Message) return String is
      pragma Unreferenced (This);
begin
   return "Image ""TDS"" not implemented";
end;
