with GNATCOLL.JSON;

package NMEA.Messages.VHW.JSON is
   use GNATCOLL.JSON;

   ----------------------------------------------------
   --  VHW_Message
   ---------------------------------------------------
   
   function Create (Val : VHW_Message) return JSON_Value;
   
   procedure Populate (Val : VHW_Message; Target : in out JSON_Value);

   function Get (Val : GNATCOLL.JSON.JSON_Value) return VHW_Message;
   
   function Get (Val   : JSON_Value;
                 Field : UTF8_String) return VHW_Message;
   
   procedure Set_Field  (Val        : JSON_Value;
                         Field_Name : UTF8_String;
                         Field      : VHW_Message);
   
   procedure Map (Val : JSON_Value;
                  To  : in out VHW_Message);   

   procedure Map_Field (Name : UTF8_String; Value : JSON_Value; To : in out VHW_Message);

end NMEA.Messages.VHW.JSON;