with GNATCOLL.JSON;

package NMEA.Messages.SFI.JSON is
   use GNATCOLL.JSON;

   ----------------------------------------------------
   --  SFI_Message
   ---------------------------------------------------
   
   function Create (Val : SFI_Message) return JSON_Value;
   
   procedure Populate (Val : SFI_Message; Target : in out JSON_Value);

   function Get (Val : GNATCOLL.JSON.JSON_Value) return SFI_Message;
   
   function Get (Val   : JSON_Value;
                 Field : UTF8_String) return SFI_Message;
   
   procedure Set_Field  (Val        : JSON_Value;
                         Field_Name : UTF8_String;
                         Field      : SFI_Message);
   
   procedure Map (Val : JSON_Value;
                  To  : in out SFI_Message);   

   procedure Map_Field (Name : UTF8_String; Value : JSON_Value; To : in out SFI_Message);

end NMEA.Messages.SFI.JSON;