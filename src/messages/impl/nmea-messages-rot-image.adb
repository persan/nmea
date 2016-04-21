separate (NMEA.Messages.ROT)
overriding
function Image (This : ROT_Message) return String is
      pragma Unreferenced (This);
begin
   return "Image ""ROT"" not implemented";
end;
