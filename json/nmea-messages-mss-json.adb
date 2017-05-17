with NMEA.Messages.JSON; pragma Warnings (Off, NMEA.Messages.JSON);
with NMEA.JSON; pragma Warnings (Off, NMEA.JSON);

package body NMEA.Messages.MSS.JSON is
   use NMEA.Messages.JSON;
   use NMEA.JSON;
   

   ----------------------------------------------------
   --  MSS_Message
   ----------------------------------------------------
   procedure Populate (Val : MSS_Message; Target : in out JSON_Value) is
   begin
      Set_Field (Target, "Signal_strength_dB_1uV", Create (Val.Signal_strength_dB_1uV));
      Set_Field (Target, "Signal_to_noise_ratio_dB", Create (Val.Signal_to_noise_ratio_dB));
      Set_Field (Target, "Beacon_frequency_kHz", Create (Val.Beacon_frequency_kHz));
      Set_Field (Target, "Beacon_data_rate_BPS", Create (Val.Beacon_data_rate_BPS));
      Set_Field (Target, "Unknown_integer_value", Create (Val.Unknown_integer_value));
   end;

   ------------
   -- Create --
   ------------

   function Create (Val : MSS_Message) return JSON_Value is
   begin
      return Ret : JSON_Value := Create_Object do
         Populate (Val, Ret);
      end return;
   end Create;

   ---------
   -- Get --
   ---------

   function Get (Val : GNATCOLL.JSON.JSON_Value) return MSS_Message is
   begin
      return Ret : MSS_Message do
         Map (Val, Ret);
      end return;
   end Get;

   ---------
   -- Get --
   ---------

   function Get
     (Val   : JSON_Value;
      Field : UTF8_String)
      return MSS_Message
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
      Field      : MSS_Message)
   is      
   begin
      Set_Field (Val, Field_Name, Create (Field));
   end Set_Field;

   ---------------
   -- Map_Field --
   ---------------
   procedure Map_Field (Name : UTF8_String; Value : JSON_Value; To : in out MSS_Message) is
   begin
      if Name = "Signal_strength_dB_1uV" then
         To.Signal_strength_dB_1uV := Get (Value);
      elsif Name = "Signal_to_noise_ratio_dB" then
         To.Signal_to_noise_ratio_dB := Get (Value);
      elsif Name = "Beacon_frequency_kHz" then
         To.Beacon_frequency_kHz := Get (Value);
      elsif Name = "Beacon_data_rate_BPS" then
         To.Beacon_data_rate_BPS := Get (Value);
      elsif Name = "Unknown_integer_value" then
         To.Unknown_integer_value := Get (Value);
      else  
         null;
      end if;
   end;
   
   ---------
   -- Map --
   ---------
   procedure Map
     (Val : JSON_Value;
      To  : in out MSS_Message)
   is
      procedure Process (Name : UTF8_String; Value : JSON_Value);
      procedure Process (Name : UTF8_String; Value : JSON_Value) is
      begin
         Map_Field (Name, Value, To);
      end;
   begin
      Map_JSON_Object (Val, Process'Access);
   end Map;

end NMEA.Messages.MSS.JSON;