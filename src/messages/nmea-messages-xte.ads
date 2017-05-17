--  XTE - Cross-Track Error, Measured
--          1 2 3   4 5 6   7
--          | | |   | | |   |
--   $--XTE,A,A,x.x,a,N,m,*hh<CR><LF>
--  Field Number:
--  1. Status
--  V = Loran-C Blink or SNR warning
--  V = general warning flag or other navigation systems when a reliable fix is not available
--  2. Status
--  V = Loran-C Cycle Lock warning flag
--  A = OK or not used
--  3. Cross Track Error Magnitude
--  4. Direction to steer, L or R
--  5. Cross Track Units, N = Nautical Miles
--  6. FAA mode indicator (NMEA 2.3 and later, optional)
--  7. Checksum

package NMEA.Messages.XTE is
   type XTE_Message is new Message with record
      Status                                         : NMEA_Dummy_Field;
      Status8                                        : NMEA_Dummy_Field;
      Cross_Track_Error_Magnitude                    : NMEA_Dummy_Field;
      Direction_To_Steer_L_Or_R                      : NMEA_Dummy_Field;
      Cross_Track_Units_N_Nautical_Miles             : NMEA_Dummy_Field;
      FAA_Mode_Indicator_NMEA_2_3_And_Later_Optional : NMEA_Dummy_Field;
   end record;

   overriding function Image (This : XTE_Message) return String;

private
   overriding
   function Constructor
     (Stream : not null access Ada.Streams.Root_Stream_Type'Class)
      return XTE_Message;
end NMEA.Messages.XTE;
