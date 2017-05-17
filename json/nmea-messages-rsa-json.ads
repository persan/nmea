with GNATCOLL.JSON;

package NMEA.Messages.RSA.JSON is
   use GNATCOLL.JSON;

   ----------------------------------------------------
   --  RSA_Message
   ---------------------------------------------------
   
   function Create (Val : RSA_Message) return JSON_Value;
   
   procedure Populate (Val : RSA_Message; Target : in out JSON_Value);

   function Get (Val : GNATCOLL.JSON.JSON_Value) return RSA_Message;
   
   function Get (Val   : JSON_Value;
                 Field : UTF8_String) return RSA_Message;
   
   procedure Set_Field  (Val        : JSON_Value;
                         Field_Name : UTF8_String;
                         Field      : RSA_Message);
   
   procedure Map (Val : JSON_Value;
                  To  : in out RSA_Message);   

   procedure Map_Field (Name : UTF8_String; Value : JSON_Value; To : in out RSA_Message);

end NMEA.Messages.RSA.JSON;