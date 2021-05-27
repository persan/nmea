with NMEA.Messages.JSON; pragma Warnings (Off, NMEA.Messages.JSON);
with NMEA.JSON; pragma Warnings (Off, NMEA.JSON);

package body NMEA.Messages.BWW.JSON is
   use NMEA.Messages.JSON;
   use NMEA.JSON;


   ----------------------------------------------------
   --  BWW_Message
   ----------------------------------------------------
   procedure Populate (Val : BWW_Message; Target : in out JSON_Value) is
   begin
      Set_Field (Target, "Bearing_Degrees_TRUE", Create (Val.Bearing_Degrees_TRUE));
      Set_Field (Target, "T_True", Create (Val.T_True));
      Set_Field (Target, "Bearing_Degrees_Magnetic", Create (Val.Bearing_Degrees_Magnetic));
      Set_Field (Target, "M_Magnetic", Create (Val.M_Magnetic));
      Set_Field (Target, "TO_Waypoint", Create (Val.TO_Waypoint));
      Set_Field (Target, "FROM_Waypoint", Create (Val.FROM_Waypoint));
   end;

   ------------
   -- Create --
   ------------

   function Create (Val : BWW_Message) return JSON_Value is
   begin
      return Ret : JSON_Value := Create_Object do
         Populate (Val, Ret);
      end return;
   end Create;

   ---------
   -- Get --
   ---------

   function Get (Val : GNATCOLL.JSON.JSON_Value) return BWW_Message is
   begin
      return Ret : BWW_Message do
         Map (Val, Ret);
      end return;
   end Get;

   ---------
   -- Get --
   ---------

   function Get
     (Val   : JSON_Value;
      Field : UTF8_String)
      return BWW_Message
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
      Field      : BWW_Message)
   is
   begin
      Set_Field (Val, Field_Name, Create (Field));
   end Set_Field;

   ---------------
   -- Map_Field --
   ---------------
   procedure Map_Field (Name : UTF8_String; Value : JSON_Value; To : in out BWW_Message) is
   begin
      if Name = "Bearing_Degrees_TRUE" then
         To.Bearing_Degrees_TRUE := Get (Value);
      elsif Name = "T_True" then
         To.T_True := Get (Value);
      elsif Name = "Bearing_Degrees_Magnetic" then
         To.Bearing_Degrees_Magnetic := Get (Value);
      elsif Name = "M_Magnetic" then
         To.M_Magnetic := Get (Value);
      elsif Name = "TO_Waypoint" then
         To.TO_Waypoint := Get (Value);
      elsif Name = "FROM_Waypoint" then
         To.FROM_Waypoint := Get (Value);
      else
         Map_Field (Name, Value, Message (To));
      end if;
   end;

   ---------
   -- Map --
   ---------
   procedure Map
     (Val : JSON_Value;
      To  : in out BWW_Message)
   is
      procedure Process (Name : UTF8_String; Value : JSON_Value);
      procedure Process (Name : UTF8_String; Value : JSON_Value) is
      begin
         Map_Field (Name, Value, To);
      end;
   begin
      Map_JSON_Object (Val, Process'Access);
   end Map;

end NMEA.Messages.BWW.JSON;
