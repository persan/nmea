with GNATCOLL.JSON;

package NMEA.Messages.BWC.JSON is
   use GNATCOLL.JSON;

   ----------------------------------------------------
   --  BWC_Message
   ---------------------------------------------------
   
   function Create (Val : BWC_Message) return JSON_Value;
   
   procedure Populate (Val : BWC_Message; Target : in out JSON_Value);

   function Get (Val : GNATCOLL.JSON.JSON_Value) return BWC_Message;
   
   function Get (Val   : JSON_Value;
                 Field : UTF8_String) return BWC_Message;
   
   procedure Set_Field  (Val        : JSON_Value;
                         Field_Name : UTF8_String;
                         Field      : BWC_Message);
   
   procedure Map (Val : JSON_Value;
                  To  : in out BWC_Message);   

   procedure Map_Field (Name : UTF8_String; Value : JSON_Value; To : in out BWC_Message);

end NMEA.Messages.BWC.JSON;