with GNATCOLL.JSON;

package NMEA.Messages.ROT.JSON is
   use GNATCOLL.JSON;

   ----------------------------------------------------
   --  ROT_Message
   ---------------------------------------------------
   
   function Create (Val : ROT_Message) return JSON_Value;
   
   procedure Populate (Val : ROT_Message; Target : in out JSON_Value);

   function Get (Val : GNATCOLL.JSON.JSON_Value) return ROT_Message;
   
   function Get (Val   : JSON_Value;
                 Field : UTF8_String) return ROT_Message;
   
   procedure Set_Field  (Val        : JSON_Value;
                         Field_Name : UTF8_String;
                         Field      : ROT_Message);
   
   procedure Map (Val : JSON_Value;
                  To  : in out ROT_Message);   

   procedure Map_Field (Name : UTF8_String; Value : JSON_Value; To : in out ROT_Message);

end NMEA.Messages.ROT.JSON;