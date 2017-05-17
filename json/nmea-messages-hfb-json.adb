with NMEA.Messages.JSON; pragma Warnings (Off, NMEA.Messages.JSON);
with NMEA.JSON; pragma Warnings (Off, NMEA.JSON);

package body NMEA.Messages.HFB.JSON is
   use NMEA.Messages.JSON;
   use NMEA.JSON;
   

   ----------------------------------------------------
   --  HFB_Message
   ----------------------------------------------------
   procedure Populate (Val : HFB_Message; Target : in out JSON_Value) is
   begin
      Set_Field (Target, "Distance_from_headrope_to_footrope", Create (Val.Distance_from_headrope_to_footrope));
      Set_Field (Target, "Meters_0_100", Create (Val.Meters_0_100));
      Set_Field (Target, "Distance_from_headrope_to_bottom", Create (Val.Distance_from_headrope_to_bottom));
      Set_Field (Target, "Meters_0_1008", Create (Val.Meters_0_1008));
   end;

   ------------
   -- Create --
   ------------

   function Create (Val : HFB_Message) return JSON_Value is
   begin
      return Ret : JSON_Value := Create_Object do
         Populate (Val, Ret);
      end return;
   end Create;

   ---------
   -- Get --
   ---------

   function Get (Val : GNATCOLL.JSON.JSON_Value) return HFB_Message is
   begin
      return Ret : HFB_Message do
         Map (Val, Ret);
      end return;
   end Get;

   ---------
   -- Get --
   ---------

   function Get
     (Val   : JSON_Value;
      Field : UTF8_String)
      return HFB_Message
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
      Field      : HFB_Message)
   is      
   begin
      Set_Field (Val, Field_Name, Create (Field));
   end Set_Field;

   ---------------
   -- Map_Field --
   ---------------
   procedure Map_Field (Name : UTF8_String; Value : JSON_Value; To : in out HFB_Message) is
   begin
      if Name = "Distance_from_headrope_to_footrope" then
         To.Distance_from_headrope_to_footrope := Get (Value);
      elsif Name = "Meters_0_100" then
         To.Meters_0_100 := Get (Value);
      elsif Name = "Distance_from_headrope_to_bottom" then
         To.Distance_from_headrope_to_bottom := Get (Value);
      elsif Name = "Meters_0_1008" then
         To.Meters_0_1008 := Get (Value);
      else  
         null;
      end if;
   end;
   
   ---------
   -- Map --
   ---------
   procedure Map
     (Val : JSON_Value;
      To  : in out HFB_Message)
   is
      procedure Process (Name : UTF8_String; Value : JSON_Value);
      procedure Process (Name : UTF8_String; Value : JSON_Value) is
      begin
         Map_Field (Name, Value, To);
      end;
   begin
      Map_JSON_Object (Val, Process'Access);
   end Map;

end NMEA.Messages.HFB.JSON;