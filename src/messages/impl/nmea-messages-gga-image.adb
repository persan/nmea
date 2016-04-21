separate (NMEA.Messages.GGA)
overriding
function Image (This : GGA_Message) return String is
      pragma Unreferenced (This);
begin
   return "Image ""GGA"" not implemented";
end;
