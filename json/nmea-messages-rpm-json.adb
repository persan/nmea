with NMEA.Messages.JSON; pragma Warnings (Off, NMEA.Messages.JSON);
with NMEA.JSON; pragma Warnings (Off, NMEA.JSON);

package body NMEA.Messages.RPM.JSON is
   use NMEA.Messages.JSON;
   use NMEA.JSON;


   ----------------------------------------------------
   --  RPM_Message
   ----------------------------------------------------
   procedure Populate (Val : RPM_Message; Target : in out JSON_Value) is
   begin
      Set_Field (Target, "Sourse_S_Shaft_E_Engine", Create (Val.Sourse_S_Shaft_E_Engine));
      Set_Field (Target, "Engine_or_shaft_number", Create (Val.Engine_or_shaft_number));
      Set_Field (Target, "Speed_Revolutions_per_minute", Create (Val.Speed_Revolutions_per_minute));
      Set_Field (Target, "Propeller_pitch_of_maximum_means_astern", Create (Val.Propeller_pitch_of_maximum_means_astern));
      Set_Field (Target, "Status_A_means_data_is_valid", Create (Val.Status_A_means_data_is_valid));
   end;

   ------------
   -- Create --
   ------------

   function Create (Val : RPM_Message) return JSON_Value is
   begin
      return Ret : JSON_Value := Create_Object do
         Populate (Val, Ret);
      end return;
   end Create;

   ---------
   -- Get --
   ---------

   function Get (Val : GNATCOLL.JSON.JSON_Value) return RPM_Message is
   begin
      return Ret : RPM_Message do
         Map (Val, Ret);
      end return;
   end Get;

   ---------
   -- Get --
   ---------

   function Get
     (Val   : JSON_Value;
      Field : UTF8_String)
      return RPM_Message
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
      Field      : RPM_Message)
   is
   begin
      Set_Field (Val, Field_Name, Create (Field));
   end Set_Field;

   ---------------
   -- Map_Field --
   ---------------
   procedure Map_Field (Name : UTF8_String; Value : JSON_Value; To : in out RPM_Message) is
   begin
      if Name = "Sourse_S_Shaft_E_Engine" then
         To.Sourse_S_Shaft_E_Engine := Get (Value);
      elsif Name = "Engine_or_shaft_number" then
         To.Engine_or_shaft_number := Get (Value);
      elsif Name = "Speed_Revolutions_per_minute" then
         To.Speed_Revolutions_per_minute := Get (Value);
      elsif Name = "Propeller_pitch_of_maximum_means_astern" then
         To.Propeller_pitch_of_maximum_means_astern := Get (Value);
      elsif Name = "Status_A_means_data_is_valid" then
         To.Status_A_means_data_is_valid := Get (Value);
      else
         Map_Field (Name, Value, Message (To));
      end if;
   end;

   ---------
   -- Map --
   ---------
   procedure Map
     (Val : JSON_Value;
      To  : in out RPM_Message)
   is
      procedure Process (Name : UTF8_String; Value : JSON_Value);
      procedure Process (Name : UTF8_String; Value : JSON_Value) is
      begin
         Map_Field (Name, Value, To);
      end;
   begin
      Map_JSON_Object (Val, Process'Access);
   end Map;

end NMEA.Messages.RPM.JSON;
