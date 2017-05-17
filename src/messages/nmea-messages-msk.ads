--  MSK - Control for a Beacon Receiver
--           1  2  3  4  5   6
--           |  |  |  |  |   |
--   $--MSK,nnn,m,nnn,m,nnn*hh<CR><LF>
--  Field Number:
--  1. Frequency to use 
--  2. Frequency mode, A=auto, M=manual 
--  3. Beacon bit rate 
--  4. Bitrate, A=auto, M=manual 
--  5. Frequency for MSS message status (null for no status) 
--  6. Checksum 

package NMEA.Messages.MSK is
   type MSK_Message is new Message with record
      Frequency_to_use : NMEA_Dummy_Field;
      Frequency_mode_A_auto_M_manual : NMEA_Dummy_Field;
      Beacon_bit_rate : NMEA_Dummy_Field;
      Bitrate_A_auto_M_manual : NMEA_Dummy_Field;
      Frequency_for_MSS_message_status_null_for_no_status : NMEA_Dummy_Field;
   end record;

   overriding function Image (This : MSK_Message) return String;

private
   overriding
   function Constructor
     (Stream : not null access Ada.Streams.Root_Stream_Type'Class)
      return MSK_Message;
end NMEA.Messages.MSK;
