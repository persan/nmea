separate (NMEA.Messages.GXA)
overriding
function Image (This : GXA_Message) return String is
      pragma Unreferenced (This);
begin
   return "Image ""GXA"" not implemented";
end;
