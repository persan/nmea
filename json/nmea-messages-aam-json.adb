with NMEA.Messages.JSON; pragma Warnings (Off, NMEA.Messages.JSON);
with NMEA.JSON; pragma Warnings (Off, NMEA.JSON);

package body NMEA.Messages.AAM.JSON is
   use NMEA.Messages.JSON;
   use NMEA.JSON;
   

   ----------------------------------------------------
   --  AAM_Message
   ----------------------------------------------------
   procedure Populate (Val : AAM_Message; Target : in out JSON_Value) is
   begin
      Set_Field (Target, "Arrival_Circle_Entered", Create (Val.Arrival_Circle_Entered));
      Set_Field (Target, "Perpendicular_Passed_At_Waypoint", Create (Val.Perpendicular_Passed_At_Waypoint));
      Set_Field (Target, "Arrival_Circle_Radius", Create (Val.Arrival_Circle_Radius));
      Set_Field (Target, "Units_Of_Radius", Create (Val.Units_Of_Radius));
      Set_Field (Target, "Waypoint_ID", Create (Val.Waypoint_ID));
   end;

   ------------
   -- Create --
   ------------

   function Create (Val : AAM_Message) return JSON_Value is
   begin
      return Ret : JSON_Value := Create_Object do
         Populate (Val, Ret);
      end return;
   end Create;

   ---------
   -- Get --
   ---------

   function Get (Val : GNATCOLL.JSON.JSON_Value) return AAM_Message is
   begin
      return Ret : AAM_Message do
         Map (Val, Ret);
      end return;
   end Get;

   ---------
   -- Get --
   ---------

   function Get
     (Val   : JSON_Value;
      Field : UTF8_String)
      return AAM_Message
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
      Field      : AAM_Message)
   is      
   begin
      Set_Field (Val, Field_Name, Create (Field));
   end Set_Field;

   ---------------
   -- Map_Field --
   ---------------
   procedure Map_Field (Name : UTF8_String; Value : JSON_Value; To : in out AAM_Message) is
   begin
      if Name = "Arrival_Circle_Entered" then
         To.Arrival_Circle_Entered := Get (Value);
      elsif Name = "Perpendicular_Passed_At_Waypoint" then
         To.Perpendicular_Passed_At_Waypoint := Get (Value);
      elsif Name = "Arrival_Circle_Radius" then
         To.Arrival_Circle_Radius := Get (Value);
      elsif Name = "Units_Of_Radius" then
         To.Units_Of_Radius := Get (Value);
      elsif Name = "Waypoint_ID" then
         To.Waypoint_ID := Get (Value);
      else  
         null;
      end if;
   end;
   
   ---------
   -- Map --
   ---------
   procedure Map
     (Val : JSON_Value;
      To  : in out AAM_Message)
   is
      procedure Process (Name : UTF8_String; Value : JSON_Value);
      procedure Process (Name : UTF8_String; Value : JSON_Value) is
      begin
         Map_Field (Name, Value, To);
      end;
   begin
      Map_JSON_Object (Val, Process'Access);
   end Map;

end NMEA.Messages.AAM.JSON;