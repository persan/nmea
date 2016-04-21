separate (NMEA.Messages.GLL)
overriding
function Image (This : GLL_Message) return String is
      pragma Unreferenced (This);
begin
   return "Image ""GLL"" not implemented";
end;
