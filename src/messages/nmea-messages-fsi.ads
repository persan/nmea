--  FSI - Frequency Set Information
--  Set (or report) frequency, mode of operation and transmitter power level of a radiotelephone.
--          1      2      3 4 5
--          |      |      | | |
--   $--FSI,xxxxxx,xxxxxx,c,x*hh<CR><LF>
--   Field Number:
--  1. Transmitting Frequency
--  2. Receiving Frequency
--  3. Communications Mode (NMEA Syntax 2)
--  4. Power Level
--  5. Checksum

package NMEA.Messages.FSI is
   type FSI_Message is new Message with record
      Transmitting_Frequency : NMEA_Dummy_Field;
      Receiving_Frequency    : NMEA_Dummy_Field;
      Communications_Mode    : NMEA_Dummy_Field;
      Power_Level            : NMEA_Dummy_Field;
   end record;

   overriding function Image (This : FSI_Message) return String;

private
   overriding
   function Constructor
     (Stream : not null access Ada.Streams.Root_Stream_Type'Class)
      return FSI_Message;
end NMEA.Messages.FSI;
