with GNATCOLL.JSON;

package NMEA.Messages.VWR.JSON is
   use GNATCOLL.JSON;

   ----------------------------------------------------
   --  VWR_Message
   ---------------------------------------------------
   
   function Create (Val : VWR_Message) return JSON_Value;
   
   procedure Populate (Val : VWR_Message; Target : in out JSON_Value);

   function Get (Val : GNATCOLL.JSON.JSON_Value) return VWR_Message;
   
   function Get (Val   : JSON_Value;
                 Field : UTF8_String) return VWR_Message;
   
   procedure Set_Field  (Val        : JSON_Value;
                         Field_Name : UTF8_String;
                         Field      : VWR_Message);
   
   procedure Map (Val : JSON_Value;
                  To  : in out VWR_Message);   

   procedure Map_Field (Name : UTF8_String; Value : JSON_Value; To : in out VWR_Message);

end NMEA.Messages.VWR.JSON;