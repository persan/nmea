with GNATCOLL.JSON;

package NMEA.Messages.TRF.JSON is
   use GNATCOLL.JSON;

   ----------------------------------------------------
   --  TRF_Message
   ---------------------------------------------------
   
   function Create (Val : TRF_Message) return JSON_Value;
   
   procedure Populate (Val : TRF_Message; Target : in out JSON_Value);

   function Get (Val : GNATCOLL.JSON.JSON_Value) return TRF_Message;
   
   function Get (Val   : JSON_Value;
                 Field : UTF8_String) return TRF_Message;
   
   procedure Set_Field  (Val        : JSON_Value;
                         Field_Name : UTF8_String;
                         Field      : TRF_Message);
   
   procedure Map (Val : JSON_Value;
                  To  : in out TRF_Message);   

   procedure Map_Field (Name : UTF8_String; Value : JSON_Value; To : in out TRF_Message);

end NMEA.Messages.TRF.JSON;