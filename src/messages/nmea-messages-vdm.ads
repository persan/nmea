--  VDM - xx
--- http://catb.org/gpsd/AIVDM.html

package NMEA.Messages.VDM is
   type VDM_Message is new Message with record
      Fragment_Count        : NMEA_Integer;
      Fragment_Number       : NMEA_Integer;
      Sequential_Message_ID : NMEA_Integer;
      Radio_Channel_Code    : NMEA_Character;
      Payload               : NMEA_String;
      Fill_Bits             : NMEA_Integer;
   end record;

   overriding function Image (This : VDM_Message) return String;


   type EPFD_Fix_Types is
     (Undefined,
      GPS,
      GLONASS,
      Combined_GPS_GLONASS,
      Loran_C,
      Chayka,
      Integrated_Navigation_System,
      Surveyed,
      Galileo,
      Not_Used_9, Not_Used_10, Not_Used_11, Not_Used_12, Not_Used_13, Not_Used_14, Not_Used_15) with
     Default_Value => Undefined,
     Size => 4;




private
   overriding
   function Constructor
     (Stream : not null access Ada.Streams.Root_Stream_Type'Class)
      return VDM_Message;
   type Six_Bits is range 0 .. 2#111_111# with Size => 6;
   type Six_Bits_Array is array (Natural range <>) of Six_Bits with Pack => True;

   function Character_2_Six_Bits (Value : Character) return Six_Bits is
     (if Character'Pos (Value) > 88 then Character'Pos (Value) - 56 else Character'Pos (Value) - 48);

   function String_To_Binary (Value : String; Filler : Integer)
                              return Ada.Streams.Stream_Element_Array;


end NMEA.Messages.VDM;
