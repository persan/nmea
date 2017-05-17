with GNATCOLL.JSON;

package NMEA.Messages.XDR.JSON is
   use GNATCOLL.JSON;

   ----------------------------------------------------
   --  XDR_Message
   ---------------------------------------------------
   
   function Create (Val : XDR_Message) return JSON_Value;
   
   procedure Populate (Val : XDR_Message; Target : in out JSON_Value);

   function Get (Val : GNATCOLL.JSON.JSON_Value) return XDR_Message;
   
   function Get (Val   : JSON_Value;
                 Field : UTF8_String) return XDR_Message;
   
   procedure Set_Field  (Val        : JSON_Value;
                         Field_Name : UTF8_String;
                         Field      : XDR_Message);
   
   procedure Map (Val : JSON_Value;
                  To  : in out XDR_Message);   

   procedure Map_Field (Name : UTF8_String; Value : JSON_Value; To : in out XDR_Message);

end NMEA.Messages.XDR.JSON;