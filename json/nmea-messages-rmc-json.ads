with GNATCOLL.JSON;

package NMEA.Messages.RMC.JSON is
   use GNATCOLL.JSON;

   ----------------------------------------------------
   --  RMC_Message
   ---------------------------------------------------
   
   function Create (Val : RMC_Message) return JSON_Value;
   
   procedure Populate (Val : RMC_Message; Target : in out JSON_Value);

   function Get (Val : GNATCOLL.JSON.JSON_Value) return RMC_Message;
   
   function Get (Val   : JSON_Value;
                 Field : UTF8_String) return RMC_Message;
   
   procedure Set_Field  (Val        : JSON_Value;
                         Field_Name : UTF8_String;
                         Field      : RMC_Message);
   
   procedure Map (Val : JSON_Value;
                  To  : in out RMC_Message);   

   procedure Map_Field (Name : UTF8_String; Value : JSON_Value; To : in out RMC_Message);

end NMEA.Messages.RMC.JSON;