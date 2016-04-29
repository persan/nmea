--  GSV - Satellites in view
--  This is one of the sentences commonly emitted by GPS units.

--          1 2 3 4 5 6 7     n
--          | | | | | | |     |
--   $--GSV,x,x,x,x,x,x,x,...*hh<CR><LF>
--  Field Number:
--  1. total number of GSV messages to be transmitted in this group
--  2. 1-origin number of this GSV message within current group
--  3. total number of satellites in view (leading zeros sent)
--  4. satellite PRN number (leading zeros sent)
--  5. elevation in degrees (00-90) (leading zeros sent)
--  6. azimuth in degrees to true north (000-359) (leading zeros sent)
--  7. SNR in dB (00-99) (leading zeros sent) more satellite info quadruples like 4-7
--  n. Checksum
--  Example: $GPGSV,3,1,11,03,03,111,00,04,15,270,00,06,01,010,00,13,06,292,00*74
--           $GPGSV,3,2,11,14,25,170,00,16,57,208,39,18,67,296,40,19,40,246,00*74
--           $GPGSV,3,3,11,22,42,067,42,24,14,311,43,27,05,244,00,,,,*4D


package NMEA.Messages.GSV is
   type GSV_Message is new Message with record
     null;
   end record;

   overriding function Image (This : GSV_Message) return String;

private
   overriding
   function Constructor
     (Stream : not null access Ada.Streams.Root_Stream_Type'Class)
      return GSV_Message;
end NMEA.Messages.GSV;
