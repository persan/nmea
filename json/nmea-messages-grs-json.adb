with NMEA.Messages.JSON; pragma Warnings (Off, NMEA.Messages.JSON);
with NMEA.JSON; pragma Warnings (Off, NMEA.JSON);

package body NMEA.Messages.GRS.JSON is
   use NMEA.Messages.JSON;
   use NMEA.JSON;


   ----------------------------------------------------
   --  GRS_Message
   ----------------------------------------------------
   procedure Populate (Val : GRS_Message; Target : in out JSON_Value) is
   begin
      Set_Field (Target, "TC_Time_Of_Associated_GGA_Fix", Create (Val.TC_Time_Of_Associated_GGA_Fix));
      Set_Field (Target, "Residuals_Used", Create (Val.Residuals_Used));
      Set_Field (Target, "Satellite_1_Residual", Create (Val.Satellite_1_Residual));
      Set_Field (Target, "Satellite_2_Residual", Create (Val.Satellite_2_Residual));
      Set_Field (Target, "Satellite_3_Residual", Create (Val.Satellite_3_Residual));
      Set_Field (Target, "Satellite_4_Residual", Create (Val.Satellite_4_Residual));
      Set_Field (Target, "Satellite_5_Residual", Create (Val.Satellite_5_Residual));
      Set_Field (Target, "Satellite_6_Residual", Create (Val.Satellite_6_Residual));
      Set_Field (Target, "Satellite_7_Residual", Create (Val.Satellite_7_Residual));
      Set_Field (Target, "Satellite_8_Residual", Create (Val.Satellite_8_Residual));
      Set_Field (Target, "Satellite_9_Residual", Create (Val.Satellite_9_Residual));
      Set_Field (Target, "Satellite_10_Residual", Create (Val.Satellite_10_Residual));
      Set_Field (Target, "Satellite_11_Residual", Create (Val.Satellite_11_Residual));
      Set_Field (Target, "Satellite_12_Residual", Create (Val.Satellite_12_Residual));
   end;

   ------------
   -- Create --
   ------------

   function Create (Val : GRS_Message) return JSON_Value is
   begin
      return Ret : JSON_Value := Create_Object do
         Populate (Val, Ret);
      end return;
   end Create;

   ---------
   -- Get --
   ---------

   function Get (Val : GNATCOLL.JSON.JSON_Value) return GRS_Message is
   begin
      return Ret : GRS_Message do
         Map (Val, Ret);
      end return;
   end Get;

   ---------
   -- Get --
   ---------

   function Get
     (Val   : JSON_Value;
      Field : UTF8_String)
      return GRS_Message
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
      Field      : GRS_Message)
   is
   begin
      Set_Field (Val, Field_Name, Create (Field));
   end Set_Field;

   ---------------
   -- Map_Field --
   ---------------
   procedure Map_Field (Name : UTF8_String; Value : JSON_Value; To : in out GRS_Message) is
   begin
      if Name = "TC_Time_Of_Associated_GGA_Fix" then
         To.TC_Time_Of_Associated_GGA_Fix := Get (Value);
      elsif Name = "Residuals_Used" then
         To.Residuals_Used := Get (Value);
      elsif Name = "Satellite_1_Residual" then
         To.Satellite_1_Residual := Get (Value);
      elsif Name = "Satellite_2_Residual" then
         To.Satellite_2_Residual := Get (Value);
      elsif Name = "Satellite_3_Residual" then
         To.Satellite_3_Residual := Get (Value);
      elsif Name = "Satellite_4_Residual" then
         To.Satellite_4_Residual := Get (Value);
      elsif Name = "Satellite_5_Residual" then
         To.Satellite_5_Residual := Get (Value);
      elsif Name = "Satellite_6_Residual" then
         To.Satellite_6_Residual := Get (Value);
      elsif Name = "Satellite_7_Residual" then
         To.Satellite_7_Residual := Get (Value);
      elsif Name = "Satellite_8_Residual" then
         To.Satellite_8_Residual := Get (Value);
      elsif Name = "Satellite_9_Residual" then
         To.Satellite_9_Residual := Get (Value);
      elsif Name = "Satellite_10_Residual" then
         To.Satellite_10_Residual := Get (Value);
      elsif Name = "Satellite_11_Residual" then
         To.Satellite_11_Residual := Get (Value);
      elsif Name = "Satellite_12_Residual" then
         To.Satellite_12_Residual := Get (Value);
      else
         Map_Field (Name, Value, Message (To));
      end if;
   end;

   ---------
   -- Map --
   ---------
   procedure Map
     (Val : JSON_Value;
      To  : in out GRS_Message)
   is
      procedure Process (Name : UTF8_String; Value : JSON_Value);
      procedure Process (Name : UTF8_String; Value : JSON_Value) is
      begin
         Map_Field (Name, Value, To);
      end;
   begin
      Map_JSON_Object (Val, Process'Access);
   end Map;

end NMEA.Messages.GRS.JSON;
