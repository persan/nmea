separate (NMEA.Messages.R00)
overriding
function Image (This : R00_Message) return String is
      pragma Unreferenced (This);
begin
   return "Image ""R00"" not implemented";
end;
