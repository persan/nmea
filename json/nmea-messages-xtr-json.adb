with NMEA.Messages.JSON; pragma Warnings (Off, NMEA.Messages.JSON);
with NMEA.JSON; pragma Warnings (Off, NMEA.JSON);

package body NMEA.Messages.XTR.JSON is
   use NMEA.Messages.JSON;
   use NMEA.JSON;
   

   ----------------------------------------------------
   --  XTR_Message
   ----------------------------------------------------
   procedure Populate (Val : XTR_Message; Target : in out JSON_Value) is
   begin
      Set_Field (Target, "Magnitude_Of_Cross_Track_Error", Create (Val.Magnitude_Of_Cross_Track_Error));
      Set_Field (Target, "Direction_To_Steer_L_Or_R", Create (Val.Direction_To_Steer_L_Or_R));
      Set_Field (Target, "Units_N_Nautical_Miles", Create (Val.Units_N_Nautical_Miles));
   end;

   ------------
   -- Create --
   ------------

   function Create (Val : XTR_Message) return JSON_Value is
   begin
      return Ret : JSON_Value := Create_Object do
         Populate (Val, Ret);
      end return;
   end Create;

   ---------
   -- Get --
   ---------

   function Get (Val : GNATCOLL.JSON.JSON_Value) return XTR_Message is
   begin
      return Ret : XTR_Message do
         Map (Val, Ret);
      end return;
   end Get;

   ---------
   -- Get --
   ---------

   function Get
     (Val   : JSON_Value;
      Field : UTF8_String)
      return XTR_Message
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
      Field      : XTR_Message)
   is      
   begin
      Set_Field (Val, Field_Name, Create (Field));
   end Set_Field;

   ---------------
   -- Map_Field --
   ---------------
   procedure Map_Field (Name : UTF8_String; Value : JSON_Value; To : in out XTR_Message) is
   begin
      if Name = "Magnitude_Of_Cross_Track_Error" then
         To.Magnitude_Of_Cross_Track_Error := Get (Value);
      elsif Name = "Direction_To_Steer_L_Or_R" then
         To.Direction_To_Steer_L_Or_R := Get (Value);
      elsif Name = "Units_N_Nautical_Miles" then
         To.Units_N_Nautical_Miles := Get (Value);
      else  
         null;
      end if;
   end;
   
   ---------
   -- Map --
   ---------
   procedure Map
     (Val : JSON_Value;
      To  : in out XTR_Message)
   is
      procedure Process (Name : UTF8_String; Value : JSON_Value);
      procedure Process (Name : UTF8_String; Value : JSON_Value) is
      begin
         Map_Field (Name, Value, To);
      end;
   begin
      Map_JSON_Object (Val, Process'Access);
   end Map;

end NMEA.Messages.XTR.JSON;