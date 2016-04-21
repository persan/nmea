separate (NMEA.Messages.APA)
overriding
function Image (This : APA_Message) return String is
      pragma Unreferenced (This);
begin
   return "Image ""APA"" not implemented";
end;
