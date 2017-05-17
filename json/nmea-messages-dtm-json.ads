with GNATCOLL.JSON;

package NMEA.Messages.DTM.JSON is
   use GNATCOLL.JSON;

   ----------------------------------------------------
   --  DTM_Message
   ---------------------------------------------------
   
   function Create (Val : DTM_Message) return JSON_Value;
   
   procedure Populate (Val : DTM_Message; Target : in out JSON_Value);

   function Get (Val : GNATCOLL.JSON.JSON_Value) return DTM_Message;
   
   function Get (Val   : JSON_Value;
                 Field : UTF8_String) return DTM_Message;
   
   procedure Set_Field  (Val        : JSON_Value;
                         Field_Name : UTF8_String;
                         Field      : DTM_Message);
   
   procedure Map (Val : JSON_Value;
                  To  : in out DTM_Message);   

   procedure Map_Field (Name : UTF8_String; Value : JSON_Value; To : in out DTM_Message);

end NMEA.Messages.DTM.JSON;