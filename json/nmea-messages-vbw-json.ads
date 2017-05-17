with GNATCOLL.JSON;

package NMEA.Messages.VBW.JSON is
   use GNATCOLL.JSON;

   ----------------------------------------------------
   --  VBW_Message
   ---------------------------------------------------
   
   function Create (Val : VBW_Message) return JSON_Value;
   
   procedure Populate (Val : VBW_Message; Target : in out JSON_Value);

   function Get (Val : GNATCOLL.JSON.JSON_Value) return VBW_Message;
   
   function Get (Val   : JSON_Value;
                 Field : UTF8_String) return VBW_Message;
   
   procedure Set_Field  (Val        : JSON_Value;
                         Field_Name : UTF8_String;
                         Field      : VBW_Message);
   
   procedure Map (Val : JSON_Value;
                  To  : in out VBW_Message);   

   procedure Map_Field (Name : UTF8_String; Value : JSON_Value; To : in out VBW_Message);

end NMEA.Messages.VBW.JSON;