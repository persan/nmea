with GNATCOLL.JSON;

package NMEA.Messages.WCV.JSON is
   use GNATCOLL.JSON;

   ----------------------------------------------------
   --  WCV_Message
   ---------------------------------------------------
   
   function Create (Val : WCV_Message) return JSON_Value;
   
   procedure Populate (Val : WCV_Message; Target : in out JSON_Value);

   function Get (Val : GNATCOLL.JSON.JSON_Value) return WCV_Message;
   
   function Get (Val   : JSON_Value;
                 Field : UTF8_String) return WCV_Message;
   
   procedure Set_Field  (Val        : JSON_Value;
                         Field_Name : UTF8_String;
                         Field      : WCV_Message);
   
   procedure Map (Val : JSON_Value;
                  To  : in out WCV_Message);   

   procedure Map_Field (Name : UTF8_String; Value : JSON_Value; To : in out WCV_Message);

end NMEA.Messages.WCV.JSON;