--  MSS - Beacon Receiver Status
--           1  2  3  4    5   6
--           |  |  |  |    |   |
--   $--MSS,nn,nn,fff,bbb,xxx*hh<CR><LF>
--  Field Number:
--  1. Signal strength (dB 1uV) 
--  2. Signal to noise ratio (dB) 
--  3. Beacon frequency (kHz) 
--  4. Beacon data rate (BPS) 
--  5. Unknown integer value 
--  6. Checksum 

package NMEA.Messages.MSS is
   type MSS_Message is new Message with record
     null;
   end record;

   overriding function Image (This : MSS_Message) return String;

private
   overriding
   function Constructor
     (Stream : not null access Ada.Streams.Root_Stream_Type'Class)
      return MSS_Message;
end NMEA.Messages.MSS;
