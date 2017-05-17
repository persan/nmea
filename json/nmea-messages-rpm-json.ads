with GNATCOLL.JSON;

package NMEA.Messages.RPM.JSON is
   use GNATCOLL.JSON;

   ----------------------------------------------------
   --  RPM_Message
   ---------------------------------------------------
   
   function Create (Val : RPM_Message) return JSON_Value;
   
   procedure Populate (Val : RPM_Message; Target : in out JSON_Value);

   function Get (Val : GNATCOLL.JSON.JSON_Value) return RPM_Message;
   
   function Get (Val   : JSON_Value;
                 Field : UTF8_String) return RPM_Message;
   
   procedure Set_Field  (Val        : JSON_Value;
                         Field_Name : UTF8_String;
                         Field      : RPM_Message);
   
   procedure Map (Val : JSON_Value;
                  To  : in out RPM_Message);   

   procedure Map_Field (Name : UTF8_String; Value : JSON_Value; To : in out RPM_Message);

end NMEA.Messages.RPM.JSON;