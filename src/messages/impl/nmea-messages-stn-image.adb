separate (NMEA.Messages.STN)
overriding
function Image (This : STN_Message) return String is
      pragma Unreferenced (This);
begin
   return "Image ""STN"" not implemented";
end;
