with GNATCOLL.JSON;

package NMEA.Messages.WPL.JSON is
   use GNATCOLL.JSON;

   ----------------------------------------------------
   --  WPL_Message
   ---------------------------------------------------
   
   function Create (Val : WPL_Message) return JSON_Value;
   
   procedure Populate (Val : WPL_Message; Target : in out JSON_Value);

   function Get (Val : GNATCOLL.JSON.JSON_Value) return WPL_Message;
   
   function Get (Val   : JSON_Value;
                 Field : UTF8_String) return WPL_Message;
   
   procedure Set_Field  (Val        : JSON_Value;
                         Field_Name : UTF8_String;
                         Field      : WPL_Message);
   
   procedure Map (Val : JSON_Value;
                  To  : in out WPL_Message);   

   procedure Map_Field (Name : UTF8_String; Value : JSON_Value; To : in out WPL_Message);

end NMEA.Messages.WPL.JSON;