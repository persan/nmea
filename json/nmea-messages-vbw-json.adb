with NMEA.Messages.JSON; pragma Warnings (Off, NMEA.Messages.JSON);
with NMEA.JSON; pragma Warnings (Off, NMEA.JSON);

package body NMEA.Messages.VBW.JSON is
   use NMEA.Messages.JSON;
   use NMEA.JSON;
   

   ----------------------------------------------------
   --  VBW_Message
   ----------------------------------------------------
   procedure Populate (Val : VBW_Message; Target : in out JSON_Value) is
   begin
      Set_Field (Target, "Longitudinal_Water_Speed", Create (Val.Longitudinal_Water_Speed));
      Set_Field (Target, "Transverse_Water_Speed", Create (Val.Transverse_Water_Speed));
      Set_Field (Target, "Transverse_Water_Speed_Status", Create (Val.Transverse_Water_Speed_Status));
      Set_Field (Target, "Longitudinal_Ground_Speed", Create (Val.Longitudinal_Ground_Speed));
      Set_Field (Target, "Transverse_Ground_Speed", Create (Val.Transverse_Ground_Speed));
      Set_Field (Target, "Transverse_Ground_Speed_Status", Create (Val.Transverse_Ground_Speed_Status));
   end;

   ------------
   -- Create --
   ------------

   function Create (Val : VBW_Message) return JSON_Value is
   begin
      return Ret : JSON_Value := Create_Object do
         Populate (Val, Ret);
      end return;
   end Create;

   ---------
   -- Get --
   ---------

   function Get (Val : GNATCOLL.JSON.JSON_Value) return VBW_Message is
   begin
      return Ret : VBW_Message do
         Map (Val, Ret);
      end return;
   end Get;

   ---------
   -- Get --
   ---------

   function Get
     (Val   : JSON_Value;
      Field : UTF8_String)
      return VBW_Message
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
      Field      : VBW_Message)
   is      
   begin
      Set_Field (Val, Field_Name, Create (Field));
   end Set_Field;

   ---------------
   -- Map_Field --
   ---------------
   procedure Map_Field (Name : UTF8_String; Value : JSON_Value; To : in out VBW_Message) is
   begin
      if Name = "Longitudinal_Water_Speed" then
         To.Longitudinal_Water_Speed := Get (Value);
      elsif Name = "Transverse_Water_Speed" then
         To.Transverse_Water_Speed := Get (Value);
      elsif Name = "Transverse_Water_Speed_Status" then
         To.Transverse_Water_Speed_Status := Get (Value);
      elsif Name = "Longitudinal_Ground_Speed" then
         To.Longitudinal_Ground_Speed := Get (Value);
      elsif Name = "Transverse_Ground_Speed" then
         To.Transverse_Ground_Speed := Get (Value);
      elsif Name = "Transverse_Ground_Speed_Status" then
         To.Transverse_Ground_Speed_Status := Get (Value);
      else  
         null;
      end if;
   end;
   
   ---------
   -- Map --
   ---------
   procedure Map
     (Val : JSON_Value;
      To  : in out VBW_Message)
   is
      procedure Process (Name : UTF8_String; Value : JSON_Value);
      procedure Process (Name : UTF8_String; Value : JSON_Value) is
      begin
         Map_Field (Name, Value, To);
      end;
   begin
      Map_JSON_Object (Val, Process'Access);
   end Map;

end NMEA.Messages.VBW.JSON;