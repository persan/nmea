with GNATCOLL.JSON;

package NMEA.Messages.DBK.JSON is
   use GNATCOLL.JSON;

   ----------------------------------------------------
   --  DBK_Message
   ---------------------------------------------------
   
   function Create (Val : DBK_Message) return JSON_Value;
   
   procedure Populate (Val : DBK_Message; Target : in out JSON_Value);

   function Get (Val : GNATCOLL.JSON.JSON_Value) return DBK_Message;
   
   function Get (Val   : JSON_Value;
                 Field : UTF8_String) return DBK_Message;
   
   procedure Set_Field  (Val        : JSON_Value;
                         Field_Name : UTF8_String;
                         Field      : DBK_Message);
   
   procedure Map (Val : JSON_Value;
                  To  : in out DBK_Message);   

   procedure Map_Field (Name : UTF8_String; Value : JSON_Value; To : in out DBK_Message);

end NMEA.Messages.DBK.JSON;