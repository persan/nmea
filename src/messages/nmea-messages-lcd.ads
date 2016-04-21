--  LCD - Loran-C Signal Data
--          1    2   3   4   5   6   7   8   9   10  11  12  13  14
--          |    |   |   |   |   |   |   |   |   |   |   |   |   |
--   $--LCD,xxxx,xxx,xxx,xxx,xxx,xxx,xxx,xxx,xxx,xxx,xxx,xxx,xxx*hh<CR><LF>
--  Field Number:
--  1. GRI Microseconds/10 
--  2. Master Relative SNR 
--  3. Master Relative ECD 
--  4. Time Difference 1 Microseconds 
--  5. Time Difference 1 Signal Status 
--  6. Time Difference 2 Microseconds 
--  7. Time Difference 2 Signal Status 
--  8. Time Difference 3 Microseconds 
--  9. Time Difference 3 Signal Status 
--  10. Time Difference 4 Microseconds 
--  11. Time Difference 4 Signal Status 
--  12. Time Difference 5 Microseconds 
--  13. Time Difference 5 Signal Status 
--  14. Checksum 

package NMEA.Messages.LCD is
   type LCD_Message is new Message with record
     null;
   end record;

   overriding function Image (This : LCD_Message) return String;

private
   overriding
   function Constructor
     (Stream : not null access Ada.Streams.Root_Stream_Type'Class)
      return LCD_Message;
end NMEA.Messages.LCD;
