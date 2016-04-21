separate (NMEA.Messages.CGA)
overriding
function Image (This : CGA_Message) return String is
      pragma Unreferenced (This);
begin
   return "Image ""CGA"" not implemented";
end;
