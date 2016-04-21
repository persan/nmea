separate (NMEA.Messages.DPT)
overriding
function Image (This : DPT_Message) return String is
      pragma Unreferenced (This);
begin
   return "Image ""DPT"" not implemented";
end;
