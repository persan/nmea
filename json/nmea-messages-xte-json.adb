with NMEA.Messages.JSON; pragma Warnings (Off, NMEA.Messages.JSON);
with NMEA.JSON; pragma Warnings (Off, NMEA.JSON);

package body NMEA.Messages.XTE.JSON is
   use NMEA.Messages.JSON;
   use NMEA.JSON;
   

   ----------------------------------------------------
   --  XTE_Message
   ----------------------------------------------------
   procedure Populate (Val : XTE_Message; Target : in out JSON_Value) is
   begin
      Set_Field (Target, "Status", Create (Val.Status));
      Set_Field (Target, "Status8", Create (Val.Status8));
      Set_Field (Target, "Cross_Track_Error_Magnitude", Create (Val.Cross_Track_Error_Magnitude));
      Set_Field (Target, "Direction_To_Steer_L_Or_R", Create (Val.Direction_To_Steer_L_Or_R));
      Set_Field (Target, "Cross_Track_Units_N_Nautical_Miles", Create (Val.Cross_Track_Units_N_Nautical_Miles));
      Set_Field (Target, "FAA_Mode_Indicator_NMEA_2_3_And_Later_Optional", Create (Val.FAA_Mode_Indicator_NMEA_2_3_And_Later_Optional));
   end;

   ------------
   -- Create --
   ------------

   function Create (Val : XTE_Message) return JSON_Value is
   begin
      return Ret : JSON_Value := Create_Object do
         Populate (Val, Ret);
      end return;
   end Create;

   ---------
   -- Get --
   ---------

   function Get (Val : GNATCOLL.JSON.JSON_Value) return XTE_Message is
   begin
      return Ret : XTE_Message do
         Map (Val, Ret);
      end return;
   end Get;

   ---------
   -- Get --
   ---------

   function Get
     (Val   : JSON_Value;
      Field : UTF8_String)
      return XTE_Message
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
      Field      : XTE_Message)
   is      
   begin
      Set_Field (Val, Field_Name, Create (Field));
   end Set_Field;

   ---------------
   -- Map_Field --
   ---------------
   procedure Map_Field (Name : UTF8_String; Value : JSON_Value; To : in out XTE_Message) is
   begin
      if Name = "Status" then
         To.Status := Get (Value);
      elsif Name = "Status8" then
         To.Status8 := Get (Value);
      elsif Name = "Cross_Track_Error_Magnitude" then
         To.Cross_Track_Error_Magnitude := Get (Value);
      elsif Name = "Direction_To_Steer_L_Or_R" then
         To.Direction_To_Steer_L_Or_R := Get (Value);
      elsif Name = "Cross_Track_Units_N_Nautical_Miles" then
         To.Cross_Track_Units_N_Nautical_Miles := Get (Value);
      elsif Name = "FAA_Mode_Indicator_NMEA_2_3_And_Later_Optional" then
         To.FAA_Mode_Indicator_NMEA_2_3_And_Later_Optional := Get (Value);
      else  
         null;
      end if;
   end;
   
   ---------
   -- Map --
   ---------
   procedure Map
     (Val : JSON_Value;
      To  : in out XTE_Message)
   is
      procedure Process (Name : UTF8_String; Value : JSON_Value);
      procedure Process (Name : UTF8_String; Value : JSON_Value) is
      begin
         Map_Field (Name, Value, To);
      end;
   begin
      Map_JSON_Object (Val, Process'Access);
   end Map;

end NMEA.Messages.XTE.JSON;