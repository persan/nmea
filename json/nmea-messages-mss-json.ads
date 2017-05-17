with GNATCOLL.JSON;

package NMEA.Messages.MSS.JSON is
   use GNATCOLL.JSON;

   ----------------------------------------------------
   --  MSS_Message
   ---------------------------------------------------
   
   function Create (Val : MSS_Message) return JSON_Value;
   
   procedure Populate (Val : MSS_Message; Target : in out JSON_Value);

   function Get (Val : GNATCOLL.JSON.JSON_Value) return MSS_Message;
   
   function Get (Val   : JSON_Value;
                 Field : UTF8_String) return MSS_Message;
   
   procedure Set_Field  (Val        : JSON_Value;
                         Field_Name : UTF8_String;
                         Field      : MSS_Message);
   
   procedure Map (Val : JSON_Value;
                  To  : in out MSS_Message);   

   procedure Map_Field (Name : UTF8_String; Value : JSON_Value; To : in out MSS_Message);

end NMEA.Messages.MSS.JSON;