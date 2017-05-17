with GNATCOLL.JSON;

package NMEA.Messages.ITS.JSON is
   use GNATCOLL.JSON;

   ----------------------------------------------------
   --  ITS_Message
   ---------------------------------------------------
   
   function Create (Val : ITS_Message) return JSON_Value;
   
   procedure Populate (Val : ITS_Message; Target : in out JSON_Value);

   function Get (Val : GNATCOLL.JSON.JSON_Value) return ITS_Message;
   
   function Get (Val   : JSON_Value;
                 Field : UTF8_String) return ITS_Message;
   
   procedure Set_Field  (Val        : JSON_Value;
                         Field_Name : UTF8_String;
                         Field      : ITS_Message);
   
   procedure Map (Val : JSON_Value;
                  To  : in out ITS_Message);   

   procedure Map_Field (Name : UTF8_String; Value : JSON_Value; To : in out ITS_Message);

end NMEA.Messages.ITS.JSON;