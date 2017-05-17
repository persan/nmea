with NMEA.Messages.JSON; pragma Warnings (Off, NMEA.Messages.JSON);
with NMEA.JSON; pragma Warnings (Off, NMEA.JSON);

package body NMEA.Messages.MWV.JSON is
   use NMEA.Messages.JSON;
   use NMEA.JSON;
   

   ----------------------------------------------------
   --  MWV_Message
   ----------------------------------------------------
   procedure Populate (Val : MWV_Message; Target : in out JSON_Value) is
   begin
      Set_Field (Target, "Wind_Angle_0_to_360_degrees", Create (Val.Wind_Angle_0_to_360_degrees));
      Set_Field (Target, "Reference_R_Relative_T_True", Create (Val.Reference_R_Relative_T_True));
      Set_Field (Target, "Wind_Speed", Create (Val.Wind_Speed));
      Set_Field (Target, "Wind_Speed_Units_K_M_N", Create (Val.Wind_Speed_Units_K_M_N));
      Set_Field (Target, "Status_A_Data_Valid", Create (Val.Status_A_Data_Valid));
   end;

   ------------
   -- Create --
   ------------

   function Create (Val : MWV_Message) return JSON_Value is
   begin
      return Ret : JSON_Value := Create_Object do
         Populate (Val, Ret);
      end return;
   end Create;

   ---------
   -- Get --
   ---------

   function Get (Val : GNATCOLL.JSON.JSON_Value) return MWV_Message is
   begin
      return Ret : MWV_Message do
         Map (Val, Ret);
      end return;
   end Get;

   ---------
   -- Get --
   ---------

   function Get
     (Val   : JSON_Value;
      Field : UTF8_String)
      return MWV_Message
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
      Field      : MWV_Message)
   is      
   begin
      Set_Field (Val, Field_Name, Create (Field));
   end Set_Field;

   ---------------
   -- Map_Field --
   ---------------
   procedure Map_Field (Name : UTF8_String; Value : JSON_Value; To : in out MWV_Message) is
   begin
      if Name = "Wind_Angle_0_to_360_degrees" then
         To.Wind_Angle_0_to_360_degrees := Get (Value);
      elsif Name = "Reference_R_Relative_T_True" then
         To.Reference_R_Relative_T_True := Get (Value);
      elsif Name = "Wind_Speed" then
         To.Wind_Speed := Get (Value);
      elsif Name = "Wind_Speed_Units_K_M_N" then
         To.Wind_Speed_Units_K_M_N := Get (Value);
      elsif Name = "Status_A_Data_Valid" then
         To.Status_A_Data_Valid := Get (Value);
      else  
         null;
      end if;
   end;
   
   ---------
   -- Map --
   ---------
   procedure Map
     (Val : JSON_Value;
      To  : in out MWV_Message)
   is
      procedure Process (Name : UTF8_String; Value : JSON_Value);
      procedure Process (Name : UTF8_String; Value : JSON_Value) is
      begin
         Map_Field (Name, Value, To);
      end;
   begin
      Map_JSON_Object (Val, Process'Access);
   end Map;

end NMEA.Messages.MWV.JSON;