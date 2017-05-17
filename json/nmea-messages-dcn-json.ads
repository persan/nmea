with GNATCOLL.JSON;

package NMEA.Messages.DCN.JSON is
   use GNATCOLL.JSON;

   ----------------------------------------------------
   --  DCN_Message
   ---------------------------------------------------
   
   function Create (Val : DCN_Message) return JSON_Value;
   
   procedure Populate (Val : DCN_Message; Target : in out JSON_Value);

   function Get (Val : GNATCOLL.JSON.JSON_Value) return DCN_Message;
   
   function Get (Val   : JSON_Value;
                 Field : UTF8_String) return DCN_Message;
   
   procedure Set_Field  (Val        : JSON_Value;
                         Field_Name : UTF8_String;
                         Field      : DCN_Message);
   
   procedure Map (Val : JSON_Value;
                  To  : in out DCN_Message);   

   procedure Map_Field (Name : UTF8_String; Value : JSON_Value; To : in out DCN_Message);

end NMEA.Messages.DCN.JSON;