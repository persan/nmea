separate (NMEA.Messages.BOD)
overriding
function Image (This : BOD_Message) return String is
      pragma Unreferenced (This);
begin
   return "Image ""BOD"" not implemented";
end;
