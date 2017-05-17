with GNATCOLL.JSON;

package NMEA.Messages.HDM.JSON is
   use GNATCOLL.JSON;

   ----------------------------------------------------
   --  HDM_Message
   ---------------------------------------------------
   
   function Create (Val : HDM_Message) return JSON_Value;
   
   procedure Populate (Val : HDM_Message; Target : in out JSON_Value);

   function Get (Val : GNATCOLL.JSON.JSON_Value) return HDM_Message;
   
   function Get (Val   : JSON_Value;
                 Field : UTF8_String) return HDM_Message;
   
   procedure Set_Field  (Val        : JSON_Value;
                         Field_Name : UTF8_String;
                         Field      : HDM_Message);
   
   procedure Map (Val : JSON_Value;
                  To  : in out HDM_Message);   

   procedure Map_Field (Name : UTF8_String; Value : JSON_Value; To : in out HDM_Message);

end NMEA.Messages.HDM.JSON;