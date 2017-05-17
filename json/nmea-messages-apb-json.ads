with GNATCOLL.JSON;

package NMEA.Messages.APB.JSON is
   use GNATCOLL.JSON;

   ----------------------------------------------------
   --  APB_Message
   ---------------------------------------------------
   
   function Create (Val : APB_Message) return JSON_Value;
   
   procedure Populate (Val : APB_Message; Target : in out JSON_Value);

   function Get (Val : GNATCOLL.JSON.JSON_Value) return APB_Message;
   
   function Get (Val   : JSON_Value;
                 Field : UTF8_String) return APB_Message;
   
   procedure Set_Field  (Val        : JSON_Value;
                         Field_Name : UTF8_String;
                         Field      : APB_Message);
   
   procedure Map (Val : JSON_Value;
                  To  : in out APB_Message);   

   procedure Map_Field (Name : UTF8_String; Value : JSON_Value; To : in out APB_Message);

end NMEA.Messages.APB.JSON;