with NMEA.Messages.JSON; pragma Warnings (Off, NMEA.Messages.JSON);
with NMEA.JSON; pragma Warnings (Off, NMEA.JSON);

package body NMEA.Messages.TTM.JSON is
   use NMEA.Messages.JSON;
   use NMEA.JSON;
   

   ----------------------------------------------------
   --  TTM_Message
   ----------------------------------------------------
   procedure Populate (Val : TTM_Message; Target : in out JSON_Value) is
   begin
      Set_Field (Target, "Target_Number", Create (Val.Target_Number));
      Set_Field (Target, "Target_Distance", Create (Val.Target_Distance));
      Set_Field (Target, "Bearing_From_Own_Ship", Create (Val.Bearing_From_Own_Ship));
      Set_Field (Target, "Bearing_Units", Create (Val.Bearing_Units));
      Set_Field (Target, "Target_Speed", Create (Val.Target_Speed));
      Set_Field (Target, "Target_Course", Create (Val.Target_Course));
      Set_Field (Target, "Course_Units", Create (Val.Course_Units));
      Set_Field (Target, "Distance_Of_Closest_Point_Of_Approach", Create (Val.Distance_Of_Closest_Point_Of_Approach));
      Set_Field (Target, "Time_Until_Closest_Point_Of_Approach", Create (Val.Time_Until_Closest_Point_Of_Approach));
      Set_Field (Target, "Means_Increasing", Create (Val.Means_Increasing));
      Set_Field (Target, "Target_Name", Create (Val.Target_Name));
      Set_Field (Target, "Target_Status", Create (Val.Target_Status));
      Set_Field (Target, "Reference_Target", Create (Val.Reference_Target));
   end;

   ------------
   -- Create --
   ------------

   function Create (Val : TTM_Message) return JSON_Value is
   begin
      return Ret : JSON_Value := Create_Object do
         Populate (Val, Ret);
      end return;
   end Create;

   ---------
   -- Get --
   ---------

   function Get (Val : GNATCOLL.JSON.JSON_Value) return TTM_Message is
   begin
      return Ret : TTM_Message do
         Map (Val, Ret);
      end return;
   end Get;

   ---------
   -- Get --
   ---------

   function Get
     (Val   : JSON_Value;
      Field : UTF8_String)
      return TTM_Message
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
      Field      : TTM_Message)
   is      
   begin
      Set_Field (Val, Field_Name, Create (Field));
   end Set_Field;

   ---------------
   -- Map_Field --
   ---------------
   procedure Map_Field (Name : UTF8_String; Value : JSON_Value; To : in out TTM_Message) is
   begin
      if Name = "Target_Number" then
         To.Target_Number := Get (Value);
      elsif Name = "Target_Distance" then
         To.Target_Distance := Get (Value);
      elsif Name = "Bearing_From_Own_Ship" then
         To.Bearing_From_Own_Ship := Get (Value);
      elsif Name = "Bearing_Units" then
         To.Bearing_Units := Get (Value);
      elsif Name = "Target_Speed" then
         To.Target_Speed := Get (Value);
      elsif Name = "Target_Course" then
         To.Target_Course := Get (Value);
      elsif Name = "Course_Units" then
         To.Course_Units := Get (Value);
      elsif Name = "Distance_Of_Closest_Point_Of_Approach" then
         To.Distance_Of_Closest_Point_Of_Approach := Get (Value);
      elsif Name = "Time_Until_Closest_Point_Of_Approach" then
         To.Time_Until_Closest_Point_Of_Approach := Get (Value);
      elsif Name = "Means_Increasing" then
         To.Means_Increasing := Get (Value);
      elsif Name = "Target_Name" then
         To.Target_Name := Get (Value);
      elsif Name = "Target_Status" then
         To.Target_Status := Get (Value);
      elsif Name = "Reference_Target" then
         To.Reference_Target := Get (Value);
      else  
         null;
      end if;
   end;
   
   ---------
   -- Map --
   ---------
   procedure Map
     (Val : JSON_Value;
      To  : in out TTM_Message)
   is
      procedure Process (Name : UTF8_String; Value : JSON_Value);
      procedure Process (Name : UTF8_String; Value : JSON_Value) is
      begin
         Map_Field (Name, Value, To);
      end;
   begin
      Map_JSON_Object (Val, Process'Access);
   end Map;

end NMEA.Messages.TTM.JSON;