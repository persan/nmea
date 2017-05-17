with GNATCOLL.JSON;

package NMEA.Messages.APA.JSON is
   use GNATCOLL.JSON;

   ----------------------------------------------------
   --  APA_Message
   ---------------------------------------------------
   
   function Create (Val : APA_Message) return JSON_Value;
   
   procedure Populate (Val : APA_Message; Target : in out JSON_Value);

   function Get (Val : GNATCOLL.JSON.JSON_Value) return APA_Message;
   
   function Get (Val   : JSON_Value;
                 Field : UTF8_String) return APA_Message;
   
   procedure Set_Field  (Val        : JSON_Value;
                         Field_Name : UTF8_String;
                         Field      : APA_Message);
   
   procedure Map (Val : JSON_Value;
                  To  : in out APA_Message);   

   procedure Map_Field (Name : UTF8_String; Value : JSON_Value; To : in out APA_Message);

end NMEA.Messages.APA.JSON;