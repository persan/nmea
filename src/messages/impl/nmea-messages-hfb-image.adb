separate (NMEA.Messages.HFB)
overriding
function Image (This : HFB_Message) return String is
      pragma Unreferenced (This);
begin
   return "Image ""HFB"" not implemented";
end;
