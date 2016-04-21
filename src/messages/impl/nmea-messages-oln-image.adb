separate (NMEA.Messages.OLN)
overriding
function Image (This : OLN_Message) return String is
      pragma Unreferenced (This);
begin
   return "Image ""OLN"" not implemented";
end;
