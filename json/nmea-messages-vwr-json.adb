with NMEA.Messages.JSON; pragma Warnings (Off, NMEA.Messages.JSON);
with NMEA.JSON; pragma Warnings (Off, NMEA.JSON);

package body NMEA.Messages.VWR.JSON is
   use NMEA.Messages.JSON;
   use NMEA.JSON;
   

   ----------------------------------------------------
   --  VWR_Message
   ----------------------------------------------------
   procedure Populate (Val : VWR_Message; Target : in out JSON_Value) is
   begin
      Set_Field (Target, "Wind_Direction_Magnitude_In_Degrees", Create (Val.Wind_Direction_Magnitude_In_Degrees));
      Set_Field (Target, "Wind_Direction_Left_Right_Of_Bow", Create (Val.Wind_Direction_Left_Right_Of_Bow));
      Set_Field (Target, "Speed", Create (Val.Speed));
      Set_Field (Target, "N_Knots", Create (Val.N_Knots));
      Set_Field (Target, "Speed9", Create (Val.Speed9));
      Set_Field (Target, "M_Meters_Per_Second", Create (Val.M_Meters_Per_Second));
      Set_Field (Target, "Speed11", Create (Val.Speed11));
      Set_Field (Target, "K_Kilometers_Per_Hour", Create (Val.K_Kilometers_Per_Hour));
   end;

   ------------
   -- Create --
   ------------

   function Create (Val : VWR_Message) return JSON_Value is
   begin
      return Ret : JSON_Value := Create_Object do
         Populate (Val, Ret);
      end return;
   end Create;

   ---------
   -- Get --
   ---------

   function Get (Val : GNATCOLL.JSON.JSON_Value) return VWR_Message is
   begin
      return Ret : VWR_Message do
         Map (Val, Ret);
      end return;
   end Get;

   ---------
   -- Get --
   ---------

   function Get
     (Val   : JSON_Value;
      Field : UTF8_String)
      return VWR_Message
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
      Field      : VWR_Message)
   is      
   begin
      Set_Field (Val, Field_Name, Create (Field));
   end Set_Field;

   ---------------
   -- Map_Field --
   ---------------
   procedure Map_Field (Name : UTF8_String; Value : JSON_Value; To : in out VWR_Message) is
   begin
      if Name = "Wind_Direction_Magnitude_In_Degrees" then
         To.Wind_Direction_Magnitude_In_Degrees := Get (Value);
      elsif Name = "Wind_Direction_Left_Right_Of_Bow" then
         To.Wind_Direction_Left_Right_Of_Bow := Get (Value);
      elsif Name = "Speed" then
         To.Speed := Get (Value);
      elsif Name = "N_Knots" then
         To.N_Knots := Get (Value);
      elsif Name = "Speed9" then
         To.Speed9 := Get (Value);
      elsif Name = "M_Meters_Per_Second" then
         To.M_Meters_Per_Second := Get (Value);
      elsif Name = "Speed11" then
         To.Speed11 := Get (Value);
      elsif Name = "K_Kilometers_Per_Hour" then
         To.K_Kilometers_Per_Hour := Get (Value);
      else  
         null;
      end if;
   end;
   
   ---------
   -- Map --
   ---------
   procedure Map
     (Val : JSON_Value;
      To  : in out VWR_Message)
   is
      procedure Process (Name : UTF8_String; Value : JSON_Value);
      procedure Process (Name : UTF8_String; Value : JSON_Value) is
      begin
         Map_Field (Name, Value, To);
      end;
   begin
      Map_JSON_Object (Val, Process'Access);
   end Map;

end NMEA.Messages.VWR.JSON;