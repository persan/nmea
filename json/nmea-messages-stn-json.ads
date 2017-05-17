with GNATCOLL.JSON;

package NMEA.Messages.STN.JSON is
   use GNATCOLL.JSON;

   ----------------------------------------------------
   --  STN_Message
   ---------------------------------------------------
   
   function Create (Val : STN_Message) return JSON_Value;
   
   procedure Populate (Val : STN_Message; Target : in out JSON_Value);

   function Get (Val : GNATCOLL.JSON.JSON_Value) return STN_Message;
   
   function Get (Val   : JSON_Value;
                 Field : UTF8_String) return STN_Message;
   
   procedure Set_Field  (Val        : JSON_Value;
                         Field_Name : UTF8_String;
                         Field      : STN_Message);
   
   procedure Map (Val : JSON_Value;
                  To  : in out STN_Message);   

   procedure Map_Field (Name : UTF8_String; Value : JSON_Value; To : in out STN_Message);

end NMEA.Messages.STN.JSON;