with GNATCOLL.JSON;

package NMEA.Messages.FSI.JSON is
   use GNATCOLL.JSON;

   ----------------------------------------------------
   --  FSI_Message
   ---------------------------------------------------
   
   function Create (Val : FSI_Message) return JSON_Value;
   
   procedure Populate (Val : FSI_Message; Target : in out JSON_Value);

   function Get (Val : GNATCOLL.JSON.JSON_Value) return FSI_Message;
   
   function Get (Val   : JSON_Value;
                 Field : UTF8_String) return FSI_Message;
   
   procedure Set_Field  (Val        : JSON_Value;
                         Field_Name : UTF8_String;
                         Field      : FSI_Message);
   
   procedure Map (Val : JSON_Value;
                  To  : in out FSI_Message);   

   procedure Map_Field (Name : UTF8_String; Value : JSON_Value; To : in out FSI_Message);

end NMEA.Messages.FSI.JSON;