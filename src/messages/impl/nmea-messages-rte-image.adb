separate (NMEA.Messages.RTE)
overriding
function Image (This : RTE_Message) return String is
      pragma Unreferenced (This);
begin
   return "Image ""RTE"" not implemented";
end;
