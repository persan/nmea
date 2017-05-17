with GNATCOLL.JSON;

package NMEA.Messages.RMB.JSON is
   use GNATCOLL.JSON;

   ----------------------------------------------------
   --  RMB_Message
   ---------------------------------------------------
   
   function Create (Val : RMB_Message) return JSON_Value;
   
   procedure Populate (Val : RMB_Message; Target : in out JSON_Value);

   function Get (Val : GNATCOLL.JSON.JSON_Value) return RMB_Message;
   
   function Get (Val   : JSON_Value;
                 Field : UTF8_String) return RMB_Message;
   
   procedure Set_Field  (Val        : JSON_Value;
                         Field_Name : UTF8_String;
                         Field      : RMB_Message);
   
   procedure Map (Val : JSON_Value;
                  To  : in out RMB_Message);   

   procedure Map_Field (Name : UTF8_String; Value : JSON_Value; To : in out RMB_Message);

end NMEA.Messages.RMB.JSON;