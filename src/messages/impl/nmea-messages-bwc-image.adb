separate (NMEA.Messages.BWC)
overriding
function Image (This : BWC_Message) return String is
      pragma Unreferenced (This);
begin
   return "Image ""BWC"" not implemented";
end;
