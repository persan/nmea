with GNATCOLL.JSON;

package NMEA.Messages.AAM.JSON is
   use GNATCOLL.JSON;

   ----------------------------------------------------
   --  AAM_Message
   ---------------------------------------------------
   
   function Create (Val : AAM_Message) return JSON_Value;
   
   procedure Populate (Val : AAM_Message; Target : in out JSON_Value);

   function Get (Val : GNATCOLL.JSON.JSON_Value) return AAM_Message;
   
   function Get (Val   : JSON_Value;
                 Field : UTF8_String) return AAM_Message;
   
   procedure Set_Field  (Val        : JSON_Value;
                         Field_Name : UTF8_String;
                         Field      : AAM_Message);
   
   procedure Map (Val : JSON_Value;
                  To  : in out AAM_Message);   

   procedure Map_Field (Name : UTF8_String; Value : JSON_Value; To : in out AAM_Message);

end NMEA.Messages.AAM.JSON;