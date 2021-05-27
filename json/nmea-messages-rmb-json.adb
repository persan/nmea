with NMEA.Messages.JSON; pragma Warnings (Off, NMEA.Messages.JSON);
with NMEA.JSON; pragma Warnings (Off, NMEA.JSON);

package body NMEA.Messages.RMB.JSON is
   use NMEA.Messages.JSON;
   use NMEA.JSON;


   ----------------------------------------------------
   --  RMB_Message
   ----------------------------------------------------
   procedure Populate (Val : RMB_Message; Target : in out JSON_Value) is
   begin
      Set_Field (Target, "Status", Create (Val.Status));
      Set_Field (Target, "Cross_Track_error", Create (Val.Cross_Track_error));
      Set_Field (Target, "Direction_to_Steer", Create (Val.Direction_to_Steer));
      Set_Field (Target, "Origin_waypoint", Create (Val.Origin_waypoint));
      Set_Field (Target, "Destination_waypoint", Create (Val.Destination_waypoint));
      Set_Field (Target, "Destination_waypoint_Latitude", Create (Val.Destination_waypoint_Latitude));
      Set_Field (Target, "Destination_Waypoint_Longitude", Create (Val.Destination_Waypoint_Longitude));
      Set_Field (Target, "Range_To_Destination", Create (Val.Range_To_Destination));
      Set_Field (Target, "True_Bearing_To_Destination", Create (Val.True_Bearing_To_Destination));
      Set_Field (Target, "Velocity_Towards_Destination", Create (Val.Velocity_Towards_Destination));
      Set_Field (Target, "Arrival_Alarm", Create (Val.Arrival_Alarm));
   end;

   ------------
   -- Create --
   ------------

   function Create (Val : RMB_Message) return JSON_Value is
   begin
      return Ret : JSON_Value := Create_Object do
         Populate (Val, Ret);
      end return;
   end Create;

   ---------
   -- Get --
   ---------

   function Get (Val : GNATCOLL.JSON.JSON_Value) return RMB_Message is
   begin
      return Ret : RMB_Message do
         Map (Val, Ret);
      end return;
   end Get;

   ---------
   -- Get --
   ---------

   function Get
     (Val   : JSON_Value;
      Field : UTF8_String)
      return RMB_Message
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
      Field      : RMB_Message)
   is
   begin
      Set_Field (Val, Field_Name, Create (Field));
   end Set_Field;

   ---------------
   -- Map_Field --
   ---------------
   procedure Map_Field (Name : UTF8_String; Value : JSON_Value; To : in out RMB_Message) is
   begin
      if Name = "Status" then
         To.Status := Get (Value);
      elsif Name = "Cross_Track_error" then
         To.Cross_Track_error := Get (Value);
      elsif Name = "Direction_to_Steer" then
         To.Direction_to_Steer := Get (Value);
      elsif Name = "Origin_waypoint" then
         To.Origin_waypoint := Get (Value);
      elsif Name = "Destination_waypoint" then
         To.Destination_waypoint := Get (Value);
      elsif Name = "Destination_waypoint_Latitude" then
         To.Destination_waypoint_Latitude := Get (Value);
      elsif Name = "Destination_Waypoint_Longitude" then
         To.Destination_Waypoint_Longitude := Get (Value);
      elsif Name = "Range_To_Destination" then
         To.Range_To_Destination := Get (Value);
      elsif Name = "True_Bearing_To_Destination" then
         To.True_Bearing_To_Destination := Get (Value);
      elsif Name = "Velocity_Towards_Destination" then
         To.Velocity_Towards_Destination := Get (Value);
      elsif Name = "Arrival_Alarm" then
         To.Arrival_Alarm := Get (Value);
      else
         Map_Field (Name, Value, Message (To));
      end if;
   end;

   ---------
   -- Map --
   ---------
   procedure Map
     (Val : JSON_Value;
      To  : in out RMB_Message)
   is
      procedure Process (Name : UTF8_String; Value : JSON_Value);
      procedure Process (Name : UTF8_String; Value : JSON_Value) is
      begin
         Map_Field (Name, Value, To);
      end;
   begin
      Map_JSON_Object (Val, Process'Access);
   end Map;

end NMEA.Messages.RMB.JSON;
