with GNATCOLL.JSON;

package NMEA.Messages.DBS.JSON is
   use GNATCOLL.JSON;

   ----------------------------------------------------
   --  DBS_Message
   ---------------------------------------------------
   
   function Create (Val : DBS_Message) return JSON_Value;
   
   procedure Populate (Val : DBS_Message; Target : in out JSON_Value);

   function Get (Val : GNATCOLL.JSON.JSON_Value) return DBS_Message;
   
   function Get (Val   : JSON_Value;
                 Field : UTF8_String) return DBS_Message;
   
   procedure Set_Field  (Val        : JSON_Value;
                         Field_Name : UTF8_String;
                         Field      : DBS_Message);
   
   procedure Map (Val : JSON_Value;
                  To  : in out DBS_Message);   

   procedure Map_Field (Name : UTF8_String; Value : JSON_Value; To : in out DBS_Message);

end NMEA.Messages.DBS.JSON;