separate (NMEA.Messages.DCN)
overriding
function Image (This : DCN_Message) return String is
      pragma Unreferenced (This);
begin
   return "Image ""DCN"" not implemented";
end;
