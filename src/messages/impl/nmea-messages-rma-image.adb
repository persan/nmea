separate (NMEA.Messages.RMA)
overriding
function Image (This : RMA_Message) return String is
      pragma Unreferenced (This);
begin
   return "Image ""RMA"" not implemented";
end;
