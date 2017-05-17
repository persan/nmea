with NMEA.Messages.JSON; pragma Warnings (Off, NMEA.Messages.JSON);
with NMEA.JSON; pragma Warnings (Off, NMEA.JSON);

package body NMEA.Messages.GGA.JSON is
   use NMEA.Messages.JSON;
   use NMEA.JSON;
   

   ----------------------------------------------------
   --  GGA_Message
   ----------------------------------------------------
   procedure Populate (Val : GGA_Message; Target : in out JSON_Value) is
   begin
      Set_Field (Target, "Time", Create (Val.Time));
      Set_Field (Target, "Latitude", Create (Val.Latitude));
      Set_Field (Target, "Longitude", Create (Val.Longitude));
      Set_Field (Target, "Fix_Quality", Create (Val.Fix_Quality));
      Set_Field (Target, "Number_Of_Satelites", Create (Val.Number_Of_Satelites));
      Set_Field (Target, "Horizontal_Dilution_Of_Precision", Create (Val.Horizontal_Dilution_Of_Precision));
      Set_Field (Target, "Altitude", Create (Val.Altitude));
      Set_Field (Target, "Height_Of_Geoid_Above_WGS84_Ellipsoid", Create (Val.Height_Of_Geoid_Above_WGS84_Ellipsoid));
      Set_Field (Target, "Time_Since_Last_DGPS_Update", Create (Val.Time_Since_Last_DGPS_Update));
      Set_Field (Target, "DGPS_Reference_Station_Id", Create (Val.DGPS_Reference_Station_Id));
   end;

   ------------
   -- Create --
   ------------

   function Create (Val : GGA_Message) return JSON_Value is
   begin
      return Ret : JSON_Value := Create_Object do
         Populate (Val, Ret);
      end return;
   end Create;

   ---------
   -- Get --
   ---------

   function Get (Val : GNATCOLL.JSON.JSON_Value) return GGA_Message is
   begin
      return Ret : GGA_Message do
         Map (Val, Ret);
      end return;
   end Get;

   ---------
   -- Get --
   ---------

   function Get
     (Val   : JSON_Value;
      Field : UTF8_String)
      return GGA_Message
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
      Field      : GGA_Message)
   is      
   begin
      Set_Field (Val, Field_Name, Create (Field));
   end Set_Field;

   ---------------
   -- Map_Field --
   ---------------
   procedure Map_Field (Name : UTF8_String; Value : JSON_Value; To : in out GGA_Message) is
   begin
      if Name = "Time" then
         To.Time := Get (Value);
      elsif Name = "Latitude" then
         To.Latitude := Get (Value);
      elsif Name = "Longitude" then
         To.Longitude := Get (Value);
      elsif Name = "Fix_Quality" then
         To.Fix_Quality := Get (Value);
      elsif Name = "Number_Of_Satelites" then
         To.Number_Of_Satelites := Get (Value);
      elsif Name = "Horizontal_Dilution_Of_Precision" then
         To.Horizontal_Dilution_Of_Precision := Get (Value);
      elsif Name = "Altitude" then
         To.Altitude := Get (Value);
      elsif Name = "Height_Of_Geoid_Above_WGS84_Ellipsoid" then
         To.Height_Of_Geoid_Above_WGS84_Ellipsoid := Get (Value);
      elsif Name = "Time_Since_Last_DGPS_Update" then
         To.Time_Since_Last_DGPS_Update := Get (Value);
      elsif Name = "DGPS_Reference_Station_Id" then
         To.DGPS_Reference_Station_Id := Get (Value);
      else  
         null;
      end if;
   end;
   
   ---------
   -- Map --
   ---------
   procedure Map
     (Val : JSON_Value;
      To  : in out GGA_Message)
   is
      procedure Process (Name : UTF8_String; Value : JSON_Value);
      procedure Process (Name : UTF8_String; Value : JSON_Value) is
      begin
         Map_Field (Name, Value, To);
      end;
   begin
      Map_JSON_Object (Val, Process'Access);
   end Map;

end NMEA.Messages.GGA.JSON;