separate (NMEA.Messages.DBS)
overriding
function Image (This : DBS_Message) return String is
      pragma Unreferenced (This);
begin
   return "Image ""DBS"" not implemented";
end;
