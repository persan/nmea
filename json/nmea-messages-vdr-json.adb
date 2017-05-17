with NMEA.Messages.JSON; pragma Warnings (Off, NMEA.Messages.JSON);
with NMEA.JSON; pragma Warnings (Off, NMEA.JSON);

package body NMEA.Messages.VDR.JSON is
   use NMEA.Messages.JSON;
   use NMEA.JSON;
   

   ----------------------------------------------------
   --  VDR_Message
   ----------------------------------------------------
   procedure Populate (Val : VDR_Message; Target : in out JSON_Value) is
   begin
      Set_Field (Target, "Degress_True", Create (Val.Degress_True));
      Set_Field (Target, "T_True", Create (Val.T_True));
      Set_Field (Target, "Degrees_Magnetic", Create (Val.Degrees_Magnetic));
      Set_Field (Target, "M_Magnetic", Create (Val.M_Magnetic));
      Set_Field (Target, "Speed_Of_Current", Create (Val.Speed_Of_Current));
      Set_Field (Target, "N_Knots", Create (Val.N_Knots));
   end;

   ------------
   -- Create --
   ------------

   function Create (Val : VDR_Message) return JSON_Value is
   begin
      return Ret : JSON_Value := Create_Object do
         Populate (Val, Ret);
      end return;
   end Create;

   ---------
   -- Get --
   ---------

   function Get (Val : GNATCOLL.JSON.JSON_Value) return VDR_Message is
   begin
      return Ret : VDR_Message do
         Map (Val, Ret);
      end return;
   end Get;

   ---------
   -- Get --
   ---------

   function Get
     (Val   : JSON_Value;
      Field : UTF8_String)
      return VDR_Message
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
      Field      : VDR_Message)
   is      
   begin
      Set_Field (Val, Field_Name, Create (Field));
   end Set_Field;

   ---------------
   -- Map_Field --
   ---------------
   procedure Map_Field (Name : UTF8_String; Value : JSON_Value; To : in out VDR_Message) is
   begin
      if Name = "Degress_True" then
         To.Degress_True := Get (Value);
      elsif Name = "T_True" then
         To.T_True := Get (Value);
      elsif Name = "Degrees_Magnetic" then
         To.Degrees_Magnetic := Get (Value);
      elsif Name = "M_Magnetic" then
         To.M_Magnetic := Get (Value);
      elsif Name = "Speed_Of_Current" then
         To.Speed_Of_Current := Get (Value);
      elsif Name = "N_Knots" then
         To.N_Knots := Get (Value);
      else  
         null;
      end if;
   end;
   
   ---------
   -- Map --
   ---------
   procedure Map
     (Val : JSON_Value;
      To  : in out VDR_Message)
   is
      procedure Process (Name : UTF8_String; Value : JSON_Value);
      procedure Process (Name : UTF8_String; Value : JSON_Value) is
      begin
         Map_Field (Name, Value, To);
      end;
   begin
      Map_JSON_Object (Val, Process'Access);
   end Map;

end NMEA.Messages.VDR.JSON;