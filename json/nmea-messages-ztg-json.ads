with GNATCOLL.JSON;

package NMEA.Messages.ZTG.JSON is
   use GNATCOLL.JSON;

   ----------------------------------------------------
   --  ZTG_Message
   ---------------------------------------------------
   
   function Create (Val : ZTG_Message) return JSON_Value;
   
   procedure Populate (Val : ZTG_Message; Target : in out JSON_Value);

   function Get (Val : GNATCOLL.JSON.JSON_Value) return ZTG_Message;
   
   function Get (Val   : JSON_Value;
                 Field : UTF8_String) return ZTG_Message;
   
   procedure Set_Field  (Val        : JSON_Value;
                         Field_Name : UTF8_String;
                         Field      : ZTG_Message);
   
   procedure Map (Val : JSON_Value;
                  To  : in out ZTG_Message);   

   procedure Map_Field (Name : UTF8_String; Value : JSON_Value; To : in out ZTG_Message);

end NMEA.Messages.ZTG.JSON;