with GNATCOLL.JSON;

package NMEA.Messages.GSA.JSON is
   use GNATCOLL.JSON;

   ----------------------------------------------------
   --  GSA_Message
   ---------------------------------------------------
   
   function Create (Val : GSA_Message) return JSON_Value;
   
   procedure Populate (Val : GSA_Message; Target : in out JSON_Value);

   function Get (Val : GNATCOLL.JSON.JSON_Value) return GSA_Message;
   
   function Get (Val   : JSON_Value;
                 Field : UTF8_String) return GSA_Message;
   
   procedure Set_Field  (Val        : JSON_Value;
                         Field_Name : UTF8_String;
                         Field      : GSA_Message);
   
   procedure Map (Val : JSON_Value;
                  To  : in out GSA_Message);   

   procedure Map_Field (Name : UTF8_String; Value : JSON_Value; To : in out GSA_Message);

end NMEA.Messages.GSA.JSON;