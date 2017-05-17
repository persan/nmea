with GNATCOLL.JSON;

package NMEA.Messages.GRS.JSON is
   use GNATCOLL.JSON;

   ----------------------------------------------------
   --  GRS_Message
   ---------------------------------------------------
   
   function Create (Val : GRS_Message) return JSON_Value;
   
   procedure Populate (Val : GRS_Message; Target : in out JSON_Value);

   function Get (Val : GNATCOLL.JSON.JSON_Value) return GRS_Message;
   
   function Get (Val   : JSON_Value;
                 Field : UTF8_String) return GRS_Message;
   
   procedure Set_Field  (Val        : JSON_Value;
                         Field_Name : UTF8_String;
                         Field      : GRS_Message);
   
   procedure Map (Val : JSON_Value;
                  To  : in out GRS_Message);   

   procedure Map_Field (Name : UTF8_String; Value : JSON_Value; To : in out GRS_Message);

end NMEA.Messages.GRS.JSON;