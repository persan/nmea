with GNATCOLL.JSON;

package NMEA.Messages.TPR.JSON is
   use GNATCOLL.JSON;

   ----------------------------------------------------
   --  TPR_Message
   ---------------------------------------------------
   
   function Create (Val : TPR_Message) return JSON_Value;
   
   procedure Populate (Val : TPR_Message; Target : in out JSON_Value);

   function Get (Val : GNATCOLL.JSON.JSON_Value) return TPR_Message;
   
   function Get (Val   : JSON_Value;
                 Field : UTF8_String) return TPR_Message;
   
   procedure Set_Field  (Val        : JSON_Value;
                         Field_Name : UTF8_String;
                         Field      : TPR_Message);
   
   procedure Map (Val : JSON_Value;
                  To  : in out TPR_Message);   

   procedure Map_Field (Name : UTF8_String; Value : JSON_Value; To : in out TPR_Message);

end NMEA.Messages.TPR.JSON;