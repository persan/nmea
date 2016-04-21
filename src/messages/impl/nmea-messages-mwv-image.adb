separate (NMEA.Messages.MWV)
overriding
function Image (This : MWV_Message) return String is
      pragma Unreferenced (This);
begin
   return "Image ""MWV"" not implemented";
end;
