with GNATCOLL.JSON;

package NMEA.Messages.MSK.JSON is
   use GNATCOLL.JSON;

   ----------------------------------------------------
   --  MSK_Message
   ---------------------------------------------------
   
   function Create (Val : MSK_Message) return JSON_Value;
   
   procedure Populate (Val : MSK_Message; Target : in out JSON_Value);

   function Get (Val : GNATCOLL.JSON.JSON_Value) return MSK_Message;
   
   function Get (Val   : JSON_Value;
                 Field : UTF8_String) return MSK_Message;
   
   procedure Set_Field  (Val        : JSON_Value;
                         Field_Name : UTF8_String;
                         Field      : MSK_Message);
   
   procedure Map (Val : JSON_Value;
                  To  : in out MSK_Message);   

   procedure Map_Field (Name : UTF8_String; Value : JSON_Value; To : in out MSK_Message);

end NMEA.Messages.MSK.JSON;