with GNATCOLL.JSON;

package NMEA.Messages.HSC.JSON is
   use GNATCOLL.JSON;

   ----------------------------------------------------
   --  HSC_Message
   ---------------------------------------------------
   
   function Create (Val : HSC_Message) return JSON_Value;
   
   procedure Populate (Val : HSC_Message; Target : in out JSON_Value);

   function Get (Val : GNATCOLL.JSON.JSON_Value) return HSC_Message;
   
   function Get (Val   : JSON_Value;
                 Field : UTF8_String) return HSC_Message;
   
   procedure Set_Field  (Val        : JSON_Value;
                         Field_Name : UTF8_String;
                         Field      : HSC_Message);
   
   procedure Map (Val : JSON_Value;
                  To  : in out HSC_Message);   

   procedure Map_Field (Name : UTF8_String; Value : JSON_Value; To : in out HSC_Message);

end NMEA.Messages.HSC.JSON;