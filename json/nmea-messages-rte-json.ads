with GNATCOLL.JSON;

package NMEA.Messages.RTE.JSON is
   use GNATCOLL.JSON;

   ----------------------------------------------------
   --  RTE_Message
   ---------------------------------------------------
   
   function Create (Val : RTE_Message) return JSON_Value;
   
   procedure Populate (Val : RTE_Message; Target : in out JSON_Value);

   function Get (Val : GNATCOLL.JSON.JSON_Value) return RTE_Message;
   
   function Get (Val   : JSON_Value;
                 Field : UTF8_String) return RTE_Message;
   
   procedure Set_Field  (Val        : JSON_Value;
                         Field_Name : UTF8_String;
                         Field      : RTE_Message);
   
   procedure Map (Val : JSON_Value;
                  To  : in out RTE_Message);   

   procedure Map_Field (Name : UTF8_String; Value : JSON_Value; To : in out RTE_Message);

end NMEA.Messages.RTE.JSON;