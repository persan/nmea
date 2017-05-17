with GNATCOLL.JSON;

package NMEA.Messages.BOD.JSON is
   use GNATCOLL.JSON;

   ----------------------------------------------------
   --  BOD_Message
   ---------------------------------------------------
   
   function Create (Val : BOD_Message) return JSON_Value;
   
   procedure Populate (Val : BOD_Message; Target : in out JSON_Value);

   function Get (Val : GNATCOLL.JSON.JSON_Value) return BOD_Message;
   
   function Get (Val   : JSON_Value;
                 Field : UTF8_String) return BOD_Message;
   
   procedure Set_Field  (Val        : JSON_Value;
                         Field_Name : UTF8_String;
                         Field      : BOD_Message);
   
   procedure Map (Val : JSON_Value;
                  To  : in out BOD_Message);   

   procedure Map_Field (Name : UTF8_String; Value : JSON_Value; To : in out BOD_Message);

end NMEA.Messages.BOD.JSON;