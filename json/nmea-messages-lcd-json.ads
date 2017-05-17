with GNATCOLL.JSON;

package NMEA.Messages.LCD.JSON is
   use GNATCOLL.JSON;

   ----------------------------------------------------
   --  LCD_Message
   ---------------------------------------------------
   
   function Create (Val : LCD_Message) return JSON_Value;
   
   procedure Populate (Val : LCD_Message; Target : in out JSON_Value);

   function Get (Val : GNATCOLL.JSON.JSON_Value) return LCD_Message;
   
   function Get (Val   : JSON_Value;
                 Field : UTF8_String) return LCD_Message;
   
   procedure Set_Field  (Val        : JSON_Value;
                         Field_Name : UTF8_String;
                         Field      : LCD_Message);
   
   procedure Map (Val : JSON_Value;
                  To  : in out LCD_Message);   

   procedure Map_Field (Name : UTF8_String; Value : JSON_Value; To : in out LCD_Message);

end NMEA.Messages.LCD.JSON;