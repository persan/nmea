with NMEA.Messages.JSON; pragma Warnings (Off, NMEA.Messages.JSON);
with NMEA.JSON; pragma Warnings (Off, NMEA.JSON);

package body NMEA.Messages.TPT.JSON is
   use NMEA.Messages.JSON;
   use NMEA.JSON;
   

   ----------------------------------------------------
   --  TPT_Message
   ----------------------------------------------------
   procedure Populate (Val : TPT_Message; Target : in out JSON_Value) is
   begin
      Set_Field (Target, "Horizontal_Range_Relative_To_Target", Create (Val.Horizontal_Range_Relative_To_Target));
      Set_Field (Target, "Meters_0_4000", Create (Val.Meters_0_4000));
      Set_Field (Target, "True_Bearing_To_Taget", Create (Val.True_Bearing_To_Taget));
      Set_Field (Target, "Separator", Create (Val.Separator));
      Set_Field (Target, "Depth_Of_Trawl_Below_The_Surface", Create (Val.Depth_Of_Trawl_Below_The_Surface));
      Set_Field (Target, "Meters_0_2000", Create (Val.Meters_0_2000));
   end;

   ------------
   -- Create --
   ------------

   function Create (Val : TPT_Message) return JSON_Value is
   begin
      return Ret : JSON_Value := Create_Object do
         Populate (Val, Ret);
      end return;
   end Create;

   ---------
   -- Get --
   ---------

   function Get (Val : GNATCOLL.JSON.JSON_Value) return TPT_Message is
   begin
      return Ret : TPT_Message do
         Map (Val, Ret);
      end return;
   end Get;

   ---------
   -- Get --
   ---------

   function Get
     (Val   : JSON_Value;
      Field : UTF8_String)
      return TPT_Message
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
      Field      : TPT_Message)
   is      
   begin
      Set_Field (Val, Field_Name, Create (Field));
   end Set_Field;

   ---------------
   -- Map_Field --
   ---------------
   procedure Map_Field (Name : UTF8_String; Value : JSON_Value; To : in out TPT_Message) is
   begin
      if Name = "Horizontal_Range_Relative_To_Target" then
         To.Horizontal_Range_Relative_To_Target := Get (Value);
      elsif Name = "Meters_0_4000" then
         To.Meters_0_4000 := Get (Value);
      elsif Name = "True_Bearing_To_Taget" then
         To.True_Bearing_To_Taget := Get (Value);
      elsif Name = "Separator" then
         To.Separator := Get (Value);
      elsif Name = "Depth_Of_Trawl_Below_The_Surface" then
         To.Depth_Of_Trawl_Below_The_Surface := Get (Value);
      elsif Name = "Meters_0_2000" then
         To.Meters_0_2000 := Get (Value);
      else  
         null;
      end if;
   end;
   
   ---------
   -- Map --
   ---------
   procedure Map
     (Val : JSON_Value;
      To  : in out TPT_Message)
   is
      procedure Process (Name : UTF8_String; Value : JSON_Value);
      procedure Process (Name : UTF8_String; Value : JSON_Value) is
      begin
         Map_Field (Name, Value, To);
      end;
   begin
      Map_JSON_Object (Val, Process'Access);
   end Map;

end NMEA.Messages.TPT.JSON;