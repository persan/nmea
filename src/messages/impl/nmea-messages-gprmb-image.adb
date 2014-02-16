separate (NMEA.Messages.GPRMB)
overriding
function Image (This : GPRMB_Message) return String is
      pragma Unreferenced (This);
begin
   return "Image ""GPRMB"" not implemented";
end;
