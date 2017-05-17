with GNATCOLL.JSON;

package NMEA.Messages.BWR.JSON is
   use GNATCOLL.JSON;

   ----------------------------------------------------
   --  BWR_Message
   ---------------------------------------------------
   
   function Create (Val : BWR_Message) return JSON_Value;
   
   procedure Populate (Val : BWR_Message; Target : in out JSON_Value);

   function Get (Val : GNATCOLL.JSON.JSON_Value) return BWR_Message;
   
   function Get (Val   : JSON_Value;
                 Field : UTF8_String) return BWR_Message;
   
   procedure Set_Field  (Val        : JSON_Value;
                         Field_Name : UTF8_String;
                         Field      : BWR_Message);
   
   procedure Map (Val : JSON_Value;
                  To  : in out BWR_Message);   

   procedure Map_Field (Name : UTF8_String; Value : JSON_Value; To : in out BWR_Message);

end NMEA.Messages.BWR.JSON;