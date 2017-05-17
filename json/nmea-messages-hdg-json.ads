with GNATCOLL.JSON;

package NMEA.Messages.HDG.JSON is
   use GNATCOLL.JSON;

   ----------------------------------------------------
   --  HDG_Message
   ---------------------------------------------------
   
   function Create (Val : HDG_Message) return JSON_Value;
   
   procedure Populate (Val : HDG_Message; Target : in out JSON_Value);

   function Get (Val : GNATCOLL.JSON.JSON_Value) return HDG_Message;
   
   function Get (Val   : JSON_Value;
                 Field : UTF8_String) return HDG_Message;
   
   procedure Set_Field  (Val        : JSON_Value;
                         Field_Name : UTF8_String;
                         Field      : HDG_Message);
   
   procedure Map (Val : JSON_Value;
                  To  : in out HDG_Message);   

   procedure Map_Field (Name : UTF8_String; Value : JSON_Value; To : in out HDG_Message);

end NMEA.Messages.HDG.JSON;