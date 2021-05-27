with NMEA.Messages.JSON; pragma Warnings (Off, NMEA.Messages.JSON);
with NMEA.JSON; pragma Warnings (Off, NMEA.JSON);

package body NMEA.Messages.OSD.JSON is
   use NMEA.Messages.JSON;
   use NMEA.JSON;


   ----------------------------------------------------
   --  OSD_Message
   ----------------------------------------------------
   procedure Populate (Val : OSD_Message; Target : in out JSON_Value) is
   begin
      Set_Field (Target, "Heading_degrees_true", Create (Val.Heading_degrees_true));
      Set_Field (Target, "Status_A_Data_Valid", Create (Val.Status_A_Data_Valid));
      Set_Field (Target, "Vessel_Course_degrees_True", Create (Val.Vessel_Course_degrees_True));
      Set_Field (Target, "Course_Reference", Create (Val.Course_Reference));
      Set_Field (Target, "Vessel_Speed", Create (Val.Vessel_Speed));
      Set_Field (Target, "Speed_Reference", Create (Val.Speed_Reference));
      Set_Field (Target, "Vessel_Set_degrees_True", Create (Val.Vessel_Set_degrees_True));
      Set_Field (Target, "Vessel_drift_speed", Create (Val.Vessel_drift_speed));
      Set_Field (Target, "Speed_Units", Create (Val.Speed_Units));
   end;

   ------------
   -- Create --
   ------------

   function Create (Val : OSD_Message) return JSON_Value is
   begin
      return Ret : JSON_Value := Create_Object do
         Populate (Val, Ret);
      end return;
   end Create;

   ---------
   -- Get --
   ---------

   function Get (Val : GNATCOLL.JSON.JSON_Value) return OSD_Message is
   begin
      return Ret : OSD_Message do
         Map (Val, Ret);
      end return;
   end Get;

   ---------
   -- Get --
   ---------

   function Get
     (Val   : JSON_Value;
      Field : UTF8_String)
      return OSD_Message
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
      Field      : OSD_Message)
   is
   begin
      Set_Field (Val, Field_Name, Create (Field));
   end Set_Field;

   ---------------
   -- Map_Field --
   ---------------
   procedure Map_Field (Name : UTF8_String; Value : JSON_Value; To : in out OSD_Message) is
   begin
      if Name = "Heading_degrees_true" then
         To.Heading_degrees_true := Get (Value);
      elsif Name = "Status_A_Data_Valid" then
         To.Status_A_Data_Valid := Get (Value);
      elsif Name = "Vessel_Course_degrees_True" then
         To.Vessel_Course_degrees_True := Get (Value);
      elsif Name = "Course_Reference" then
         To.Course_Reference := Get (Value);
      elsif Name = "Vessel_Speed" then
         To.Vessel_Speed := Get (Value);
      elsif Name = "Speed_Reference" then
         To.Speed_Reference := Get (Value);
      elsif Name = "Vessel_Set_degrees_True" then
         To.Vessel_Set_degrees_True := Get (Value);
      elsif Name = "Vessel_drift_speed" then
         To.Vessel_drift_speed := Get (Value);
      elsif Name = "Speed_Units" then
         To.Speed_Units := Get (Value);
      else
         Map_Field (Name, Value, Message (To));
      end if;
   end;

   ---------
   -- Map --
   ---------
   procedure Map
     (Val : JSON_Value;
      To  : in out OSD_Message)
   is
      procedure Process (Name : UTF8_String; Value : JSON_Value);
      procedure Process (Name : UTF8_String; Value : JSON_Value) is
      begin
         Map_Field (Name, Value, To);
      end;
   begin
      Map_JSON_Object (Val, Process'Access);
   end Map;

end NMEA.Messages.OSD.JSON;
