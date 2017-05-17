with GNATCOLL.JSON;

package NMEA.Messages.OLN.JSON is
   use GNATCOLL.JSON;

   ----------------------------------------------------
   --  OLN_Message
   ---------------------------------------------------
   
   function Create (Val : OLN_Message) return JSON_Value;
   
   procedure Populate (Val : OLN_Message; Target : in out JSON_Value);

   function Get (Val : GNATCOLL.JSON.JSON_Value) return OLN_Message;
   
   function Get (Val   : JSON_Value;
                 Field : UTF8_String) return OLN_Message;
   
   procedure Set_Field  (Val        : JSON_Value;
                         Field_Name : UTF8_String;
                         Field      : OLN_Message);
   
   procedure Map (Val : JSON_Value;
                  To  : in out OLN_Message);   

   procedure Map_Field (Name : UTF8_String; Value : JSON_Value; To : in out OLN_Message);

end NMEA.Messages.OLN.JSON;