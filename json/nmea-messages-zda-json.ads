with GNATCOLL.JSON;

package NMEA.Messages.ZDA.JSON is
   use GNATCOLL.JSON;

   ----------------------------------------------------
   --  ZDA_Message
   ---------------------------------------------------
   
   function Create (Val : ZDA_Message) return JSON_Value;
   
   procedure Populate (Val : ZDA_Message; Target : in out JSON_Value);

   function Get (Val : GNATCOLL.JSON.JSON_Value) return ZDA_Message;
   
   function Get (Val   : JSON_Value;
                 Field : UTF8_String) return ZDA_Message;
   
   procedure Set_Field  (Val        : JSON_Value;
                         Field_Name : UTF8_String;
                         Field      : ZDA_Message);
   
   procedure Map (Val : JSON_Value;
                  To  : in out ZDA_Message);   

   procedure Map_Field (Name : UTF8_String; Value : JSON_Value; To : in out ZDA_Message);

end NMEA.Messages.ZDA.JSON;