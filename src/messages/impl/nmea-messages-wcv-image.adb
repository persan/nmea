separate (NMEA.Messages.WCV)
overriding
function Image (This : WCV_Message) return String is
      pragma Unreferenced (This);
begin
   return "Image ""WCV"" not implemented";
end;
