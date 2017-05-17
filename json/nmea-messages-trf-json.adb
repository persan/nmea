with NMEA.Messages.JSON; pragma Warnings (Off, NMEA.Messages.JSON);
with NMEA.JSON; pragma Warnings (Off, NMEA.JSON);

package body NMEA.Messages.TRF.JSON is
   use NMEA.Messages.JSON;
   use NMEA.JSON;
   

   ----------------------------------------------------
   --  TRF_Message
   ----------------------------------------------------
   procedure Populate (Val : TRF_Message; Target : in out JSON_Value) is
   begin
      Set_Field (Target, "Time", Create (Val.Time));
      Set_Field (Target, "Date", Create (Val.Date));
      Set_Field (Target, "Latitude", Create (Val.Latitude));
      Set_Field (Target, "Longitude", Create (Val.Longitude));
      Set_Field (Target, "Elevation_Angle", Create (Val.Elevation_Angle));
      Set_Field (Target, "Number_Of_Iterations", Create (Val.Number_Of_Iterations));
      Set_Field (Target, "Number_Of_Doppler_Intervals", Create (Val.Number_Of_Doppler_Intervals));
      Set_Field (Target, "Update_Distance", Create (Val.Update_Distance));
      Set_Field (Target, "Satellite_ID", Create (Val.Satellite_ID));
      Set_Field (Target, "Data_Validity", Create (Val.Data_Validity));
   end;

   ------------
   -- Create --
   ------------

   function Create (Val : TRF_Message) return JSON_Value is
   begin
      return Ret : JSON_Value := Create_Object do
         Populate (Val, Ret);
      end return;
   end Create;

   ---------
   -- Get --
   ---------

   function Get (Val : GNATCOLL.JSON.JSON_Value) return TRF_Message is
   begin
      return Ret : TRF_Message do
         Map (Val, Ret);
      end return;
   end Get;

   ---------
   -- Get --
   ---------

   function Get
     (Val   : JSON_Value;
      Field : UTF8_String)
      return TRF_Message
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
      Field      : TRF_Message)
   is      
   begin
      Set_Field (Val, Field_Name, Create (Field));
   end Set_Field;

   ---------------
   -- Map_Field --
   ---------------
   procedure Map_Field (Name : UTF8_String; Value : JSON_Value; To : in out TRF_Message) is
   begin
      if Name = "Time" then
         To.Time := Get (Value);
      elsif Name = "Date" then
         To.Date := Get (Value);
      elsif Name = "Latitude" then
         To.Latitude := Get (Value);
      elsif Name = "Longitude" then
         To.Longitude := Get (Value);
      elsif Name = "Elevation_Angle" then
         To.Elevation_Angle := Get (Value);
      elsif Name = "Number_Of_Iterations" then
         To.Number_Of_Iterations := Get (Value);
      elsif Name = "Number_Of_Doppler_Intervals" then
         To.Number_Of_Doppler_Intervals := Get (Value);
      elsif Name = "Update_Distance" then
         To.Update_Distance := Get (Value);
      elsif Name = "Satellite_ID" then
         To.Satellite_ID := Get (Value);
      elsif Name = "Data_Validity" then
         To.Data_Validity := Get (Value);
      else  
         null;
      end if;
   end;
   
   ---------
   -- Map --
   ---------
   procedure Map
     (Val : JSON_Value;
      To  : in out TRF_Message)
   is
      procedure Process (Name : UTF8_String; Value : JSON_Value);
      procedure Process (Name : UTF8_String; Value : JSON_Value) is
      begin
         Map_Field (Name, Value, To);
      end;
   begin
      Map_JSON_Object (Val, Process'Access);
   end Map;

end NMEA.Messages.TRF.JSON;