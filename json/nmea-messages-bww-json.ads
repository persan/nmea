with GNATCOLL.JSON;

package NMEA.Messages.BWW.JSON is
   use GNATCOLL.JSON;

   ----------------------------------------------------
   --  BWW_Message
   ---------------------------------------------------
   
   function Create (Val : BWW_Message) return JSON_Value;
   
   procedure Populate (Val : BWW_Message; Target : in out JSON_Value);

   function Get (Val : GNATCOLL.JSON.JSON_Value) return BWW_Message;
   
   function Get (Val   : JSON_Value;
                 Field : UTF8_String) return BWW_Message;
   
   procedure Set_Field  (Val        : JSON_Value;
                         Field_Name : UTF8_String;
                         Field      : BWW_Message);
   
   procedure Map (Val : JSON_Value;
                  To  : in out BWW_Message);   

   procedure Map_Field (Name : UTF8_String; Value : JSON_Value; To : in out BWW_Message);

end NMEA.Messages.BWW.JSON;