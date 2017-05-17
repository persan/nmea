with GNATCOLL.JSON;

package NMEA.Messages.VLW.JSON is
   use GNATCOLL.JSON;

   ----------------------------------------------------
   --  VLW_Message
   ---------------------------------------------------
   
   function Create (Val : VLW_Message) return JSON_Value;
   
   procedure Populate (Val : VLW_Message; Target : in out JSON_Value);

   function Get (Val : GNATCOLL.JSON.JSON_Value) return VLW_Message;
   
   function Get (Val   : JSON_Value;
                 Field : UTF8_String) return VLW_Message;
   
   procedure Set_Field  (Val        : JSON_Value;
                         Field_Name : UTF8_String;
                         Field      : VLW_Message);
   
   procedure Map (Val : JSON_Value;
                  To  : in out VLW_Message);   

   procedure Map_Field (Name : UTF8_String; Value : JSON_Value; To : in out VLW_Message);

end NMEA.Messages.VLW.JSON;