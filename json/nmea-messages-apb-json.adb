with NMEA.Messages.JSON; pragma Warnings (Off, NMEA.Messages.JSON);
with NMEA.JSON; pragma Warnings (Off, NMEA.JSON);

package body NMEA.Messages.APB.JSON is
   use NMEA.Messages.JSON;
   use NMEA.JSON;
   

   ----------------------------------------------------
   --  APB_Message
   ----------------------------------------------------
   procedure Populate (Val : APB_Message; Target : in out JSON_Value) is
   begin
      Set_Field (Target, "Blink_Or_SNR_Warning", Create (Val.Blink_Or_SNR_Warning));
      Set_Field (Target, "Cycle_Lock_Warning", Create (Val.Cycle_Lock_Warning));
      Set_Field (Target, "Cross_Track_Error_Magnitude", Create (Val.Cross_Track_Error_Magnitude));
      Set_Field (Target, "Direction_To_Steer_L_Or_R", Create (Val.Direction_To_Steer_L_Or_R));
      Set_Field (Target, "Cross_Track_Units_N_Nautical_Miles", Create (Val.Cross_Track_Units_N_Nautical_Miles));
      Set_Field (Target, "Status_A_Arrival_Circle_Entered", Create (Val.Status_A_Arrival_Circle_Entered));
      Set_Field (Target, "Status_A_Perpendicular_Passed_At_Waypoint", Create (Val.Status_A_Perpendicular_Passed_At_Waypoint));
      Set_Field (Target, "Bearing_Origin_To_Destination", Create (Val.Bearing_Origin_To_Destination));
      Set_Field (Target, "M_Magnetic_T_True", Create (Val.M_Magnetic_T_True));
      Set_Field (Target, "Destination_Waypoint_ID", Create (Val.Destination_Waypoint_ID));
      Set_Field (Target, "Bearing_Present_Position_To_Destination", Create (Val.Bearing_Present_Position_To_Destination));
      Set_Field (Target, "M_Magnetic_T_True18", Create (Val.M_Magnetic_T_True18));
      Set_Field (Target, "Heading_To_Steer_To_Destination_Waypoint", Create (Val.Heading_To_Steer_To_Destination_Waypoint));
      Set_Field (Target, "M_Magnetic_T_True20", Create (Val.M_Magnetic_T_True20));
   end;

   ------------
   -- Create --
   ------------

   function Create (Val : APB_Message) return JSON_Value is
   begin
      return Ret : JSON_Value := Create_Object do
         Populate (Val, Ret);
      end return;
   end Create;

   ---------
   -- Get --
   ---------

   function Get (Val : GNATCOLL.JSON.JSON_Value) return APB_Message is
   begin
      return Ret : APB_Message do
         Map (Val, Ret);
      end return;
   end Get;

   ---------
   -- Get --
   ---------

   function Get
     (Val   : JSON_Value;
      Field : UTF8_String)
      return APB_Message
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
      Field      : APB_Message)
   is      
   begin
      Set_Field (Val, Field_Name, Create (Field));
   end Set_Field;

   ---------------
   -- Map_Field --
   ---------------
   procedure Map_Field (Name : UTF8_String; Value : JSON_Value; To : in out APB_Message) is
   begin
      if Name = "Blink_Or_SNR_Warning" then
         To.Blink_Or_SNR_Warning := Get (Value);
      elsif Name = "Cycle_Lock_Warning" then
         To.Cycle_Lock_Warning := Get (Value);
      elsif Name = "Cross_Track_Error_Magnitude" then
         To.Cross_Track_Error_Magnitude := Get (Value);
      elsif Name = "Direction_To_Steer_L_Or_R" then
         To.Direction_To_Steer_L_Or_R := Get (Value);
      elsif Name = "Cross_Track_Units_N_Nautical_Miles" then
         To.Cross_Track_Units_N_Nautical_Miles := Get (Value);
      elsif Name = "Status_A_Arrival_Circle_Entered" then
         To.Status_A_Arrival_Circle_Entered := Get (Value);
      elsif Name = "Status_A_Perpendicular_Passed_At_Waypoint" then
         To.Status_A_Perpendicular_Passed_At_Waypoint := Get (Value);
      elsif Name = "Bearing_Origin_To_Destination" then
         To.Bearing_Origin_To_Destination := Get (Value);
      elsif Name = "M_Magnetic_T_True" then
         To.M_Magnetic_T_True := Get (Value);
      elsif Name = "Destination_Waypoint_ID" then
         To.Destination_Waypoint_ID := Get (Value);
      elsif Name = "Bearing_Present_Position_To_Destination" then
         To.Bearing_Present_Position_To_Destination := Get (Value);
      elsif Name = "M_Magnetic_T_True18" then
         To.M_Magnetic_T_True18 := Get (Value);
      elsif Name = "Heading_To_Steer_To_Destination_Waypoint" then
         To.Heading_To_Steer_To_Destination_Waypoint := Get (Value);
      elsif Name = "M_Magnetic_T_True20" then
         To.M_Magnetic_T_True20 := Get (Value);
      else  
         null;
      end if;
   end;
   
   ---------
   -- Map --
   ---------
   procedure Map
     (Val : JSON_Value;
      To  : in out APB_Message)
   is
      procedure Process (Name : UTF8_String; Value : JSON_Value);
      procedure Process (Name : UTF8_String; Value : JSON_Value) is
      begin
         Map_Field (Name, Value, To);
      end;
   begin
      Map_JSON_Object (Val, Process'Access);
   end Map;

end NMEA.Messages.APB.JSON;