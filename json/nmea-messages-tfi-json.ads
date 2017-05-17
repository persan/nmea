with GNATCOLL.JSON;

package NMEA.Messages.TFI.JSON is
   use GNATCOLL.JSON;

   ----------------------------------------------------
   --  TFI_Message
   ---------------------------------------------------
   
   function Create (Val : TFI_Message) return JSON_Value;
   
   procedure Populate (Val : TFI_Message; Target : in out JSON_Value);

   function Get (Val : GNATCOLL.JSON.JSON_Value) return TFI_Message;
   
   function Get (Val   : JSON_Value;
                 Field : UTF8_String) return TFI_Message;
   
   procedure Set_Field  (Val        : JSON_Value;
                         Field_Name : UTF8_String;
                         Field      : TFI_Message);
   
   procedure Map (Val : JSON_Value;
                  To  : in out TFI_Message);   

   procedure Map_Field (Name : UTF8_String; Value : JSON_Value; To : in out TFI_Message);

end NMEA.Messages.TFI.JSON;