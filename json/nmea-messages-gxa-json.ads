with GNATCOLL.JSON;

package NMEA.Messages.GXA.JSON is
   use GNATCOLL.JSON;

   ----------------------------------------------------
   --  GXA_Message
   ---------------------------------------------------
   
   function Create (Val : GXA_Message) return JSON_Value;
   
   procedure Populate (Val : GXA_Message; Target : in out JSON_Value);

   function Get (Val : GNATCOLL.JSON.JSON_Value) return GXA_Message;
   
   function Get (Val   : JSON_Value;
                 Field : UTF8_String) return GXA_Message;
   
   procedure Set_Field  (Val        : JSON_Value;
                         Field_Name : UTF8_String;
                         Field      : GXA_Message);
   
   procedure Map (Val : JSON_Value;
                  To  : in out GXA_Message);   

   procedure Map_Field (Name : UTF8_String; Value : JSON_Value; To : in out GXA_Message);

end NMEA.Messages.GXA.JSON;