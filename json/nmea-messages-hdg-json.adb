with NMEA.Messages.JSON; pragma Warnings (Off, NMEA.Messages.JSON);
with NMEA.JSON; pragma Warnings (Off, NMEA.JSON);

package body NMEA.Messages.HDG.JSON is
   use NMEA.Messages.JSON;
   use NMEA.JSON;
   

   ----------------------------------------------------
   --  HDG_Message
   ----------------------------------------------------
   procedure Populate (Val : HDG_Message; Target : in out JSON_Value) is
   begin
      Set_Field (Target, "Magnetic_Sensor_heading_in_degrees", Create (Val.Magnetic_Sensor_heading_in_degrees));
      Set_Field (Target, "Magnetic_Deviation_degrees", Create (Val.Magnetic_Deviation_degrees));
      Set_Field (Target, "Magnetic_Deviation_direction_E_Easterly_W_Westerly", Create (Val.Magnetic_Deviation_direction_E_Easterly_W_Westerly));
      Set_Field (Target, "Magnetic_Variation_degrees", Create (Val.Magnetic_Variation_degrees));
      Set_Field (Target, "Magnetic_Variation_direction_E_Easterly_W_Westerly", Create (Val.Magnetic_Variation_direction_E_Easterly_W_Westerly));
   end;

   ------------
   -- Create --
   ------------

   function Create (Val : HDG_Message) return JSON_Value is
   begin
      return Ret : JSON_Value := Create_Object do
         Populate (Val, Ret);
      end return;
   end Create;

   ---------
   -- Get --
   ---------

   function Get (Val : GNATCOLL.JSON.JSON_Value) return HDG_Message is
   begin
      return Ret : HDG_Message do
         Map (Val, Ret);
      end return;
   end Get;

   ---------
   -- Get --
   ---------

   function Get
     (Val   : JSON_Value;
      Field : UTF8_String)
      return HDG_Message
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
      Field      : HDG_Message)
   is      
   begin
      Set_Field (Val, Field_Name, Create (Field));
   end Set_Field;

   ---------------
   -- Map_Field --
   ---------------
   procedure Map_Field (Name : UTF8_String; Value : JSON_Value; To : in out HDG_Message) is
   begin
      if Name = "Magnetic_Sensor_heading_in_degrees" then
         To.Magnetic_Sensor_heading_in_degrees := Get (Value);
      elsif Name = "Magnetic_Deviation_degrees" then
         To.Magnetic_Deviation_degrees := Get (Value);
      elsif Name = "Magnetic_Deviation_direction_E_Easterly_W_Westerly" then
         To.Magnetic_Deviation_direction_E_Easterly_W_Westerly := Get (Value);
      elsif Name = "Magnetic_Variation_degrees" then
         To.Magnetic_Variation_degrees := Get (Value);
      elsif Name = "Magnetic_Variation_direction_E_Easterly_W_Westerly" then
         To.Magnetic_Variation_direction_E_Easterly_W_Westerly := Get (Value);
      else  
         null;
      end if;
   end;
   
   ---------
   -- Map --
   ---------
   procedure Map
     (Val : JSON_Value;
      To  : in out HDG_Message)
   is
      procedure Process (Name : UTF8_String; Value : JSON_Value);
      procedure Process (Name : UTF8_String; Value : JSON_Value) is
      begin
         Map_Field (Name, Value, To);
      end;
   begin
      Map_JSON_Object (Val, Process'Access);
   end Map;

end NMEA.Messages.HDG.JSON;