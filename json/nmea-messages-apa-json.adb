with NMEA.Messages.JSON; pragma Warnings (Off, NMEA.Messages.JSON);
with NMEA.JSON; pragma Warnings (Off, NMEA.JSON);

package body NMEA.Messages.APA.JSON is
   use NMEA.Messages.JSON;
   use NMEA.JSON;


   ----------------------------------------------------
   --  APA_Message
   ----------------------------------------------------
   procedure Populate (Val : APA_Message; Target : in out JSON_Value) is
   begin
      Set_Field (Target, "Blink_Warning", Create (Val.Blink_Warning));
      Set_Field (Target, "Cycle_Lock_Warning", Create (Val.Cycle_Lock_Warning));
      Set_Field (Target, "Cross_Track_Error_Magnitude", Create (Val.Cross_Track_Error_Magnitude));
      Set_Field (Target, "Steer_Left", Create (Val.Steer_Left));
      Set_Field (Target, "Cross_Track_Units_is_KM", Create (Val.Cross_Track_Units_is_KM));
      Set_Field (Target, "Arrival_Circle_Entered", Create (Val.Arrival_Circle_Entered));
      Set_Field (Target, "Perpendicular_Passed_At_Waypoint", Create (Val.Perpendicular_Passed_At_Waypoint));
      Set_Field (Target, "Bearing_Origin_To_Destination", Create (Val.Bearing_Origin_To_Destination));
      Set_Field (Target, "Is_Magnetic", Create (Val.Is_Magnetic));
      Set_Field (Target, "Destination_Waypoint_ID", Create (Val.Destination_Waypoint_ID));
   end;

   ------------
   -- Create --
   ------------

   function Create (Val : APA_Message) return JSON_Value is
   begin
      return Ret : JSON_Value := Create_Object do
         Populate (Val, Ret);
      end return;
   end Create;

   ---------
   -- Get --
   ---------

   function Get (Val : GNATCOLL.JSON.JSON_Value) return APA_Message is
   begin
      return Ret : APA_Message do
         Map (Val, Ret);
      end return;
   end Get;

   ---------
   -- Get --
   ---------

   function Get
     (Val   : JSON_Value;
      Field : UTF8_String)
      return APA_Message
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
      Field      : APA_Message)
   is
   begin
      Set_Field (Val, Field_Name, Create (Field));
   end Set_Field;

   ---------------
   -- Map_Field --
   ---------------
   procedure Map_Field (Name : UTF8_String; Value : JSON_Value; To : in out APA_Message) is
   begin
      if Name = "Blink_Warning" then
         To.Blink_Warning := Get (Value);
      elsif Name = "Cycle_Lock_Warning" then
         To.Cycle_Lock_Warning := Get (Value);
      elsif Name = "Cross_Track_Error_Magnitude" then
         To.Cross_Track_Error_Magnitude := Get (Value);
      elsif Name = "Steer_Left" then
         To.Steer_Left := Get (Value);
      elsif Name = "Cross_Track_Units_is_KM" then
         To.Cross_Track_Units_is_KM := Get (Value);
      elsif Name = "Arrival_Circle_Entered" then
         To.Arrival_Circle_Entered := Get (Value);
      elsif Name = "Perpendicular_Passed_At_Waypoint" then
         To.Perpendicular_Passed_At_Waypoint := Get (Value);
      elsif Name = "Bearing_Origin_To_Destination" then
         To.Bearing_Origin_To_Destination := Get (Value);
      elsif Name = "Is_Magnetic" then
         To.Is_Magnetic := Get (Value);
      elsif Name = "Destination_Waypoint_ID" then
         To.Destination_Waypoint_ID := Get (Value);
      else
         Map_Field (Name, Value, Message (To));
      end if;
   end;

   ---------
   -- Map --
   ---------
   procedure Map
     (Val : JSON_Value;
      To  : in out APA_Message)
   is
      procedure Process (Name : UTF8_String; Value : JSON_Value);
      procedure Process (Name : UTF8_String; Value : JSON_Value) is
      begin
         Map_Field (Name, Value, To);
      end;
   begin
      Map_JSON_Object (Val, Process'Access);
   end Map;

end NMEA.Messages.APA.JSON;
