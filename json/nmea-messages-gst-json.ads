with GNATCOLL.JSON;

package NMEA.Messages.GST.JSON is
   use GNATCOLL.JSON;

   ----------------------------------------------------
   --  GST_Message
   ---------------------------------------------------
   
   function Create (Val : GST_Message) return JSON_Value;
   
   procedure Populate (Val : GST_Message; Target : in out JSON_Value);

   function Get (Val : GNATCOLL.JSON.JSON_Value) return GST_Message;
   
   function Get (Val   : JSON_Value;
                 Field : UTF8_String) return GST_Message;
   
   procedure Set_Field  (Val        : JSON_Value;
                         Field_Name : UTF8_String;
                         Field      : GST_Message);
   
   procedure Map (Val : JSON_Value;
                  To  : in out GST_Message);   

   procedure Map_Field (Name : UTF8_String; Value : JSON_Value; To : in out GST_Message);

end NMEA.Messages.GST.JSON;