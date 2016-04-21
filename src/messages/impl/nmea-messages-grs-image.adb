separate (NMEA.Messages.GRS)
overriding
function Image (This : GRS_Message) return String is
      pragma Unreferenced (This);
begin
   return "Image ""GRS"" not implemented";
end;
