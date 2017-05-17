with GNATCOLL.JSON;

package NMEA.Messages.XTR.JSON is
   use GNATCOLL.JSON;

   ----------------------------------------------------
   --  XTR_Message
   ---------------------------------------------------
   
   function Create (Val : XTR_Message) return JSON_Value;
   
   procedure Populate (Val : XTR_Message; Target : in out JSON_Value);

   function Get (Val : GNATCOLL.JSON.JSON_Value) return XTR_Message;
   
   function Get (Val   : JSON_Value;
                 Field : UTF8_String) return XTR_Message;
   
   procedure Set_Field  (Val        : JSON_Value;
                         Field_Name : UTF8_String;
                         Field      : XTR_Message);
   
   procedure Map (Val : JSON_Value;
                  To  : in out XTR_Message);   

   procedure Map_Field (Name : UTF8_String; Value : JSON_Value; To : in out XTR_Message);

end NMEA.Messages.XTR.JSON;