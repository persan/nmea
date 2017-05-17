with GNATCOLL.JSON;

package NMEA.Messages.TPC.JSON is
   use GNATCOLL.JSON;

   ----------------------------------------------------
   --  TPC_Message
   ---------------------------------------------------
   
   function Create (Val : TPC_Message) return JSON_Value;
   
   procedure Populate (Val : TPC_Message; Target : in out JSON_Value);

   function Get (Val : GNATCOLL.JSON.JSON_Value) return TPC_Message;
   
   function Get (Val   : JSON_Value;
                 Field : UTF8_String) return TPC_Message;
   
   procedure Set_Field  (Val        : JSON_Value;
                         Field_Name : UTF8_String;
                         Field      : TPC_Message);
   
   procedure Map (Val : JSON_Value;
                  To  : in out TPC_Message);   

   procedure Map_Field (Name : UTF8_String; Value : JSON_Value; To : in out TPC_Message);

end NMEA.Messages.TPC.JSON;