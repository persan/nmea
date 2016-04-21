separate (NMEA.Messages.GBS)
overriding
function Image (This : GBS_Message) return String is
      pragma Unreferenced (This);
begin
   return "Image ""GBS"" not implemented";
end;
