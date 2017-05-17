with NMEA.Messages.JSON; pragma Warnings (Off, NMEA.Messages.JSON);
with NMEA.JSON; pragma Warnings (Off, NMEA.JSON);

package body NMEA.Messages.ZDA.JSON is
   use NMEA.Messages.JSON;
   use NMEA.JSON;
   

   ----------------------------------------------------
   --  ZDA_Message
   ----------------------------------------------------
   procedure Populate (Val : ZDA_Message; Target : in out JSON_Value) is
   begin
      Set_Field (Target, "Time", Create (Val.Time));
      Set_Field (Target, "Day_01_To_31", Create (Val.Day_01_To_31));
      Set_Field (Target, "Month_01_To_12", Create (Val.Month_01_To_12));
      Set_Field (Target, "Year_4_Digits", Create (Val.Year_4_Digits));
      Set_Field (Target, "Local_Zone_Description_00_To_13_Hours", Create (Val.Local_Zone_Description_00_To_13_Hours));
      Set_Field (Target, "Local_Zone_Minutes_Description_Apply_Same_Sign_As_Local_Hours", Create (Val.Local_Zone_Minutes_Description_Apply_Same_Sign_As_Local_Hours));
   end;

   ------------
   -- Create --
   ------------

   function Create (Val : ZDA_Message) return JSON_Value is
   begin
      return Ret : JSON_Value := Create_Object do
         Populate (Val, Ret);
      end return;
   end Create;

   ---------
   -- Get --
   ---------

   function Get (Val : GNATCOLL.JSON.JSON_Value) return ZDA_Message is
   begin
      return Ret : ZDA_Message do
         Map (Val, Ret);
      end return;
   end Get;

   ---------
   -- Get --
   ---------

   function Get
     (Val   : JSON_Value;
      Field : UTF8_String)
      return ZDA_Message
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
      Field      : ZDA_Message)
   is      
   begin
      Set_Field (Val, Field_Name, Create (Field));
   end Set_Field;

   ---------------
   -- Map_Field --
   ---------------
   procedure Map_Field (Name : UTF8_String; Value : JSON_Value; To : in out ZDA_Message) is
   begin
      if Name = "Time" then
         To.Time := Get (Value);
      elsif Name = "Day_01_To_31" then
         To.Day_01_To_31 := Get (Value);
      elsif Name = "Month_01_To_12" then
         To.Month_01_To_12 := Get (Value);
      elsif Name = "Year_4_Digits" then
         To.Year_4_Digits := Get (Value);
      elsif Name = "Local_Zone_Description_00_To_13_Hours" then
         To.Local_Zone_Description_00_To_13_Hours := Get (Value);
      elsif Name = "Local_Zone_Minutes_Description_Apply_Same_Sign_As_Local_Hours" then
         To.Local_Zone_Minutes_Description_Apply_Same_Sign_As_Local_Hours := Get (Value);
      else  
         null;
      end if;
   end;
   
   ---------
   -- Map --
   ---------
   procedure Map
     (Val : JSON_Value;
      To  : in out ZDA_Message)
   is
      procedure Process (Name : UTF8_String; Value : JSON_Value);
      procedure Process (Name : UTF8_String; Value : JSON_Value) is
      begin
         Map_Field (Name, Value, To);
      end;
   begin
      Map_JSON_Object (Val, Process'Access);
   end Map;

end NMEA.Messages.ZDA.JSON;