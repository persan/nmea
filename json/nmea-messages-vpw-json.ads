with GNATCOLL.JSON;

package NMEA.Messages.VPW.JSON is
   use GNATCOLL.JSON;

   ----------------------------------------------------
   --  VPW_Message
   ---------------------------------------------------
   
   function Create (Val : VPW_Message) return JSON_Value;
   
   procedure Populate (Val : VPW_Message; Target : in out JSON_Value);

   function Get (Val : GNATCOLL.JSON.JSON_Value) return VPW_Message;
   
   function Get (Val   : JSON_Value;
                 Field : UTF8_String) return VPW_Message;
   
   procedure Set_Field  (Val        : JSON_Value;
                         Field_Name : UTF8_String;
                         Field      : VPW_Message);
   
   procedure Map (Val : JSON_Value;
                  To  : in out VPW_Message);   

   procedure Map_Field (Name : UTF8_String; Value : JSON_Value; To : in out VPW_Message);

end NMEA.Messages.VPW.JSON;