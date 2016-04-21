separate (NMEA.Messages.RMC)
overriding
function Image (This : RMC_Message) return String is
      pragma Unreferenced (This);
begin
   return "Image ""RMC"" not implemented";
end;
