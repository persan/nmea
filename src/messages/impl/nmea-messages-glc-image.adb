separate (NMEA.Messages.GLC)
overriding
function Image (This : GLC_Message) return String is
      pragma Unreferenced (This);
begin
   return "Image ""GLC"" not implemented";
end;
