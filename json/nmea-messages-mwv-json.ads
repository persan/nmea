with GNATCOLL.JSON;

package NMEA.Messages.MWV.JSON is
   use GNATCOLL.JSON;

   ----------------------------------------------------
   --  MWV_Message
   ---------------------------------------------------
   
   function Create (Val : MWV_Message) return JSON_Value;
   
   procedure Populate (Val : MWV_Message; Target : in out JSON_Value);

   function Get (Val : GNATCOLL.JSON.JSON_Value) return MWV_Message;
   
   function Get (Val   : JSON_Value;
                 Field : UTF8_String) return MWV_Message;
   
   procedure Set_Field  (Val        : JSON_Value;
                         Field_Name : UTF8_String;
                         Field      : MWV_Message);
   
   procedure Map (Val : JSON_Value;
                  To  : in out MWV_Message);   

   procedure Map_Field (Name : UTF8_String; Value : JSON_Value; To : in out MWV_Message);

end NMEA.Messages.MWV.JSON;