--  VTG - Track made good and Ground speed
--  This is one of the sentences commonly emitted by GPS units.
--           1  2  3  4  5  6  7  8 9   10
--           |  |  |  |  |  |  |  | |   |
--   $--VTG,x.x,T,x.x,M,x.x,N,x.x,K,m,*hh<CR><LF>
--  Field Number:
--  1. Track Degrees
--  2. T = True
--  3. Track Degrees
--  4. M = Magnetic
--  5. Speed Knots
--  6. N = Knots
--  7. Speed Kilometers Per Hour
--  8. K = Kilometers Per Hour
--  9. FAA mode indicator (NMEA 2.3 and later)
--  10. Checksum
--  Note: in some older versions of NMEA 0183, the sentence looks like this:
--           1  2  3   4  5
--           |  |  |   |  |
--   $--VTG,x.x,x,x.x,x.x,*hh<CR><LF>
--!  !Field Number
--!  !1. True course over ground (degrees) 000 to 359
--!  !2. Magnetic course over ground 000 to 359
--!  !3. Speed over ground (knots) 00.0 to 99.9
--!  !4. Speed over ground (kilometers) 00.0 to 99.9
--!  !5. Checksum
--  The two forms can be distinguished by field 2, which will be the fixed text T in the newer form. The new form appears to have been introduced with NMEA 3.01 in 2002.
--  Some devices, such as those described in [GLOBALSAT], leave the magnetic-bearing fields 3 and 4 empty.

package NMEA.Messages.VTG is
   type VTG_Message is new Message with record
     null;
   end record;

   overriding function Image (This : VTG_Message) return String;

private
   overriding
   function Constructor
     (Stream : not null access Ada.Streams.Root_Stream_Type'Class)
      return VTG_Message;
end NMEA.Messages.VTG;
