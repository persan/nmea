with NMEA.Messages.JSON; pragma Warnings (Off, NMEA.Messages.JSON);
with NMEA.JSON; pragma Warnings (Off, NMEA.JSON);

package body NMEA.Messages.GLL.JSON is
   use NMEA.Messages.JSON;
   use NMEA.JSON;
   

   ----------------------------------------------------
   --  GLL_Message
   ----------------------------------------------------
   procedure Populate (Val : GLL_Message; Target : in out JSON_Value) is
   begin
      Set_Field (Target, "Latitude", Create (Val.Latitude));
      Set_Field (Target, "Longitude", Create (Val.Longitude));
      Set_Field (Target, "Time", Create (Val.Time));
      Set_Field (Target, "Status", Create (Val.Status));
      Set_Field (Target, "FAA_Mode", Create (Val.FAA_Mode));
   end;

   ------------
   -- Create --
   ------------

   function Create (Val : GLL_Message) return JSON_Value is
   begin
      return Ret : JSON_Value := Create_Object do
         Populate (Val, Ret);
      end return;
   end Create;

   ---------
   -- Get --
   ---------

   function Get (Val : GNATCOLL.JSON.JSON_Value) return GLL_Message is
   begin
      return Ret : GLL_Message do
         Map (Val, Ret);
      end return;
   end Get;

   ---------
   -- Get --
   ---------

   function Get
     (Val   : JSON_Value;
      Field : UTF8_String)
      return GLL_Message
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
      Field      : GLL_Message)
   is      
   begin
      Set_Field (Val, Field_Name, Create (Field));
   end Set_Field;

   ---------------
   -- Map_Field --
   ---------------
   procedure Map_Field (Name : UTF8_String; Value : JSON_Value; To : in out GLL_Message) is
   begin
      if Name = "Latitude" then
         To.Latitude := Get (Value);
      elsif Name = "Longitude" then
         To.Longitude := Get (Value);
      elsif Name = "Time" then
         To.Time := Get (Value);
      elsif Name = "Status" then
         To.Status := Get (Value);
      elsif Name = "FAA_Mode" then
         To.FAA_Mode := Get (Value);
      else  
         null;
      end if;
   end;
   
   ---------
   -- Map --
   ---------
   procedure Map
     (Val : JSON_Value;
      To  : in out GLL_Message)
   is
      procedure Process (Name : UTF8_String; Value : JSON_Value);
      procedure Process (Name : UTF8_String; Value : JSON_Value) is
      begin
         Map_Field (Name, Value, To);
      end;
   begin
      Map_JSON_Object (Val, Process'Access);
   end Map;

end NMEA.Messages.GLL.JSON;