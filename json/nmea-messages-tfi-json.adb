with NMEA.Messages.JSON; pragma Warnings (Off, NMEA.Messages.JSON);
with NMEA.JSON; pragma Warnings (Off, NMEA.JSON);

package body NMEA.Messages.TFI.JSON is
   use NMEA.Messages.JSON;
   use NMEA.JSON;
   

   ----------------------------------------------------
   --  TFI_Message
   ----------------------------------------------------
   procedure Populate (Val : TFI_Message; Target : in out JSON_Value) is
   begin
      Set_Field (Target, "Catch_sensor_1", Create (Val.Catch_sensor_1));
      Set_Field (Target, "Catch_sensor_2", Create (Val.Catch_sensor_2));
      Set_Field (Target, "Catch_sensor_3", Create (Val.Catch_sensor_3));
   end;

   ------------
   -- Create --
   ------------

   function Create (Val : TFI_Message) return JSON_Value is
   begin
      return Ret : JSON_Value := Create_Object do
         Populate (Val, Ret);
      end return;
   end Create;

   ---------
   -- Get --
   ---------

   function Get (Val : GNATCOLL.JSON.JSON_Value) return TFI_Message is
   begin
      return Ret : TFI_Message do
         Map (Val, Ret);
      end return;
   end Get;

   ---------
   -- Get --
   ---------

   function Get
     (Val   : JSON_Value;
      Field : UTF8_String)
      return TFI_Message
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
      Field      : TFI_Message)
   is      
   begin
      Set_Field (Val, Field_Name, Create (Field));
   end Set_Field;

   ---------------
   -- Map_Field --
   ---------------
   procedure Map_Field (Name : UTF8_String; Value : JSON_Value; To : in out TFI_Message) is
   begin
      if Name = "Catch_sensor_1" then
         To.Catch_sensor_1 := Get (Value);
      elsif Name = "Catch_sensor_2" then
         To.Catch_sensor_2 := Get (Value);
      elsif Name = "Catch_sensor_3" then
         To.Catch_sensor_3 := Get (Value);
      else  
         null;
      end if;
   end;
   
   ---------
   -- Map --
   ---------
   procedure Map
     (Val : JSON_Value;
      To  : in out TFI_Message)
   is
      procedure Process (Name : UTF8_String; Value : JSON_Value);
      procedure Process (Name : UTF8_String; Value : JSON_Value) is
      begin
         Map_Field (Name, Value, To);
      end;
   begin
      Map_JSON_Object (Val, Process'Access);
   end Map;

end NMEA.Messages.TFI.JSON;