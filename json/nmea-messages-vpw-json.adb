with NMEA.Messages.JSON; pragma Warnings (Off, NMEA.Messages.JSON);
with NMEA.JSON; pragma Warnings (Off, NMEA.JSON);

package body NMEA.Messages.VPW.JSON is
   use NMEA.Messages.JSON;
   use NMEA.JSON;
   

   ----------------------------------------------------
   --  VPW_Message
   ----------------------------------------------------
   procedure Populate (Val : VPW_Message; Target : in out JSON_Value) is
   begin
      Set_Field (Target, "Speed_Means_Downwind", Create (Val.Speed_Means_Downwind));
      Set_Field (Target, "N_Knots", Create (Val.N_Knots));
      Set_Field (Target, "Speed_Means_Downwind7", Create (Val.Speed_Means_Downwind7));
      Set_Field (Target, "M_Meters_Per_Second", Create (Val.M_Meters_Per_Second));
   end;

   ------------
   -- Create --
   ------------

   function Create (Val : VPW_Message) return JSON_Value is
   begin
      return Ret : JSON_Value := Create_Object do
         Populate (Val, Ret);
      end return;
   end Create;

   ---------
   -- Get --
   ---------

   function Get (Val : GNATCOLL.JSON.JSON_Value) return VPW_Message is
   begin
      return Ret : VPW_Message do
         Map (Val, Ret);
      end return;
   end Get;

   ---------
   -- Get --
   ---------

   function Get
     (Val   : JSON_Value;
      Field : UTF8_String)
      return VPW_Message
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
      Field      : VPW_Message)
   is      
   begin
      Set_Field (Val, Field_Name, Create (Field));
   end Set_Field;

   ---------------
   -- Map_Field --
   ---------------
   procedure Map_Field (Name : UTF8_String; Value : JSON_Value; To : in out VPW_Message) is
   begin
      if Name = "Speed_Means_Downwind" then
         To.Speed_Means_Downwind := Get (Value);
      elsif Name = "N_Knots" then
         To.N_Knots := Get (Value);
      elsif Name = "Speed_Means_Downwind7" then
         To.Speed_Means_Downwind7 := Get (Value);
      elsif Name = "M_Meters_Per_Second" then
         To.M_Meters_Per_Second := Get (Value);
      else  
         null;
      end if;
   end;
   
   ---------
   -- Map --
   ---------
   procedure Map
     (Val : JSON_Value;
      To  : in out VPW_Message)
   is
      procedure Process (Name : UTF8_String; Value : JSON_Value);
      procedure Process (Name : UTF8_String; Value : JSON_Value) is
      begin
         Map_Field (Name, Value, To);
      end;
   begin
      Map_JSON_Object (Val, Process'Access);
   end Map;

end NMEA.Messages.VPW.JSON;