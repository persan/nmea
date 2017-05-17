with GNATCOLL.JSON;

package NMEA.Messages.DBT.JSON is
   use GNATCOLL.JSON;

   ----------------------------------------------------
   --  DBT_Message
   ---------------------------------------------------
   
   function Create (Val : DBT_Message) return JSON_Value;
   
   procedure Populate (Val : DBT_Message; Target : in out JSON_Value);

   function Get (Val : GNATCOLL.JSON.JSON_Value) return DBT_Message;
   
   function Get (Val   : JSON_Value;
                 Field : UTF8_String) return DBT_Message;
   
   procedure Set_Field  (Val        : JSON_Value;
                         Field_Name : UTF8_String;
                         Field      : DBT_Message);
   
   procedure Map (Val : JSON_Value;
                  To  : in out DBT_Message);   

   procedure Map_Field (Name : UTF8_String; Value : JSON_Value; To : in out DBT_Message);

end NMEA.Messages.DBT.JSON;