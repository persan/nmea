with GNATCOLL.JSON;

package NMEA.Messages.VDR.JSON is
   use GNATCOLL.JSON;

   ----------------------------------------------------
   --  VDR_Message
   ---------------------------------------------------
   
   function Create (Val : VDR_Message) return JSON_Value;
   
   procedure Populate (Val : VDR_Message; Target : in out JSON_Value);

   function Get (Val : GNATCOLL.JSON.JSON_Value) return VDR_Message;
   
   function Get (Val   : JSON_Value;
                 Field : UTF8_String) return VDR_Message;
   
   procedure Set_Field  (Val        : JSON_Value;
                         Field_Name : UTF8_String;
                         Field      : VDR_Message);
   
   procedure Map (Val : JSON_Value;
                  To  : in out VDR_Message);   

   procedure Map_Field (Name : UTF8_String; Value : JSON_Value; To : in out VDR_Message);

end NMEA.Messages.VDR.JSON;