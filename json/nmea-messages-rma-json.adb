with NMEA.Messages.JSON; pragma Warnings (Off, NMEA.Messages.JSON);
with NMEA.JSON; pragma Warnings (Off, NMEA.JSON);

package body NMEA.Messages.RMA.JSON is
   use NMEA.Messages.JSON;
   use NMEA.JSON;
   

   ----------------------------------------------------
   --  RMA_Message
   ----------------------------------------------------
   procedure Populate (Val : RMA_Message; Target : in out JSON_Value) is
   begin
      Set_Field (Target, "Blink_Warning", Create (Val.Blink_Warning));
      Set_Field (Target, "Latitude", Create (Val.Latitude));
      Set_Field (Target, "N_or_S", Create (Val.N_or_S));
      Set_Field (Target, "Longitude", Create (Val.Longitude));
      Set_Field (Target, "E_or_W", Create (Val.E_or_W));
      Set_Field (Target, "Time_Difference_A_uS", Create (Val.Time_Difference_A_uS));
      Set_Field (Target, "Time_Difference_B_uS", Create (Val.Time_Difference_B_uS));
      Set_Field (Target, "Speed_Over_Ground_Knots", Create (Val.Speed_Over_Ground_Knots));
      Set_Field (Target, "Track_Made_Good_degrees_true", Create (Val.Track_Made_Good_degrees_true));
      Set_Field (Target, "Magnetic_Variation_degrees", Create (Val.Magnetic_Variation_degrees));
      Set_Field (Target, "E_or_W16", Create (Val.E_or_W16));
   end;

   ------------
   -- Create --
   ------------

   function Create (Val : RMA_Message) return JSON_Value is
   begin
      return Ret : JSON_Value := Create_Object do
         Populate (Val, Ret);
      end return;
   end Create;

   ---------
   -- Get --
   ---------

   function Get (Val : GNATCOLL.JSON.JSON_Value) return RMA_Message is
   begin
      return Ret : RMA_Message do
         Map (Val, Ret);
      end return;
   end Get;

   ---------
   -- Get --
   ---------

   function Get
     (Val   : JSON_Value;
      Field : UTF8_String)
      return RMA_Message
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
      Field      : RMA_Message)
   is      
   begin
      Set_Field (Val, Field_Name, Create (Field));
   end Set_Field;

   ---------------
   -- Map_Field --
   ---------------
   procedure Map_Field (Name : UTF8_String; Value : JSON_Value; To : in out RMA_Message) is
   begin
      if Name = "Blink_Warning" then
         To.Blink_Warning := Get (Value);
      elsif Name = "Latitude" then
         To.Latitude := Get (Value);
      elsif Name = "N_or_S" then
         To.N_or_S := Get (Value);
      elsif Name = "Longitude" then
         To.Longitude := Get (Value);
      elsif Name = "E_or_W" then
         To.E_or_W := Get (Value);
      elsif Name = "Time_Difference_A_uS" then
         To.Time_Difference_A_uS := Get (Value);
      elsif Name = "Time_Difference_B_uS" then
         To.Time_Difference_B_uS := Get (Value);
      elsif Name = "Speed_Over_Ground_Knots" then
         To.Speed_Over_Ground_Knots := Get (Value);
      elsif Name = "Track_Made_Good_degrees_true" then
         To.Track_Made_Good_degrees_true := Get (Value);
      elsif Name = "Magnetic_Variation_degrees" then
         To.Magnetic_Variation_degrees := Get (Value);
      elsif Name = "E_or_W16" then
         To.E_or_W16 := Get (Value);
      else  
         null;
      end if;
   end;
   
   ---------
   -- Map --
   ---------
   procedure Map
     (Val : JSON_Value;
      To  : in out RMA_Message)
   is
      procedure Process (Name : UTF8_String; Value : JSON_Value);
      procedure Process (Name : UTF8_String; Value : JSON_Value) is
      begin
         Map_Field (Name, Value, To);
      end;
   begin
      Map_JSON_Object (Val, Process'Access);
   end Map;

end NMEA.Messages.RMA.JSON;