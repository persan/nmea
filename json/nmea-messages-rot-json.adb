with NMEA.Messages.JSON; pragma Warnings (Off, NMEA.Messages.JSON);
with NMEA.JSON; pragma Warnings (Off, NMEA.JSON);

package body NMEA.Messages.ROT.JSON is
   use NMEA.Messages.JSON;
   use NMEA.JSON;
   

   ----------------------------------------------------
   --  ROT_Message
   ----------------------------------------------------
   procedure Populate (Val : ROT_Message; Target : in out JSON_Value) is
   begin
      Set_Field (Target, "Rate_Of_Turn_degrees_per_minute_means_bow_turns_to_port", Create (Val.Rate_Of_Turn_degrees_per_minute_means_bow_turns_to_port));
      Set_Field (Target, "Status_A_means_data_is_valid", Create (Val.Status_A_means_data_is_valid));
   end;

   ------------
   -- Create --
   ------------

   function Create (Val : ROT_Message) return JSON_Value is
   begin
      return Ret : JSON_Value := Create_Object do
         Populate (Val, Ret);
      end return;
   end Create;

   ---------
   -- Get --
   ---------

   function Get (Val : GNATCOLL.JSON.JSON_Value) return ROT_Message is
   begin
      return Ret : ROT_Message do
         Map (Val, Ret);
      end return;
   end Get;

   ---------
   -- Get --
   ---------

   function Get
     (Val   : JSON_Value;
      Field : UTF8_String)
      return ROT_Message
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
      Field      : ROT_Message)
   is      
   begin
      Set_Field (Val, Field_Name, Create (Field));
   end Set_Field;

   ---------------
   -- Map_Field --
   ---------------
   procedure Map_Field (Name : UTF8_String; Value : JSON_Value; To : in out ROT_Message) is
   begin
      if Name = "Rate_Of_Turn_degrees_per_minute_means_bow_turns_to_port" then
         To.Rate_Of_Turn_degrees_per_minute_means_bow_turns_to_port := Get (Value);
      elsif Name = "Status_A_means_data_is_valid" then
         To.Status_A_means_data_is_valid := Get (Value);
      else  
         null;
      end if;
   end;
   
   ---------
   -- Map --
   ---------
   procedure Map
     (Val : JSON_Value;
      To  : in out ROT_Message)
   is
      procedure Process (Name : UTF8_String; Value : JSON_Value);
      procedure Process (Name : UTF8_String; Value : JSON_Value) is
      begin
         Map_Field (Name, Value, To);
      end;
   begin
      Map_JSON_Object (Val, Process'Access);
   end Map;

end NMEA.Messages.ROT.JSON;