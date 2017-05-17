with GNATCOLL.JSON;

package NMEA.Messages.R00.JSON is
   use GNATCOLL.JSON;

   ----------------------------------------------------
   --  R00_Message
   ---------------------------------------------------
   
   function Create (Val : R00_Message) return JSON_Value;
   
   procedure Populate (Val : R00_Message; Target : in out JSON_Value);

   function Get (Val : GNATCOLL.JSON.JSON_Value) return R00_Message;
   
   function Get (Val   : JSON_Value;
                 Field : UTF8_String) return R00_Message;
   
   procedure Set_Field  (Val        : JSON_Value;
                         Field_Name : UTF8_String;
                         Field      : R00_Message);
   
   procedure Map (Val : JSON_Value;
                  To  : in out R00_Message);   

   procedure Map_Field (Name : UTF8_String; Value : JSON_Value; To : in out R00_Message);

end NMEA.Messages.R00.JSON;