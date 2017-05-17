with GNATCOLL.JSON;

package NMEA.Messages.GSV.JSON is
   use GNATCOLL.JSON;

   ----------------------------------------------------
   --  GSV_Message
   ---------------------------------------------------
   
   function Create (Val : GSV_Message) return JSON_Value;
   
   procedure Populate (Val : GSV_Message; Target : in out JSON_Value);

   function Get (Val : GNATCOLL.JSON.JSON_Value) return GSV_Message;
   
   function Get (Val   : JSON_Value;
                 Field : UTF8_String) return GSV_Message;
   
   procedure Set_Field  (Val        : JSON_Value;
                         Field_Name : UTF8_String;
                         Field      : GSV_Message);
   
   procedure Map (Val : JSON_Value;
                  To  : in out GSV_Message);   

   procedure Map_Field (Name : UTF8_String; Value : JSON_Value; To : in out GSV_Message);

end NMEA.Messages.GSV.JSON;