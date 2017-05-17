with GNATCOLL.JSON;

package NMEA.Messages.OSD.JSON is
   use GNATCOLL.JSON;

   ----------------------------------------------------
   --  OSD_Message
   ---------------------------------------------------
   
   function Create (Val : OSD_Message) return JSON_Value;
   
   procedure Populate (Val : OSD_Message; Target : in out JSON_Value);

   function Get (Val : GNATCOLL.JSON.JSON_Value) return OSD_Message;
   
   function Get (Val   : JSON_Value;
                 Field : UTF8_String) return OSD_Message;
   
   procedure Set_Field  (Val        : JSON_Value;
                         Field_Name : UTF8_String;
                         Field      : OSD_Message);
   
   procedure Map (Val : JSON_Value;
                  To  : in out OSD_Message);   

   procedure Map_Field (Name : UTF8_String; Value : JSON_Value; To : in out OSD_Message);

end NMEA.Messages.OSD.JSON;