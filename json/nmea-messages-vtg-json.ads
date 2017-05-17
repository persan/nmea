with GNATCOLL.JSON;

package NMEA.Messages.VTG.JSON is
   use GNATCOLL.JSON;

   ----------------------------------------------------
   --  VTG_Message
   ---------------------------------------------------
   
   function Create (Val : VTG_Message) return JSON_Value;
   
   procedure Populate (Val : VTG_Message; Target : in out JSON_Value);

   function Get (Val : GNATCOLL.JSON.JSON_Value) return VTG_Message;
   
   function Get (Val   : JSON_Value;
                 Field : UTF8_String) return VTG_Message;
   
   procedure Set_Field  (Val        : JSON_Value;
                         Field_Name : UTF8_String;
                         Field      : VTG_Message);
   
   procedure Map (Val : JSON_Value;
                  To  : in out VTG_Message);   

   procedure Map_Field (Name : UTF8_String; Value : JSON_Value; To : in out VTG_Message);

end NMEA.Messages.VTG.JSON;