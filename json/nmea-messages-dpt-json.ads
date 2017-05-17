with GNATCOLL.JSON;

package NMEA.Messages.DPT.JSON is
   use GNATCOLL.JSON;

   ----------------------------------------------------
   --  DPT_Message
   ---------------------------------------------------
   
   function Create (Val : DPT_Message) return JSON_Value;
   
   procedure Populate (Val : DPT_Message; Target : in out JSON_Value);

   function Get (Val : GNATCOLL.JSON.JSON_Value) return DPT_Message;
   
   function Get (Val   : JSON_Value;
                 Field : UTF8_String) return DPT_Message;
   
   procedure Set_Field  (Val        : JSON_Value;
                         Field_Name : UTF8_String;
                         Field      : DPT_Message);
   
   procedure Map (Val : JSON_Value;
                  To  : in out DPT_Message);   

   procedure Map_Field (Name : UTF8_String; Value : JSON_Value; To : in out DPT_Message);

end NMEA.Messages.DPT.JSON;