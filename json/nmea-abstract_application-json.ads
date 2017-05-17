with GNATCOLL.JSON;

package NMEA.Abstract_Application.JSON is
   use GNATCOLL.JSON;

   ----------------------------------------------------
   --  Application_Interface
   ---------------------------------------------------
   
   function Create (Val : Application_Interface) return JSON_Value;
   
   procedure Populate (Val : Application_Interface; Target : in out JSON_Value);

   function Get (Val : GNATCOLL.JSON.JSON_Value) return Application_Interface;
   
   function Get (Val   : JSON_Value;
                 Field : UTF8_String) return Application_Interface;
   
   procedure Set_Field  (Val        : JSON_Value;
                         Field_Name : UTF8_String;
                         Field      : Application_Interface);
   
   procedure Map (Val : JSON_Value;
                  To  : in out Application_Interface);   

   procedure Map_Field (Name : UTF8_String; Value : JSON_Value; To : in out Application_Interface);

end NMEA.Abstract_Application.JSON;