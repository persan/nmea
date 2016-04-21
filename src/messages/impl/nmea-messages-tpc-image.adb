separate (NMEA.Messages.TPC)
overriding
function Image (This : TPC_Message) return String is
      pragma Unreferenced (This);
begin
   return "Image ""TPC"" not implemented";
end;
