with GNATCOLL.JSON;

package NMEA.Messages.TPT.JSON is
   use GNATCOLL.JSON;

   ----------------------------------------------------
   --  TPT_Message
   ---------------------------------------------------
   
   function Create (Val : TPT_Message) return JSON_Value;
   
   procedure Populate (Val : TPT_Message; Target : in out JSON_Value);

   function Get (Val : GNATCOLL.JSON.JSON_Value) return TPT_Message;
   
   function Get (Val   : JSON_Value;
                 Field : UTF8_String) return TPT_Message;
   
   procedure Set_Field  (Val        : JSON_Value;
                         Field_Name : UTF8_String;
                         Field      : TPT_Message);
   
   procedure Map (Val : JSON_Value;
                  To  : in out TPT_Message);   

   procedure Map_Field (Name : UTF8_String; Value : JSON_Value; To : in out TPT_Message);

end NMEA.Messages.TPT.JSON;