with NMEA.Messages.JSON; pragma Warnings (Off, NMEA.Messages.JSON);
with NMEA.JSON; pragma Warnings (Off, NMEA.JSON);

package body NMEA.Messages.VTG.JSON is
   use NMEA.Messages.JSON;
   use NMEA.JSON;
   

   ----------------------------------------------------
   --  VTG_Message
   ----------------------------------------------------
   procedure Populate (Val : VTG_Message; Target : in out JSON_Value) is
   begin
      Set_Field (Target, "Track_Degrees", Create (Val.Track_Degrees));
      Set_Field (Target, "T_True", Create (Val.T_True));
      Set_Field (Target, "Track_Degrees8", Create (Val.Track_Degrees8));
      Set_Field (Target, "M_Magnetic", Create (Val.M_Magnetic));
      Set_Field (Target, "Speed_Knots", Create (Val.Speed_Knots));
      Set_Field (Target, "N_Knots", Create (Val.N_Knots));
      Set_Field (Target, "Speed_Kilometers_Per_Hour", Create (Val.Speed_Kilometers_Per_Hour));
      Set_Field (Target, "K_Kilometers_Per_Hour", Create (Val.K_Kilometers_Per_Hour));
      Set_Field (Target, "FAA_Mode_Indicator_NMEA_2_3_And_Later", Create (Val.FAA_Mode_Indicator_NMEA_2_3_And_Later));
   end;

   ------------
   -- Create --
   ------------

   function Create (Val : VTG_Message) return JSON_Value is
   begin
      return Ret : JSON_Value := Create_Object do
         Populate (Val, Ret);
      end return;
   end Create;

   ---------
   -- Get --
   ---------

   function Get (Val : GNATCOLL.JSON.JSON_Value) return VTG_Message is
   begin
      return Ret : VTG_Message do
         Map (Val, Ret);
      end return;
   end Get;

   ---------
   -- Get --
   ---------

   function Get
     (Val   : JSON_Value;
      Field : UTF8_String)
      return VTG_Message
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
      Field      : VTG_Message)
   is      
   begin
      Set_Field (Val, Field_Name, Create (Field));
   end Set_Field;

   ---------------
   -- Map_Field --
   ---------------
   procedure Map_Field (Name : UTF8_String; Value : JSON_Value; To : in out VTG_Message) is
   begin
      if Name = "Track_Degrees" then
         To.Track_Degrees := Get (Value);
      elsif Name = "T_True" then
         To.T_True := Get (Value);
      elsif Name = "Track_Degrees8" then
         To.Track_Degrees8 := Get (Value);
      elsif Name = "M_Magnetic" then
         To.M_Magnetic := Get (Value);
      elsif Name = "Speed_Knots" then
         To.Speed_Knots := Get (Value);
      elsif Name = "N_Knots" then
         To.N_Knots := Get (Value);
      elsif Name = "Speed_Kilometers_Per_Hour" then
         To.Speed_Kilometers_Per_Hour := Get (Value);
      elsif Name = "K_Kilometers_Per_Hour" then
         To.K_Kilometers_Per_Hour := Get (Value);
      elsif Name = "FAA_Mode_Indicator_NMEA_2_3_And_Later" then
         To.FAA_Mode_Indicator_NMEA_2_3_And_Later := Get (Value);
      else  
         null;
      end if;
   end;
   
   ---------
   -- Map --
   ---------
   procedure Map
     (Val : JSON_Value;
      To  : in out VTG_Message)
   is
      procedure Process (Name : UTF8_String; Value : JSON_Value);
      procedure Process (Name : UTF8_String; Value : JSON_Value) is
      begin
         Map_Field (Name, Value, To);
      end;
   begin
      Map_JSON_Object (Val, Process'Access);
   end Map;

end NMEA.Messages.VTG.JSON;