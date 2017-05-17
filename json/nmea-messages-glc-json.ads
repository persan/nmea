with GNATCOLL.JSON;

package NMEA.Messages.GLC.JSON is
   use GNATCOLL.JSON;

   ----------------------------------------------------
   --  GLC_Message
   ---------------------------------------------------
   
   function Create (Val : GLC_Message) return JSON_Value;
   
   procedure Populate (Val : GLC_Message; Target : in out JSON_Value);

   function Get (Val : GNATCOLL.JSON.JSON_Value) return GLC_Message;
   
   function Get (Val   : JSON_Value;
                 Field : UTF8_String) return GLC_Message;
   
   procedure Set_Field  (Val        : JSON_Value;
                         Field_Name : UTF8_String;
                         Field      : GLC_Message);
   
   procedure Map (Val : JSON_Value;
                  To  : in out GLC_Message);   

   procedure Map_Field (Name : UTF8_String; Value : JSON_Value; To : in out GLC_Message);

end NMEA.Messages.GLC.JSON;