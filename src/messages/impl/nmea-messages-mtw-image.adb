separate (NMEA.Messages.MTW)
overriding
function Image (This : MTW_Message) return String is
      pragma Unreferenced (This);
begin
   return "Image ""MTW"" not implemented";
end;
