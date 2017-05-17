with GNATCOLL.JSON;

package NMEA.Messages.RSD.JSON is
   use GNATCOLL.JSON;

   ----------------------------------------------------
   --  RSD_Message
   ---------------------------------------------------
   
   function Create (Val : RSD_Message) return JSON_Value;
   
   procedure Populate (Val : RSD_Message; Target : in out JSON_Value);

   function Get (Val : GNATCOLL.JSON.JSON_Value) return RSD_Message;
   
   function Get (Val   : JSON_Value;
                 Field : UTF8_String) return RSD_Message;
   
   procedure Set_Field  (Val        : JSON_Value;
                         Field_Name : UTF8_String;
                         Field      : RSD_Message);
   
   procedure Map (Val : JSON_Value;
                  To  : in out RSD_Message);   

   procedure Map_Field (Name : UTF8_String; Value : JSON_Value; To : in out RSD_Message);

end NMEA.Messages.RSD.JSON;