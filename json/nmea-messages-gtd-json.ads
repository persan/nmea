with GNATCOLL.JSON;

package NMEA.Messages.GTD.JSON is
   use GNATCOLL.JSON;

   ----------------------------------------------------
   --  GTD_Message
   ---------------------------------------------------
   
   function Create (Val : GTD_Message) return JSON_Value;
   
   procedure Populate (Val : GTD_Message; Target : in out JSON_Value);

   function Get (Val : GNATCOLL.JSON.JSON_Value) return GTD_Message;
   
   function Get (Val   : JSON_Value;
                 Field : UTF8_String) return GTD_Message;
   
   procedure Set_Field  (Val        : JSON_Value;
                         Field_Name : UTF8_String;
                         Field      : GTD_Message);
   
   procedure Map (Val : JSON_Value;
                  To  : in out GTD_Message);   

   procedure Map_Field (Name : UTF8_String; Value : JSON_Value; To : in out GTD_Message);

end NMEA.Messages.GTD.JSON;