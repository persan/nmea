with NMEA.Messages.JSON; pragma Warnings (Off, NMEA.Messages.JSON);
with NMEA.JSON; pragma Warnings (Off, NMEA.JSON);

package body NMEA.Messages.GTD.JSON is
   use NMEA.Messages.JSON;
   use NMEA.JSON;
   

   ----------------------------------------------------
   --  GTD_Message
   ----------------------------------------------------
   procedure Populate (Val : GTD_Message; Target : in out JSON_Value) is
   begin
      Set_Field (Target, "time_difference", Create (Val.time_difference));
      Set_Field (Target, "time_difference6", Create (Val.time_difference6));
      Set_Field (Target, "time_difference7", Create (Val.time_difference7));
      Set_Field (Target, "time_difference8", Create (Val.time_difference8));
      Set_Field (Target, "time_difference9", Create (Val.time_difference9));
   end;

   ------------
   -- Create --
   ------------

   function Create (Val : GTD_Message) return JSON_Value is
   begin
      return Ret : JSON_Value := Create_Object do
         Populate (Val, Ret);
      end return;
   end Create;

   ---------
   -- Get --
   ---------

   function Get (Val : GNATCOLL.JSON.JSON_Value) return GTD_Message is
   begin
      return Ret : GTD_Message do
         Map (Val, Ret);
      end return;
   end Get;

   ---------
   -- Get --
   ---------

   function Get
     (Val   : JSON_Value;
      Field : UTF8_String)
      return GTD_Message
   is
   begin
      return Get (JSON_Value'(Get (Val, Field)));
   end Get;

   ---------------
   -- Set_Field --
   ---------------

   procedure Set_Field
     (Val        : JSON_Value;
      Field_Name : UTF8_String;
      Field      : GTD_Message)
   is      
   begin
      Set_Field (Val, Field_Name, Create (Field));
   end Set_Field;

   ---------------
   -- Map_Field --
   ---------------
   procedure Map_Field (Name : UTF8_String; Value : JSON_Value; To : in out GTD_Message) is
   begin
      if Name = "time_difference" then
         To.time_difference := Get (Value);
      elsif Name = "time_difference6" then
         To.time_difference6 := Get (Value);
      elsif Name = "time_difference7" then
         To.time_difference7 := Get (Value);
      elsif Name = "time_difference8" then
         To.time_difference8 := Get (Value);
      elsif Name = "time_difference9" then
         To.time_difference9 := Get (Value);
      else  
         null;
      end if;
   end;
   
   ---------
   -- Map --
   ---------
   procedure Map
     (Val : JSON_Value;
      To  : in out GTD_Message)
   is
      procedure Process (Name : UTF8_String; Value : JSON_Value);
      procedure Process (Name : UTF8_String; Value : JSON_Value) is
      begin
         Map_Field (Name, Value, To);
      end;
   begin
      Map_JSON_Object (Val, Process'Access);
   end Map;

end NMEA.Messages.GTD.JSON;