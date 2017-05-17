with GNATCOLL.JSON;

package NMEA.Messages.GNS.JSON is
   use GNATCOLL.JSON;

   ----------------------------------------------------
   --  GNS_Message
   ---------------------------------------------------
   
   function Create (Val : GNS_Message) return JSON_Value;
   
   procedure Populate (Val : GNS_Message; Target : in out JSON_Value);

   function Get (Val : GNATCOLL.JSON.JSON_Value) return GNS_Message;
   
   function Get (Val   : JSON_Value;
                 Field : UTF8_String) return GNS_Message;
   
   procedure Set_Field  (Val        : JSON_Value;
                         Field_Name : UTF8_String;
                         Field      : GNS_Message);
   
   procedure Map (Val : JSON_Value;
                  To  : in out GNS_Message);   

   procedure Map_Field (Name : UTF8_String; Value : JSON_Value; To : in out GNS_Message);

end NMEA.Messages.GNS.JSON;