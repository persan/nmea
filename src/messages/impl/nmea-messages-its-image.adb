separate (NMEA.Messages.ITS)
overriding
function Image (This : ITS_Message) return String is
      pragma Unreferenced (This);
begin
   return "Image ""ITS"" not implemented";
end;
