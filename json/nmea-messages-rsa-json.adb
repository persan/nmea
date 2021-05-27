with NMEA.Messages.JSON; pragma Warnings (Off, NMEA.Messages.JSON);
with NMEA.JSON; pragma Warnings (Off, NMEA.JSON);

package body NMEA.Messages.RSA.JSON is
   use NMEA.Messages.JSON;
   use NMEA.JSON;


   ----------------------------------------------------
   --  RSA_Message
   ----------------------------------------------------
   procedure Populate (Val : RSA_Message; Target : in out JSON_Value) is
   begin
      Set_Field (Target, "Starboard_or_single_rudder_sensor_means_Turn_To_Port", Create (Val.Starboard_or_single_rudder_sensor_means_Turn_To_Port));
      Set_Field (Target, "Status_A_means_data_is_valid", Create (Val.Status_A_means_data_is_valid));
      Set_Field (Target, "Port_rudder_sensor", Create (Val.Port_rudder_sensor));
      Set_Field (Target, "Status_A_means_data_is_valid8", Create (Val.Status_A_means_data_is_valid8));
   end;

   ------------
   -- Create --
   ------------

   function Create (Val : RSA_Message) return JSON_Value is
   begin
      return Ret : JSON_Value := Create_Object do
         Populate (Val, Ret);
      end return;
   end Create;

   ---------
   -- Get --
   ---------

   function Get (Val : GNATCOLL.JSON.JSON_Value) return RSA_Message is
   begin
      return Ret : RSA_Message do
         Map (Val, Ret);
      end return;
   end Get;

   ---------
   -- Get --
   ---------

   function Get
     (Val   : JSON_Value;
      Field : UTF8_String)
      return RSA_Message
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
      Field      : RSA_Message)
   is
   begin
      Set_Field (Val, Field_Name, Create (Field));
   end Set_Field;

   ---------------
   -- Map_Field --
   ---------------
   procedure Map_Field (Name : UTF8_String; Value : JSON_Value; To : in out RSA_Message) is
   begin
      if Name = "Starboard_or_single_rudder_sensor_means_Turn_To_Port" then
         To.Starboard_or_single_rudder_sensor_means_Turn_To_Port := Get (Value);
      elsif Name = "Status_A_means_data_is_valid" then
         To.Status_A_means_data_is_valid := Get (Value);
      elsif Name = "Port_rudder_sensor" then
         To.Port_rudder_sensor := Get (Value);
      elsif Name = "Status_A_means_data_is_valid8" then
         To.Status_A_means_data_is_valid8 := Get (Value);
      else
         Map_Field (Name, Value, Message (To));
      end if;
   end;

   ---------
   -- Map --
   ---------
   procedure Map
     (Val : JSON_Value;
      To  : in out RSA_Message)
   is
      procedure Process (Name : UTF8_String; Value : JSON_Value);
      procedure Process (Name : UTF8_String; Value : JSON_Value) is
      begin
         Map_Field (Name, Value, To);
      end;
   begin
      Map_JSON_Object (Val, Process'Access);
   end Map;

end NMEA.Messages.RSA.JSON;
