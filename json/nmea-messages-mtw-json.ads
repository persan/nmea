with GNATCOLL.JSON;

package NMEA.Messages.MTW.JSON is
   use GNATCOLL.JSON;

   ----------------------------------------------------
   --  MTW_Message
   ---------------------------------------------------
   
   function Create (Val : MTW_Message) return JSON_Value;
   
   procedure Populate (Val : MTW_Message; Target : in out JSON_Value);

   function Get (Val : GNATCOLL.JSON.JSON_Value) return MTW_Message;
   
   function Get (Val   : JSON_Value;
                 Field : UTF8_String) return MTW_Message;
   
   procedure Set_Field  (Val        : JSON_Value;
                         Field_Name : UTF8_String;
                         Field      : MTW_Message);
   
   procedure Map (Val : JSON_Value;
                  To  : in out MTW_Message);   

   procedure Map_Field (Name : UTF8_String; Value : JSON_Value; To : in out MTW_Message);

end NMEA.Messages.MTW.JSON;