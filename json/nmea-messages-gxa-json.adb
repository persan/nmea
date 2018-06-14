with NMEA.Messages.JSON; pragma Warnings (Off, NMEA.Messages.JSON);
with NMEA.JSON; pragma Warnings (Off, NMEA.JSON);

package body NMEA.Messages.GXA.JSON is
   use NMEA.Messages.JSON;
   use NMEA.JSON;


   ----------------------------------------------------
   --  GXA_Message
   ----------------------------------------------------
   procedure Populate (Val : GXA_Message; Target : in out JSON_Value) is
   begin
      Set_Field (Target, "UTC_of_position_fix", Create (Val.UTC_of_position_fix));
      Set_Field (Target, "Latitude", Create (Val.Latitude));
      Set_Field (Target, "East_or_West", Create (Val.East_or_West));
      Set_Field (Target, "Longitude", Create (Val.Longitude));
      Set_Field (Target, "North_or_South", Create (Val.North_or_South));
      Set_Field (Target, "Waypoint_ID", Create (Val.Waypoint_ID));
      Set_Field (Target, "Satelite_number", Create (Val.Satelite_number));
   end;

   ------------
   -- Create --
   ------------

   function Create (Val : GXA_Message) return JSON_Value is
   begin
      return Ret : JSON_Value := Create_Object do
         Populate (Val, Ret);
      end return;
   end Create;

   ---------
   -- Get --
   ---------

   function Get (Val : GNATCOLL.JSON.JSON_Value) return GXA_Message is
   begin
      return Ret : GXA_Message do
         Map (Val, Ret);
      end return;
   end Get;

   ---------
   -- Get --
   ---------

   function Get
     (Val   : JSON_Value;
      Field : UTF8_String)
      return GXA_Message
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
      Field      : GXA_Message)
   is
   begin
      Set_Field (Val, Field_Name, Create (Field));
   end Set_Field;

   ---------------
   -- Map_Field --
   ---------------
   procedure Map_Field (Name : UTF8_String; Value : JSON_Value; To : in out GXA_Message) is
   begin
      if Name = "UTC_of_position_fix" then
         To.UTC_of_position_fix := Get (Value);
      elsif Name = "Latitude" then
         To.Latitude := Get (Value);
      elsif Name = "East_or_West" then
         To.East_or_West := Get (Value);
      elsif Name = "Longitude" then
         To.Longitude := Get (Value);
      elsif Name = "North_or_South" then
         To.North_or_South := Get (Value);
      elsif Name = "Waypoint_ID" then
         To.Waypoint_ID := Get (Value);
      elsif Name = "Satelite_number" then
         To.Satelite_number := Get (Value);
      else
         Map_Field (Name, Value, Message (To));
      end if;
   end;

   ---------
   -- Map --
   ---------
   procedure Map
     (Val : JSON_Value;
      To  : in out GXA_Message)
   is
      procedure Process (Name : UTF8_String; Value : JSON_Value);
      procedure Process (Name : UTF8_String; Value : JSON_Value) is
      begin
         Map_Field (Name, Value, To);
      end;
   begin
      Map_JSON_Object (Val, Process'Access);
   end Map;

end NMEA.Messages.GXA.JSON;
