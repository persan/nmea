with NMEA.Messages.JSON; pragma Warnings (Off, NMEA.Messages.JSON);
with NMEA.JSON; pragma Warnings (Off, NMEA.JSON);

package body NMEA.Messages.LCD.JSON is
   use NMEA.Messages.JSON;
   use NMEA.JSON;


   ----------------------------------------------------
   --  LCD_Message
   ----------------------------------------------------
   procedure Populate (Val : LCD_Message; Target : in out JSON_Value) is
   begin
      Set_Field (Target, "GRI_Microseconds_10", Create (Val.GRI_Microseconds_10));
      Set_Field (Target, "Master_Relative_SNR", Create (Val.Master_Relative_SNR));
      Set_Field (Target, "Master_Relative_ECD", Create (Val.Master_Relative_ECD));
      Set_Field (Target, "Time_Difference_1_Microseconds", Create (Val.Time_Difference_1_Microseconds));
      Set_Field (Target, "Time_Difference_1_Signal_Status", Create (Val.Time_Difference_1_Signal_Status));
      Set_Field (Target, "Time_Difference_2_Microseconds", Create (Val.Time_Difference_2_Microseconds));
      Set_Field (Target, "Time_Difference_2_Signal_Status", Create (Val.Time_Difference_2_Signal_Status));
      Set_Field (Target, "Time_Difference_3_Microseconds", Create (Val.Time_Difference_3_Microseconds));
      Set_Field (Target, "Time_Difference_3_Signal_Status", Create (Val.Time_Difference_3_Signal_Status));
      Set_Field (Target, "Time_Difference_4_Microseconds", Create (Val.Time_Difference_4_Microseconds));
      Set_Field (Target, "Time_Difference_4_Signal_Status", Create (Val.Time_Difference_4_Signal_Status));
      Set_Field (Target, "Time_Difference_5_Microseconds", Create (Val.Time_Difference_5_Microseconds));
      Set_Field (Target, "Time_Difference_5_Signal_Status", Create (Val.Time_Difference_5_Signal_Status));
      Populate (Message (Val), Target);
   end;

   ------------
   -- Create --
   ------------

   function Create (Val : LCD_Message) return JSON_Value is
   begin
      return Ret : JSON_Value := Create_Object do
         Populate (Val, Ret);
      end return;
   end Create;

   ---------
   -- Get --
   ---------

   function Get (Val : GNATCOLL.JSON.JSON_Value) return LCD_Message is
   begin
      return Ret : LCD_Message do
         Map (Val, Ret);
      end return;
   end Get;

   ---------
   -- Get --
   ---------

   function Get
     (Val   : JSON_Value;
      Field : UTF8_String)
      return LCD_Message
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
      Field      : LCD_Message)
   is
   begin
      Set_Field (Val, Field_Name, Create (Field));
   end Set_Field;

   ---------------
   -- Map_Field --
   ---------------
   procedure Map_Field (Name : UTF8_String; Value : JSON_Value; To : in out LCD_Message) is
   begin
      if Name = "GRI_Microseconds_10" then
         To.GRI_Microseconds_10 := Get (Value);
      elsif Name = "Master_Relative_SNR" then
         To.Master_Relative_SNR := Get (Value);
      elsif Name = "Master_Relative_ECD" then
         To.Master_Relative_ECD := Get (Value);
      elsif Name = "Time_Difference_1_Microseconds" then
         To.Time_Difference_1_Microseconds := Get (Value);
      elsif Name = "Time_Difference_1_Signal_Status" then
         To.Time_Difference_1_Signal_Status := Get (Value);
      elsif Name = "Time_Difference_2_Microseconds" then
         To.Time_Difference_2_Microseconds := Get (Value);
      elsif Name = "Time_Difference_2_Signal_Status" then
         To.Time_Difference_2_Signal_Status := Get (Value);
      elsif Name = "Time_Difference_3_Microseconds" then
         To.Time_Difference_3_Microseconds := Get (Value);
      elsif Name = "Time_Difference_3_Signal_Status" then
         To.Time_Difference_3_Signal_Status := Get (Value);
      elsif Name = "Time_Difference_4_Microseconds" then
         To.Time_Difference_4_Microseconds := Get (Value);
      elsif Name = "Time_Difference_4_Signal_Status" then
         To.Time_Difference_4_Signal_Status := Get (Value);
      elsif Name = "Time_Difference_5_Microseconds" then
         To.Time_Difference_5_Microseconds := Get (Value);
      elsif Name = "Time_Difference_5_Signal_Status" then
         To.Time_Difference_5_Signal_Status := Get (Value);
      else
         Map_Field (Name, Value, Message (To));
      end if;
   end;

   ---------
   -- Map --
   ---------
   procedure Map
     (Val : JSON_Value;
      To  : in out LCD_Message)
   is
      procedure Process (Name : UTF8_String; Value : JSON_Value);
      procedure Process (Name : UTF8_String; Value : JSON_Value) is
      begin
         Map_Field (Name, Value, To);
      end;
   begin
      Map_JSON_Object (Val, Process'Access);
   end Map;

end NMEA.Messages.LCD.JSON;
