with NMEA.Messages.JSON; pragma Warnings (Off, NMEA.Messages.JSON);
with NMEA.JSON; pragma Warnings (Off, NMEA.JSON);

package body NMEA.Messages.BWC.JSON is
   use NMEA.Messages.JSON;
   use NMEA.JSON;


   ----------------------------------------------------
   --  BWC_Message
   ----------------------------------------------------
   procedure Populate (Val : BWC_Message; Target : in out JSON_Value) is
   begin
      Set_Field (Target, "UTCTime", Create (Val.UTCTime));
      Set_Field (Target, "Waypoint_Latitude", Create (Val.Waypoint_Latitude));
      Set_Field (Target, "N_North_S_South", Create (Val.N_North_S_South));
      Set_Field (Target, "Waypoint_Longitude", Create (Val.Waypoint_Longitude));
      Set_Field (Target, "E_East_W_West", Create (Val.E_East_W_West));
      Set_Field (Target, "Bearing_True", Create (Val.Bearing_True));
      Set_Field (Target, "T_True", Create (Val.T_True));
      Set_Field (Target, "Bearing_Magnetic", Create (Val.Bearing_Magnetic));
      Set_Field (Target, "M_Magnetic", Create (Val.M_Magnetic));
      Set_Field (Target, "Nautical_Miles", Create (Val.Nautical_Miles));
      Set_Field (Target, "N_Nautical_Miles", Create (Val.N_Nautical_Miles));
      Set_Field (Target, "Waypoint_ID", Create (Val.Waypoint_ID));
      Set_Field (Target, "FAA_Mode_Indicator", Create (Val.FAA_Mode_Indicator));
   end;

   ------------
   -- Create --
   ------------

   function Create (Val : BWC_Message) return JSON_Value is
   begin
      return Ret : JSON_Value := Create_Object do
         Populate (Val, Ret);
      end return;
   end Create;

   ---------
   -- Get --
   ---------

   function Get (Val : GNATCOLL.JSON.JSON_Value) return BWC_Message is
   begin
      return Ret : BWC_Message do
         Map (Val, Ret);
      end return;
   end Get;

   ---------
   -- Get --
   ---------

   function Get
     (Val   : JSON_Value;
      Field : UTF8_String)
      return BWC_Message
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
      Field      : BWC_Message)
   is
   begin
      Set_Field (Val, Field_Name, Create (Field));
   end Set_Field;

   ---------------
   -- Map_Field --
   ---------------
   procedure Map_Field (Name : UTF8_String; Value : JSON_Value; To : in out BWC_Message) is
   begin
      if Name = "UTCTime" then
         To.UTCTime := Get (Value);
      elsif Name = "Waypoint_Latitude" then
         To.Waypoint_Latitude := Get (Value);
      elsif Name = "N_North_S_South" then
         To.N_North_S_South := Get (Value);
      elsif Name = "Waypoint_Longitude" then
         To.Waypoint_Longitude := Get (Value);
      elsif Name = "E_East_W_West" then
         To.E_East_W_West := Get (Value);
      elsif Name = "Bearing_True" then
         To.Bearing_True := Get (Value);
      elsif Name = "T_True" then
         To.T_True := Get (Value);
      elsif Name = "Bearing_Magnetic" then
         To.Bearing_Magnetic := Get (Value);
      elsif Name = "M_Magnetic" then
         To.M_Magnetic := Get (Value);
      elsif Name = "Nautical_Miles" then
         To.Nautical_Miles := Get (Value);
      elsif Name = "N_Nautical_Miles" then
         To.N_Nautical_Miles := Get (Value);
      elsif Name = "Waypoint_ID" then
         To.Waypoint_ID := Get (Value);
      elsif Name = "FAA_Mode_Indicator" then
         To.FAA_Mode_Indicator := Get (Value);
      else
         Map_Field (Name, Value, Message (To));
      end if;
   end;

   ---------
   -- Map --
   ---------
   procedure Map
     (Val : JSON_Value;
      To  : in out BWC_Message)
   is
      procedure Process (Name : UTF8_String; Value : JSON_Value);
      procedure Process (Name : UTF8_String; Value : JSON_Value) is
      begin
         Map_Field (Name, Value, To);
      end;
   begin
      Map_JSON_Object (Val, Process'Access);
   end Map;

end NMEA.Messages.BWC.JSON;
