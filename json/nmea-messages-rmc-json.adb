with NMEA.Messages.JSON; pragma Warnings (Off, NMEA.Messages.JSON);
with NMEA.JSON; pragma Warnings (Off, NMEA.JSON);

package body NMEA.Messages.RMC.JSON is
   use NMEA.Messages.JSON;
   use NMEA.JSON;
   

   ----------------------------------------------------
   --  RMC_Message
   ----------------------------------------------------
   procedure Populate (Val : RMC_Message; Target : in out JSON_Value) is
   begin
      Set_Field (Target, "Fix", Create (Val.Fix));
      Set_Field (Target, "Validity", Create (Val.Validity));
      Set_Field (Target, "Lat", Create (Val.Lat));
      Set_Field (Target, "Long", Create (Val.Long));
      Set_Field (Target, "Speed_Over_Ground", Create (Val.Speed_Over_Ground));
      Set_Field (Target, "True_Course_Made_Good", Create (Val.True_Course_Made_Good));
      Set_Field (Target, "Date", Create (Val.Date));
      Set_Field (Target, "Magnetic_Variation", Create (Val.Magnetic_Variation));
   end;

   ------------
   -- Create --
   ------------

   function Create (Val : RMC_Message) return JSON_Value is
   begin
      return Ret : JSON_Value := Create_Object do
         Populate (Val, Ret);
      end return;
   end Create;

   ---------
   -- Get --
   ---------

   function Get (Val : GNATCOLL.JSON.JSON_Value) return RMC_Message is
   begin
      return Ret : RMC_Message do
         Map (Val, Ret);
      end return;
   end Get;

   ---------
   -- Get --
   ---------

   function Get
     (Val   : JSON_Value;
      Field : UTF8_String)
      return RMC_Message
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
      Field      : RMC_Message)
   is      
   begin
      Set_Field (Val, Field_Name, Create (Field));
   end Set_Field;

   ---------------
   -- Map_Field --
   ---------------
   procedure Map_Field (Name : UTF8_String; Value : JSON_Value; To : in out RMC_Message) is
   begin
      if Name = "Fix" then
         To.Fix := Get (Value);
      elsif Name = "Validity" then
         To.Validity := Get (Value);
      elsif Name = "Lat" then
         To.Lat := Get (Value);
      elsif Name = "Long" then
         To.Long := Get (Value);
      elsif Name = "Speed_Over_Ground" then
         To.Speed_Over_Ground := Get (Value);
      elsif Name = "True_Course_Made_Good" then
         To.True_Course_Made_Good := Get (Value);
      elsif Name = "Date" then
         To.Date := Get (Value);
      elsif Name = "Magnetic_Variation" then
         To.Magnetic_Variation := Get (Value);
      else  
         null;
      end if;
   end;
   
   ---------
   -- Map --
   ---------
   procedure Map
     (Val : JSON_Value;
      To  : in out RMC_Message)
   is
      procedure Process (Name : UTF8_String; Value : JSON_Value);
      procedure Process (Name : UTF8_String; Value : JSON_Value) is
      begin
         Map_Field (Name, Value, To);
      end;
   begin
      Map_JSON_Object (Val, Process'Access);
   end Map;

end NMEA.Messages.RMC.JSON;