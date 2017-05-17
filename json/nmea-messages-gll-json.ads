with GNATCOLL.JSON;

package NMEA.Messages.GLL.JSON is
   use GNATCOLL.JSON;

   ----------------------------------------------------
   --  GLL_Message
   ---------------------------------------------------
   
   function Create (Val : GLL_Message) return JSON_Value;
   
   procedure Populate (Val : GLL_Message; Target : in out JSON_Value);

   function Get (Val : GNATCOLL.JSON.JSON_Value) return GLL_Message;
   
   function Get (Val   : JSON_Value;
                 Field : UTF8_String) return GLL_Message;
   
   procedure Set_Field  (Val        : JSON_Value;
                         Field_Name : UTF8_String;
                         Field      : GLL_Message);
   
   procedure Map (Val : JSON_Value;
                  To  : in out GLL_Message);   

   procedure Map_Field (Name : UTF8_String; Value : JSON_Value; To : in out GLL_Message);

end NMEA.Messages.GLL.JSON;