with GNATCOLL.JSON;

package NMEA.Messages.HFB.JSON is
   use GNATCOLL.JSON;

   ----------------------------------------------------
   --  HFB_Message
   ---------------------------------------------------
   
   function Create (Val : HFB_Message) return JSON_Value;
   
   procedure Populate (Val : HFB_Message; Target : in out JSON_Value);

   function Get (Val : GNATCOLL.JSON.JSON_Value) return HFB_Message;
   
   function Get (Val   : JSON_Value;
                 Field : UTF8_String) return HFB_Message;
   
   procedure Set_Field  (Val        : JSON_Value;
                         Field_Name : UTF8_String;
                         Field      : HFB_Message);
   
   procedure Map (Val : JSON_Value;
                  To  : in out HFB_Message);   

   procedure Map_Field (Name : UTF8_String; Value : JSON_Value; To : in out HFB_Message);

end NMEA.Messages.HFB.JSON;