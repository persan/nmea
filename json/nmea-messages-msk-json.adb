with NMEA.Messages.JSON; pragma Warnings (Off, NMEA.Messages.JSON);
with NMEA.JSON; pragma Warnings (Off, NMEA.JSON);

package body NMEA.Messages.MSK.JSON is
   use NMEA.Messages.JSON;
   use NMEA.JSON;


   ----------------------------------------------------
   --  MSK_Message
   ----------------------------------------------------
   procedure Populate (Val : MSK_Message; Target : in out JSON_Value) is
   begin
      Set_Field (Target, "Frequency_to_use", Create (Val.Frequency_to_use));
      Set_Field (Target, "Frequency_mode_A_auto_M_manual", Create (Val.Frequency_mode_A_auto_M_manual));
      Set_Field (Target, "Beacon_bit_rate", Create (Val.Beacon_bit_rate));
      Set_Field (Target, "Bitrate_A_auto_M_manual", Create (Val.Bitrate_A_auto_M_manual));
      Set_Field (Target, "Frequency_for_MSS_message_status_null_for_no_status", Create (Val.Frequency_for_MSS_message_status_null_for_no_status));
   end;

   ------------
   -- Create --
   ------------

   function Create (Val : MSK_Message) return JSON_Value is
   begin
      return Ret : JSON_Value := Create_Object do
         Populate (Val, Ret);
      end return;
   end Create;

   ---------
   -- Get --
   ---------

   function Get (Val : GNATCOLL.JSON.JSON_Value) return MSK_Message is
   begin
      return Ret : MSK_Message do
         Map (Val, Ret);
      end return;
   end Get;

   ---------
   -- Get --
   ---------

   function Get
     (Val   : JSON_Value;
      Field : UTF8_String)
      return MSK_Message
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
      Field      : MSK_Message)
   is
   begin
      Set_Field (Val, Field_Name, Create (Field));
   end Set_Field;

   ---------------
   -- Map_Field --
   ---------------
   procedure Map_Field (Name : UTF8_String; Value : JSON_Value; To : in out MSK_Message) is
   begin
      if Name = "Frequency_to_use" then
         To.Frequency_to_use := Get (Value);
      elsif Name = "Frequency_mode_A_auto_M_manual" then
         To.Frequency_mode_A_auto_M_manual := Get (Value);
      elsif Name = "Beacon_bit_rate" then
         To.Beacon_bit_rate := Get (Value);
      elsif Name = "Bitrate_A_auto_M_manual" then
         To.Bitrate_A_auto_M_manual := Get (Value);
      elsif Name = "Frequency_for_MSS_message_status_null_for_no_status" then
         To.Frequency_for_MSS_message_status_null_for_no_status := Get (Value);
      else
         Map_Field (Name, Value, Message (To));
      end if;
   end;

   ---------
   -- Map --
   ---------
   procedure Map
     (Val : JSON_Value;
      To  : in out MSK_Message)
   is
      procedure Process (Name : UTF8_String; Value : JSON_Value);
      procedure Process (Name : UTF8_String; Value : JSON_Value) is
      begin
         Map_Field (Name, Value, To);
      end;
   begin
      Map_JSON_Object (Val, Process'Access);
   end Map;

end NMEA.Messages.MSK.JSON;
