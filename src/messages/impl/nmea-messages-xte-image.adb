separate (NMEA.Messages.XTE)
overriding
function Image (This : XTE_Message) return String is
      pragma Unreferenced (This);
begin
   return "Image ""XTE"" not implemented";
end;
