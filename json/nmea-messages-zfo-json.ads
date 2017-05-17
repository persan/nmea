with GNATCOLL.JSON;

package NMEA.Messages.ZFO.JSON is
   use GNATCOLL.JSON;

   ----------------------------------------------------
   --  ZFO_Message
   ---------------------------------------------------
   
   function Create (Val : ZFO_Message) return JSON_Value;
   
   procedure Populate (Val : ZFO_Message; Target : in out JSON_Value);

   function Get (Val : GNATCOLL.JSON.JSON_Value) return ZFO_Message;
   
   function Get (Val   : JSON_Value;
                 Field : UTF8_String) return ZFO_Message;
   
   procedure Set_Field  (Val        : JSON_Value;
                         Field_Name : UTF8_String;
                         Field      : ZFO_Message);
   
   procedure Map (Val : JSON_Value;
                  To  : in out ZFO_Message);   

   procedure Map_Field (Name : UTF8_String; Value : JSON_Value; To : in out ZFO_Message);

end NMEA.Messages.ZFO.JSON;