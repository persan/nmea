with GNATCOLL.JSON;

package NMEA.Messages.HDT.JSON is
   use GNATCOLL.JSON;

   ----------------------------------------------------
   --  HDT_Message
   ---------------------------------------------------
   
   function Create (Val : HDT_Message) return JSON_Value;
   
   procedure Populate (Val : HDT_Message; Target : in out JSON_Value);

   function Get (Val : GNATCOLL.JSON.JSON_Value) return HDT_Message;
   
   function Get (Val   : JSON_Value;
                 Field : UTF8_String) return HDT_Message;
   
   procedure Set_Field  (Val        : JSON_Value;
                         Field_Name : UTF8_String;
                         Field      : HDT_Message);
   
   procedure Map (Val : JSON_Value;
                  To  : in out HDT_Message);   

   procedure Map_Field (Name : UTF8_String; Value : JSON_Value; To : in out HDT_Message);

end NMEA.Messages.HDT.JSON;