with GNATCOLL.JSON;

package NMEA.Messages.GGA.JSON is
   use GNATCOLL.JSON;

   ----------------------------------------------------
   --  GGA_Message
   ---------------------------------------------------
   
   function Create (Val : GGA_Message) return JSON_Value;
   
   procedure Populate (Val : GGA_Message; Target : in out JSON_Value);

   function Get (Val : GNATCOLL.JSON.JSON_Value) return GGA_Message;
   
   function Get (Val   : JSON_Value;
                 Field : UTF8_String) return GGA_Message;
   
   procedure Set_Field  (Val        : JSON_Value;
                         Field_Name : UTF8_String;
                         Field      : GGA_Message);
   
   procedure Map (Val : JSON_Value;
                  To  : in out GGA_Message);   

   procedure Map_Field (Name : UTF8_String; Value : JSON_Value; To : in out GGA_Message);

end NMEA.Messages.GGA.JSON;