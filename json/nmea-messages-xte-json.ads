with GNATCOLL.JSON;

package NMEA.Messages.XTE.JSON is
   use GNATCOLL.JSON;

   ----------------------------------------------------
   --  XTE_Message
   ---------------------------------------------------
   
   function Create (Val : XTE_Message) return JSON_Value;
   
   procedure Populate (Val : XTE_Message; Target : in out JSON_Value);

   function Get (Val : GNATCOLL.JSON.JSON_Value) return XTE_Message;
   
   function Get (Val   : JSON_Value;
                 Field : UTF8_String) return XTE_Message;
   
   procedure Set_Field  (Val        : JSON_Value;
                         Field_Name : UTF8_String;
                         Field      : XTE_Message);
   
   procedure Map (Val : JSON_Value;
                  To  : in out XTE_Message);   

   procedure Map_Field (Name : UTF8_String; Value : JSON_Value; To : in out XTE_Message);

end NMEA.Messages.XTE.JSON;