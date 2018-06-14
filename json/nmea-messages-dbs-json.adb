with NMEA.Messages.JSON; pragma Warnings (Off, NMEA.Messages.JSON);
with NMEA.JSON; pragma Warnings (Off, NMEA.JSON);

package body NMEA.Messages.DBS.JSON is
   use NMEA.Messages.JSON;
   use NMEA.JSON;


   ----------------------------------------------------
   --  DBS_Message
   ----------------------------------------------------
   procedure Populate (Val : DBS_Message; Target : in out JSON_Value) is
   begin
      Set_Field (Target, "Depth_Feet", Create (Val.Depth_Feet));
      Set_Field (Target, "F_Feet", Create (Val.F_Feet));
      Set_Field (Target, "Depth_Meters", Create (Val.Depth_Meters));
      Set_Field (Target, "M_Meters", Create (Val.M_Meters));
      Set_Field (Target, "Depth_Fathoms", Create (Val.Depth_Fathoms));
      Set_Field (Target, "F_Fathoms", Create (Val.F_Fathoms));
   end;

   ------------
   -- Create --
   ------------

   function Create (Val : DBS_Message) return JSON_Value is
   begin
      return Ret : JSON_Value := Create_Object do
         Populate (Val, Ret);
      end return;
   end Create;

   ---------
   -- Get --
   ---------

   function Get (Val : GNATCOLL.JSON.JSON_Value) return DBS_Message is
   begin
      return Ret : DBS_Message do
         Map (Val, Ret);
      end return;
   end Get;

   ---------
   -- Get --
   ---------

   function Get
     (Val   : JSON_Value;
      Field : UTF8_String)
      return DBS_Message
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
      Field      : DBS_Message)
   is
   begin
      Set_Field (Val, Field_Name, Create (Field));
   end Set_Field;

   ---------------
   -- Map_Field --
   ---------------
   procedure Map_Field (Name : UTF8_String; Value : JSON_Value; To : in out DBS_Message) is
   begin
      if Name = "Depth_Feet" then
         To.Depth_Feet := Get (Value);
      elsif Name = "F_Feet" then
         To.F_Feet := Get (Value);
      elsif Name = "Depth_Meters" then
         To.Depth_Meters := Get (Value);
      elsif Name = "M_Meters" then
         To.M_Meters := Get (Value);
      elsif Name = "Depth_Fathoms" then
         To.Depth_Fathoms := Get (Value);
      elsif Name = "F_Fathoms" then
         To.F_Fathoms := Get (Value);
      else
         Map_Field (Name, Value, Message (To));
      end if;
   end;

   ---------
   -- Map --
   ---------
   procedure Map
     (Val : JSON_Value;
      To  : in out DBS_Message)
   is
      procedure Process (Name : UTF8_String; Value : JSON_Value);
      procedure Process (Name : UTF8_String; Value : JSON_Value) is
      begin
         Map_Field (Name, Value, To);
      end;
   begin
      Map_JSON_Object (Val, Process'Access);
   end Map;

end NMEA.Messages.DBS.JSON;
