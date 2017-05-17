with GNATCOLL.JSON;

package NMEA.Messages.GBS.JSON is
   use GNATCOLL.JSON;

   ----------------------------------------------------
   --  GBS_Message
   ---------------------------------------------------
   
   function Create (Val : GBS_Message) return JSON_Value;
   
   procedure Populate (Val : GBS_Message; Target : in out JSON_Value);

   function Get (Val : GNATCOLL.JSON.JSON_Value) return GBS_Message;
   
   function Get (Val   : JSON_Value;
                 Field : UTF8_String) return GBS_Message;
   
   procedure Set_Field  (Val        : JSON_Value;
                         Field_Name : UTF8_String;
                         Field      : GBS_Message);
   
   procedure Map (Val : JSON_Value;
                  To  : in out GBS_Message);   

   procedure Map_Field (Name : UTF8_String; Value : JSON_Value; To : in out GBS_Message);

end NMEA.Messages.GBS.JSON;