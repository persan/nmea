with GNATCOLL.JSON;

package NMEA.Messages.ALM.JSON is
   use GNATCOLL.JSON;

   ----------------------------------------------------
   --  ALM_Message
   ---------------------------------------------------
   
   function Create (Val : ALM_Message) return JSON_Value;
   
   procedure Populate (Val : ALM_Message; Target : in out JSON_Value);

   function Get (Val : GNATCOLL.JSON.JSON_Value) return ALM_Message;
   
   function Get (Val   : JSON_Value;
                 Field : UTF8_String) return ALM_Message;
   
   procedure Set_Field  (Val        : JSON_Value;
                         Field_Name : UTF8_String;
                         Field      : ALM_Message);
   
   procedure Map (Val : JSON_Value;
                  To  : in out ALM_Message);   

   procedure Map_Field (Name : UTF8_String; Value : JSON_Value; To : in out ALM_Message);

end NMEA.Messages.ALM.JSON;