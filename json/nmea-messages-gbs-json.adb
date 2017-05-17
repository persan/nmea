with NMEA.Messages.JSON; pragma Warnings (Off, NMEA.Messages.JSON);
with NMEA.JSON; pragma Warnings (Off, NMEA.JSON);

package body NMEA.Messages.GBS.JSON is
   use NMEA.Messages.JSON;
   use NMEA.JSON;
   

   ----------------------------------------------------
   --  GBS_Message
   ----------------------------------------------------
   procedure Populate (Val : GBS_Message; Target : in out JSON_Value) is
   begin
      Set_Field (Target, "Time", Create (Val.Time));
      Set_Field (Target, "Expected_Error_In_Latitude", Create (Val.Expected_Error_In_Latitude));
      Set_Field (Target, "Expected_Error_In_Longitude", Create (Val.Expected_Error_In_Longitude));
      Set_Field (Target, "Expected_Error_In_Altitude", Create (Val.Expected_Error_In_Altitude));
      Set_Field (Target, "PRN_Of_Most_Likely_Failed_Satellite", Create (Val.PRN_Of_Most_Likely_Failed_Satellite));
      Set_Field (Target, "Probability_Of_Missed_Detection", Create (Val.Probability_Of_Missed_Detection));
      Set_Field (Target, "Estimate_Of_Bias", Create (Val.Estimate_Of_Bias));
      Set_Field (Target, "Standard_Deviation_Of_Bias_Estimate", Create (Val.Standard_Deviation_Of_Bias_Estimate));
   end;

   ------------
   -- Create --
   ------------

   function Create (Val : GBS_Message) return JSON_Value is
   begin
      return Ret : JSON_Value := Create_Object do
         Populate (Val, Ret);
      end return;
   end Create;

   ---------
   -- Get --
   ---------

   function Get (Val : GNATCOLL.JSON.JSON_Value) return GBS_Message is
   begin
      return Ret : GBS_Message do
         Map (Val, Ret);
      end return;
   end Get;

   ---------
   -- Get --
   ---------

   function Get
     (Val   : JSON_Value;
      Field : UTF8_String)
      return GBS_Message
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
      Field      : GBS_Message)
   is      
   begin
      Set_Field (Val, Field_Name, Create (Field));
   end Set_Field;

   ---------------
   -- Map_Field --
   ---------------
   procedure Map_Field (Name : UTF8_String; Value : JSON_Value; To : in out GBS_Message) is
   begin
      if Name = "Time" then
         To.Time := Get (Value);
      elsif Name = "Expected_Error_In_Latitude" then
         To.Expected_Error_In_Latitude := Get (Value);
      elsif Name = "Expected_Error_In_Longitude" then
         To.Expected_Error_In_Longitude := Get (Value);
      elsif Name = "Expected_Error_In_Altitude" then
         To.Expected_Error_In_Altitude := Get (Value);
      elsif Name = "PRN_Of_Most_Likely_Failed_Satellite" then
         To.PRN_Of_Most_Likely_Failed_Satellite := Get (Value);
      elsif Name = "Probability_Of_Missed_Detection" then
         To.Probability_Of_Missed_Detection := Get (Value);
      elsif Name = "Estimate_Of_Bias" then
         To.Estimate_Of_Bias := Get (Value);
      elsif Name = "Standard_Deviation_Of_Bias_Estimate" then
         To.Standard_Deviation_Of_Bias_Estimate := Get (Value);
      else  
         null;
      end if;
   end;
   
   ---------
   -- Map --
   ---------
   procedure Map
     (Val : JSON_Value;
      To  : in out GBS_Message)
   is
      procedure Process (Name : UTF8_String; Value : JSON_Value);
      procedure Process (Name : UTF8_String; Value : JSON_Value) is
      begin
         Map_Field (Name, Value, To);
      end;
   begin
      Map_JSON_Object (Val, Process'Access);
   end Map;

end NMEA.Messages.GBS.JSON;