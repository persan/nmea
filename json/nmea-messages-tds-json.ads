with GNATCOLL.JSON;

package NMEA.Messages.TDS.JSON is
   use GNATCOLL.JSON;

   ----------------------------------------------------
   --  TDS_Message
   ---------------------------------------------------
   
   function Create (Val : TDS_Message) return JSON_Value;
   
   procedure Populate (Val : TDS_Message; Target : in out JSON_Value);

   function Get (Val : GNATCOLL.JSON.JSON_Value) return TDS_Message;
   
   function Get (Val   : JSON_Value;
                 Field : UTF8_String) return TDS_Message;
   
   procedure Set_Field  (Val        : JSON_Value;
                         Field_Name : UTF8_String;
                         Field      : TDS_Message);
   
   procedure Map (Val : JSON_Value;
                  To  : in out TDS_Message);   

   procedure Map_Field (Name : UTF8_String; Value : JSON_Value; To : in out TDS_Message);

end NMEA.Messages.TDS.JSON;