with GNATCOLL.JSON;

package NMEA.Links.JSON is
   use GNATCOLL.JSON;

   ----------------------------------------------------
   --  Nmea_Stream
   ---------------------------------------------------
   
   function Create (Val : Nmea_Stream) return JSON_Value;
   
   procedure Populate (Val : Nmea_Stream; Target : in out JSON_Value);

   function Get (Val : GNATCOLL.JSON.JSON_Value) return Nmea_Stream;
   
   function Get (Val   : JSON_Value;
                 Field : UTF8_String) return Nmea_Stream;
   
   procedure Set_Field  (Val        : JSON_Value;
                         Field_Name : UTF8_String;
                         Field      : Nmea_Stream);
   
   procedure Map (Val : JSON_Value;
                  To  : in out Nmea_Stream);   

   procedure Map_Field (Name : UTF8_String; Value : JSON_Value; To : in out Nmea_Stream);

   ----------------------------------------------------
   --  Nmea_Frame
   ---------------------------------------------------
   
   function Create (Val : Nmea_Frame) return JSON_Value;
   
   procedure Populate (Val : Nmea_Frame; Target : in out JSON_Value);

   function Get (Val : GNATCOLL.JSON.JSON_Value) return Nmea_Frame;
   
   function Get (Val   : JSON_Value;
                 Field : UTF8_String) return Nmea_Frame;
   
   procedure Set_Field  (Val        : JSON_Value;
                         Field_Name : UTF8_String;
                         Field      : Nmea_Frame);
   
   procedure Map (Val : JSON_Value;
                  To  : in out Nmea_Frame);   

   procedure Map_Field (Name : UTF8_String; Value : JSON_Value; To : in out Nmea_Frame);

end NMEA.Links.JSON;