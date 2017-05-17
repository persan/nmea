with GNATCOLL.JSON;

package NMEA.Messages.TTM.JSON is
   use GNATCOLL.JSON;

   ----------------------------------------------------
   --  TTM_Message
   ---------------------------------------------------
   
   function Create (Val : TTM_Message) return JSON_Value;
   
   procedure Populate (Val : TTM_Message; Target : in out JSON_Value);

   function Get (Val : GNATCOLL.JSON.JSON_Value) return TTM_Message;
   
   function Get (Val   : JSON_Value;
                 Field : UTF8_String) return TTM_Message;
   
   procedure Set_Field  (Val        : JSON_Value;
                         Field_Name : UTF8_String;
                         Field      : TTM_Message);
   
   procedure Map (Val : JSON_Value;
                  To  : in out TTM_Message);   

   procedure Map_Field (Name : UTF8_String; Value : JSON_Value; To : in out TTM_Message);

end NMEA.Messages.TTM.JSON;