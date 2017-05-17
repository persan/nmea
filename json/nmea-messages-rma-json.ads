with GNATCOLL.JSON;

package NMEA.Messages.RMA.JSON is
   use GNATCOLL.JSON;

   ----------------------------------------------------
   --  RMA_Message
   ---------------------------------------------------
   
   function Create (Val : RMA_Message) return JSON_Value;
   
   procedure Populate (Val : RMA_Message; Target : in out JSON_Value);

   function Get (Val : GNATCOLL.JSON.JSON_Value) return RMA_Message;
   
   function Get (Val   : JSON_Value;
                 Field : UTF8_String) return RMA_Message;
   
   procedure Set_Field  (Val        : JSON_Value;
                         Field_Name : UTF8_String;
                         Field      : RMA_Message);
   
   procedure Map (Val : JSON_Value;
                  To  : in out RMA_Message);   

   procedure Map_Field (Name : UTF8_String; Value : JSON_Value; To : in out RMA_Message);

end NMEA.Messages.RMA.JSON;