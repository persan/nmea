with GNATCOLL.JSON;

package NMEA.Messages.WNC.JSON is
   use GNATCOLL.JSON;

   ----------------------------------------------------
   --  WNC_Message
   ---------------------------------------------------
   
   function Create (Val : WNC_Message) return JSON_Value;
   
   procedure Populate (Val : WNC_Message; Target : in out JSON_Value);

   function Get (Val : GNATCOLL.JSON.JSON_Value) return WNC_Message;
   
   function Get (Val   : JSON_Value;
                 Field : UTF8_String) return WNC_Message;
   
   procedure Set_Field  (Val        : JSON_Value;
                         Field_Name : UTF8_String;
                         Field      : WNC_Message);
   
   procedure Map (Val : JSON_Value;
                  To  : in out WNC_Message);   

   procedure Map_Field (Name : UTF8_String; Value : JSON_Value; To : in out WNC_Message);

end NMEA.Messages.WNC.JSON;